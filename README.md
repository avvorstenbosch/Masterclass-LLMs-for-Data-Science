# Masterclass: Large Language Models for Data Science
# 🚧 2025 version is still under construction 🚧
![](./slides/Day_1/figures/pair-programming-with-llms.webp)

Welcome to the Masterclass on Large Language Models for Data Science. This course is designed for data scientists, data analysts, researchers, and AI enthusiasts in general looking to deepen their understanding of LLMs, such as ChatGPT, and their application in various fields.
This Masterclass contains examples in both `Python` and `R` users and is suitable for both.

## Using the Masterclass

This Masterclass was developed using `Quarto`. I highly recommend installing it if you intend to work through these exercises.

- `Python`: Using the `VS Code`-IDE allows you to interactively work with the .qmd files, just like with .ipynb files.
- `R`: Using the `Rstudio`-IDE allows you to interactively work with the .qmd files, just like with .Rnotebook files.

The timetable below has links to all the slides. The slides were rendered to the `RevealJS`-html format, which means all the slides can be opened directly in the browser and have many interactive features; press `?` for an overview. In my experience the edge and chrome browsers have trouble with some of the slides. Firefox does not seem to have any issues so far.

**Main branch**\
The main branch contains all the source `Quarto`, `Python`, and `R` code for the workshop.\
\
**gh_pages**\
This branch is used for hosting the full Masterclass on github. This branch contains the full Masterclass in the `./slides/` folder. All the html-files, datasets and figures can be found there. 

## Timetable day 1

The first day of the Masterclass is a general introduction discussing the following points:

- What are LLMs and what is the recipe for making them?
- What can LLMs do?
- What are best practices for interacting with LLMs? (Prompting)
- How to use the OpenAI-API?
- What are ethical considerations you need to be aware of when using such models?
- How can we use LLMs as pair-programming buddies?

| Time              | Title                                          | Description                                                                       | Exercises              | Solutions              |
|-------------------|------------------------------------------------|-----------------------------------------------------------------------------------|------------------------|------------------------|
| 09:00 – 09:30 AM | 👋 Introduction                               |                                                                                   | | |
| 09:30 – 10:45 AM | 🤖 [Introduction to LLM's and ChatGPT](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/slides/Day_1/2.Introduction_Large_Language_Models_and_ChatGPT.html)         | NLP and development of LLMs<br>Capabilities of ChatGPT<br>Real world applications |
| 10:45 – 11:00 AM | ☕ Break                                        |                                                     |
| 11:00 – 12:00 PM | 💬 [Prompt Engineering](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/slides/Day_1/3.Prompt_Engineering.html)                          | Introduction to prompting<br>Best practices for prompting    | [Hands-on exercises](https://github.com/avvorstenbosch/Masterclass-LLMs-for-Data-Science/tree/gh_pages/Day_1/exercises) <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_1/Google_Colab_General_notebook_for_assignments.ipynb)| solutions |
| 12:00 – 13:00 PM | 🥪 Lunch                                        |                                            |
| 13:00 – 13:45 PM | 💻 [Programming with GPT](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/slides/Day_1/4.Programming_with_LLMs.html)                         | Introduction to the OpenAI API | [Hands-on exercises](https://github.com/avvorstenbosch/Masterclass-LLMs-for-Data-Science/tree/gh_pages/Day_1/exercises) <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_1/Google_Colab_General_notebook_for_assignments.ipynb) ||                               |
| 13:45 – 14:45 PM | ⚖️ [Ethical Considerations in Using LLMs](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/slides/Day_1/5.Ethical_Considerations_in_Using_LLMs_.html)        | Biases and Misinformation<br>The Dark Side of LLMs<br>Privacy and Legal Challenges|
| 14:45 - 15:00 PM | ☕ Break                                        |                                                |
| 15:00 - 16:00 PM |  💻[Programming with GPT](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/slides/Day_1/4.Programming_with_LLMs.html)                         | Pair-programming with LLMs  |[Hands-on exercises](https://github.com/avvorstenbosch/Masterclass-LLMs-for-Data-Science/tree/gh_pages/Day_1/exercises) <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_1/Google_Colab_General_notebook_for_assignments.ipynb)                                  | |
| 16:00 – 16:45 PM  | 🚀 [Improved Efficiency with ChatGPT](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/slides/Day_1/6.Increased_efficiency_with_LLMs.html)            | Examples of real implementations of ChatGPT in a workflow                         |
| 16:45 – 17:00 PM | 📝 Summary, Evaluation and Conclusion of Day 1 |                                                   |

## Timetable Day 2

The second day of the Masterclass is a more in-depth session, ending with a large practical assignment:

- Can, and should, you use LLMs for Natural Language Processing?
- What are the latest developments in the field of LLMs?
- How to build your own Retrieval Augmented Generation system with fact-checking against hallucinations?

| Time              | Title                                          | Description                                                                       | Exercises              | Solutions              |
|-------------------|------------------------------------------------|-----------------------------------------------------------------------------------|------------------------|------------------------|
| 09:00 – 09:20 AM | 🌅 [Opening and Discussion of the Day's Agenda](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/slides/Day_2/1.Opening.html)                       |                                                                                               |
| 09:20 – 10:45 AM | 📊 [Text Analysis with LLMs](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/slides/Day_2/2.NLP_with_LLMs.html)                                          | Foundation models for NLP<br>Evaluation of performance | Exersises <br>[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/)  | Solutions <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_2/solutions/Exercises_NLP_with_LLMs_Solutions.ipynb)                    |
| 10:45 – 11:00 AM | ☕ Break                                                             |                                                                         |
| 11:00 – 12:30 PM | 🔍 [Retrieval Augmented Generation (RAG), open source, and next steps](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/slides/Day_2/3.Next_steps_for_LLMs.html) | LLMs versus Search Engines<br>How to host your own LLM<br>Next steps?                          |
| 12:30 – 13:30 PM | 🥗 Lunch                                                             |                                                                  |
| 13:30 - 16:30 PM | 🚀 Extended Practical Assignment - RAG 🔍exercises                            |   Building your own Retrieval Augmented Generation system with fact-checking against hallucinations                                                                                    | Extended Practical Assignment <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_2/Retrieval_Augmented_Generation_(RAG)_for_Question_Answering.ipynb)  | Solutions <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/) 
| 16:30 - 17:00 PM | 📝 Summary, Evaluation, and Conclusion                               |                                             |

# Repository structure

This course's materials were rendered using `Quarto` to create `RevealJS`-html slides. The slides and solutions to exercises can be found under the folder `./slides/`, which has separate subfolders `./slides/Day 1/` and `./slides/Day 2/` for the individual days.

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
└── slides
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

# Contributing

I greatly appreciate contributions from the community. Your input helps to improve and expand the Masterclass. Here’s how you can contribute:

## Reporting Bugs or Factual Errors

- If you find any bugs or factual errors in the content, please report them using the Issues tab.
- Clearly describe the issue and provide any relevant links or references to support your issue.

## Suggestions for Improvements

- Suggestions are always welcome! Feel free to submit your ideas through the Issues tab.
- Explain your suggestion in detail and how it adds value to the Masterclass.

## Submitting Pull Requests

- If you have developed content that you believe would enhance this Masterclass, please submit a pull request.
- Ensure your submission is well-researched, factually accurate, and adds educational value.
- Follow the existing structure and style for consistency.

## Guidelines for Contributions

- **Quality Standards**: Contributions should maintain be in line with the quality of the existing content. Ensure accuracy, clarity, and relevance.
- **Review Process**: All submissions will be reviewed for quality and relevance. I aim to provide feedback or merge contributions promptly.

## License

This project is open source and available under the Attribution-NonCommercial-ShareAlike 4.0 International Creative Commons License.

You are free to:

- Share — copy and redistribute the material in any medium or format.
- Adapt — remix, transform, and build upon the material.
The licensor cannot revoke these freedoms as long as you follow the license terms.
Under the following terms:
- Attribution - You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- NonCommercial - You may not use the material for commercial purposes.
- ShareAlike - If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.
- No additional restrictions - You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.
