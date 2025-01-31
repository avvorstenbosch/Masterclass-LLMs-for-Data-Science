"""
helper_functions.py
==============

This module provides helper functions for working with Llama-based LLMs using
the `llama_cpp_python` library.

Functions
---------
1) generate_response
   Generate a response given a set of chat messages, with optional streaming behavior.

2) interactive_chat
   Allows the user to engage in an interactive chat session with the model (streaming by default).

Example
-------
# Example usage:
from llm_helpers import load_llama_model, generate_response, interactive_chat

# 1. Load a model
llm = load_llama_model(
    model_path="./huggingface/model/path",
    n_ctx=2048,
    n_threads=4,
    n_gpu_layers=0,
    use_mlock=True
)

# 2. Generate a single response (non-streamed)
messages = [
    {"role": "system", "content": "You are a helpful assistant."},
    {"role": "user", "content": "What is the capital of France?"}
]
response = generate_response(
    llm=llm,
    messages=messages,
    max_tokens=256,
    temperature=0.8,
    top_p=0.95,
    top_k=40,
    repeat_penalty=1.1,
    stream=False
)
print(response)

# 3. Start an interactive chat (streamed by default)
interactive_chat(
    llm=llm,
    system_prompt="You are a helpful assistant.",
    max_tokens=512,
    temperature=0.8,
    top_p=0.95,
    top_k=40,
    repeat_penalty=1.1,
    stop_str="exit"
)
"""

from llama_cpp import Llama


def generate_response(
    llm,
    messages,
    max_tokens=128,
    temperature=0.8,
    top_p=0.95,
    top_k=40,
    repeat_penalty=1.1,
    json_mode=False,
    stream=False,
    **kwargs,
):
    """
    Generate a response from a Llama_CPP model given a list of messages.

    Parameters
    ----------
    llm : Llama_cpp
        The Llama_cpp llm model to use for generation.
    messages : list of dict
        A list of message dictionaries, where each dictionary should have
        the keys {"role", "content"}. Example:
        [
            {"role": "system", "content": "You are a helpful assistant."},
            {"role": "user", "content": "Tell me a joke."}
        ]
    max_tokens : int, optional
        Maximum number of tokens to generate (default: 128).
    temperature : float, optional
        Sampling temperature. Higher values produce more random outputs
        (default: 0.8).
    top_p : float, optional
        Nucleus sampling probability threshold (default: 0.95).
    top_k : int, optional
        The top-k tokens to consider during sampling (default: 40).
    repeat_penalty : float, optional
        Penalty for repeated tokens (default: 1.1).
    json_mode : bool, optional
        If True, response are formatted as JSON objects by the llm (default: False).
    stream : bool, optional
        If True, yield partial responses (tokens) as they are generated.
        If False, return the full generated text at once (default: False).
    **kwargs : dict
        Additional keyword arguments passed to `create_chat_completion`.

    Returns
    -------
    str or generator
        If stream is False, returns the full response text as a string.
        If stream is True, returns a generator that yields partial text chunks.
    """
    response_format = {"type": "json_object"} if json_mode else None

    # Create the completion generator (or dictionary if streaming is disabled)
    completion = llm.create_chat_completion(
        messages=messages,
        max_tokens=max_tokens,
        temperature=temperature,
        top_p=top_p,
        top_k=top_k,
        repeat_penalty=repeat_penalty,
        response_format=response_format,
        stream=stream,
        **kwargs,
    )

    if stream:

        def _streaming_generator():
            response_accumulator = ""
            for chunk in completion:
                if "choices" in chunk and chunk["choices"]:
                    partial_text = chunk["choices"][0]["delta"].get("content", "")
                    response_accumulator += partial_text
                    yield partial_text  # yield partial response
            # Optionally do something with response_accumulator here if needed

        return _streaming_generator()
    else:
        # Non-streamed response
        return completion["choices"][0]["message"]["content"]


def interactive_chat(
    llm,
    system_prompt="You are a helpful assistant.",
    max_tokens=512,
    temperature=0.8,
    top_p=0.95,
    top_k=40,
    repeat_penalty=1.1,
    stop_str="exit",
    **kwargs,
):
    """
    Start an interactive chat session with the Llama model in the console.
    The model's responses are streamed in real time.

    Parameters
    ----------
    llm : Llama
        The Llama instance to use for the interactive chat.
    system_prompt : str, optional
        The system prompt that sets the context or persona of the assistant
        (default: "You are a helpful assistant.").
    max_tokens : int, optional
        Maximum number of tokens to generate in each response (default: 512).
    temperature : float, optional
        Sampling temperature. Higher values produce more random outputs
        (default: 0.8).
    top_p : float, optional
        Nucleus sampling probability threshold (default: 0.95).
    top_k : int, optional
        The top-k tokens to consider during sampling (default: 40).
    repeat_penalty : float, optional
        Penalty for repeated tokens (default: 1.1).
    stop_str : str, optional
        Keyword to terminate the conversation (default: "exit").
    **kwargs : dict
        Additional keyword arguments passed to `create_chat_completion`.

    Notes
    -----
    - Type the stop_str (default: "exit") on a line by itself to end the chat.
    - User input is now single-line (press Enter once after typing).
    """
    # Initialize conversation history with system prompt
    messages = [{"role": "system", "content": system_prompt}]

    print("\n=== Interactive Chat ===")
    print(f"Type '{stop_str}' (without quotes) to exit.\n")

    while True:
        # Get user input in a single-line format
        user_input = input("🧑‍💻 user: ").strip()

        # Check for exit condition
        if user_input.lower() == stop_str:
            print("\n🚪 Exiting chat.")
            break

        if user_input:
            # Add user message to conversation history
            messages.append({"role": "user", "content": user_input})

            # Show model response header
            print("✨ llm:", end=" ", flush=True)

            # Stream the model's response
            model_reply = ""
            response_generator = llm.create_chat_completion(
                messages=messages,
                max_tokens=max_tokens,
                temperature=temperature,
                top_p=top_p,
                top_k=top_k,
                repeat_penalty=repeat_penalty,
                stream=True,
                **kwargs,
            )

            # Collect and display streamed output
            for chunk in response_generator:
                if "choices" in chunk and chunk["choices"]:
                    partial_text = chunk["choices"][0]["delta"].get("content", "")
                    model_reply += partial_text
                    print(partial_text, end="", flush=True)

            print("\n" + "─" * 50)  # Separator line for better readability

            # Append model response to chat history
            messages.append({"role": "assistant", "content": model_reply})
