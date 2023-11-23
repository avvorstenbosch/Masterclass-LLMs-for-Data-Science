# Masterclass: Large Language Models for Data Science

![](./_slides/Day%201/figures/pair-programming-with-llms.webp)

Welcome to the Masterclass on Large Language Models for Data Science. This course is designed for data scientists, data analists, researchers, and AI enthusiasts in general looking to deepen their understanding of LLMs, such as ChatGPT, and their application in various fields.

## Timetable day 1
The first day of the Masterclass is a general introduction discussing the following points:

- What are LLMs and what is the recipe for making them?
- What can LLMs do?
- What are best practices for interacting with LLMs? (Prompting)
- How to use the OpenAI-API?
- What are ethical considerations you need to be aware of when using such models?
- How can we use LLMs as pair-programming buddies?

| Time              | Title                                          | Description                                                                       |
|-------------------|------------------------------------------------|-----------------------------------------------------------------------------------|
| 09:00 – 09:30 AM | 👋 Introduction                                 |                                                                                   |
| 09:30 – 10:45 AM | 🤖 Introduction to LLM's and ChatGPT           | NLP and development of LLMs<br>Capabilities of ChatGPT<br>Real world applications |
| 10:45 – 11:00 AM | ☕ Break                                        |                                                     |
| 11:00 – 12:00 AM | 💬 Prompt Engineering                          | Introduction to prompting<br>Best practices for prompting<br>Hands-on exercises   |
| 12:00 – 13:00 PM | 🥪 Lunch                                        |                                            |
| 13:00 – 13:45 PM | 💻 Programming with GPT                         | Introduction to the OpenAI API<br>Hands-on exercises                              |
| 13:45 – 14:45 PM | ⚖️ Ethical Considerations in Using LLMs        | Biases and Misinformation<br>The Dark Side of LLMs<br>Privacy and Legal Challenges|
| 14:45 - 15:00 PM | ☕ Break                                        |                                                |
| 15:00 - 16:00 PM |  💻Programming with GPT                         | Pair-programming with LLMs<br>Hands-on exercises                                  |
| 16:00 – 16:45 PM  | 🚀 Improved Efficiency with ChatGPT            | Examples of real implementations of ChatGPT in a workflow                         |
| 16:45 – 17:00 PM | 📝 Summary, Evaluation and Conclusion of Day 1 |                                                   |


## Timetable Day 2
The second day of the Masterclass is a more in-depth session, ending with a large practical assignment:

- Can, and should, you use LLMs for Natural Language Processing?
- What are the latest developments in the field of LLMs?
- How to build your own Retrieval Augmented Generation system with fact-checking against hallucinations? 

 | Time              | Title                                                               | Description                                                                                   |
|-------------------|---------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| 09:00 – 09:20 AM | 🌅 Opening and Discussion of the Day's Agenda                       |                                                                                               |
| 09:20 – 10:45 AM | 📊 Text Analysis with LLMs                                          | Foundation models for NLP<br>Evaluation of performance<br>Hands-on Exercises                  |
| 10:45 – 11:00 AM | ☕ Break                                                             |                                                                         |
| 11:00 – 12:30 PM | 🔍 Retrieval Augmented Generation (RAG), open source, and next steps | LLMs versus Search Engines<br>How to host your own LLM<br>Next steps?                          |
| 12:30 – 13:30 PM | 🥗 Lunch                                                             |                                                                  |
| 13:30 - 16:30 PM | 🚀 Extended Practical Assignment - RAG 🔍                                    |   Building your own Retrieval Augmented Generation system with fact-checking against hallucinations                                                                                    |
| 16:30 - 17:00 PM | 📝 Summary, Evaluation, and Conclusion                               |                                             |

# Repository structure

This course was rendered using `Quarto` to create `RevealJS` HTML slides. The slides and solutions to exercises can be found under the folder `./_slides/`, which has seperate subfolders `./_slides/Day 1/` and `./_slides/Day 2/` for the individual days.

The source code for the exercises and slides can be found under the folders names `./Day 1/` and  `./Day 2/`

```
├── Day 1
│   ├── 1. Opening.qmd
│   ├── 2. Introduction Large Language Models and ChatGPT.qmd
│   ├── 3. Prompt Engineering.qmd
│   ├── 4. Programming with LLMs.qmd
│   ├── 5. Ethical Considerations in Using LLMs .qmd
│   ├── 6. Increased efficiency with LLMs.qmd
│   └── exercises
│       ├── 1. Prompt engineering exercises.qmd
│       ├── 2. Introduction to the ChatGPT API.qmd
│       ├── 3. Pair-programming with LLMs.qmd
│       ├── data
│       │   ├── code.py
│       │   ├── code.R
│       │   ├── code-solution.py
│       │   └── create_exercise_bingo_board_generator.py
│       └── solutions
│           ├── 1. Prompt engineering exercises - solutions.qmd
│           ├── 2. Introduction to the ChatGPT  - R solution.qmd
│           └── 3. Pair-programming with LLMs - R solution.qmd
├── Day 2
│   ├── 1. Opening.qmd
│   ├── 2. NLP with LLMs.qmd
│   ├── 3. Next steps for LLMs.qmd
│   └── exercises
│       ├── 1. Retrieval Augmented Generation for Question Answering - Exercises.qmd
│       ├── 1. Retrieval Augmented Generation for Question Answering - Solutions.qmd
│       ├── 2. NLP with LLMs - exercises.qmd
│       ├── 2. NLP with LLMs - solutions.qmd
│       ├── create_exercise-2. NLP with LLMs - building dataset.qmd
│       ├── data
│       │   └── SemEval2014
│       └── utils
│           ├── chat_completions.R
│           ├── cosine_similarity.R
│           └── get_embedding.R
└── _slides
    ├── Day 1
    │   ├── 1. Opening.html
    │   ├── 2. Introduction Large Language Models and ChatGPT.html
    │   ├── 3. Prompt Engineering.html
    │   ├── 4. Programming with LLMs.html
    │   ├── 5. Ethical Considerations in Using LLMs .html
    │   ├── 6. Increased efficiency with LLMs.html
    │   └── exercises
    │       ├── data
    │       │   ├── code.py
    │       │   ├── code.R
    │       │   ├── code-solution.py
    │       │   └── create_exercise_bingo_board_generator.py
    │       └── solutions
    │           ├── 2. Introduction to the ChatGPT  - R solution.html
    │           ├── 2. Introduction to the ChatGPT  - R solution.qmd
    │           ├── 3. Pair-programming with LLMs - R solution.html
    │           └── 3. Pair-programming with LLMs - R solution.qmd
    └── Day 2
        ├── 1. Opening.html
        ├── 2. NLP with LLMs.html
        ├── 3. Next steps for LLMs.html
        └── exercises
            ├── 1. Retrieval Augmented Generation for Question Answering - Exercises.html
            ├── 1. Retrieval Augmented Generation for Question Answering - Exercises.qmd
            ├── 1. Retrieval Augmented Generation for Question Answering - Solutions.html
            ├── 2. NLP with LLMs - exercises.html
            ├── 2. NLP with LLMs - exercises.qmd
            ├── 2. NLP with LLMs - solutions.html
            ├── data
            │   └── SemEval2014
            └── utils
                ├── chat_completions.R
                ├── cosine_similarity.R
                └── get_embedding.R
```

