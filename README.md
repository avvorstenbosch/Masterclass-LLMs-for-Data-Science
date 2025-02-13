# Masterclass: Large Language Models for Data Science
![](./slides/day_1/figures/pair-programming-with-llms.webp)

Welcome to this Masterclass on Large Language Models for Data Science. This course is designed for data scientists, data analysts, researchers, and AI enthusiasts in general looking to deepen their understanding of LLMs such as ChatGPT, Deepseek, Llama, Mistral, Phi, etc., along with their application ins various fields.
This Masterclass contains examples in both `Python` but should also be accesible to users with an `R` background. The old version of the masterclass was more R focused and is still accesible via the git-history.

## Using the Masterclass

This Masterclass was developed using `Quarto`. I highly recommend installing it if you intend to work through these exercises.

- `Python`: Using the `VS Code`-IDE allows you to interactively work with the .qmd files, just like with .ipynb files.

The timetable below has links to all the slides, exercises and solutions. The slides were rendered to the `RevealJS`-html format, which means all the slides can be opened directly in the browser and have many interactive features; press `?` for an overview. In my experience the edge and chrome browsers have trouble with some of the slides. Firefox does not seem to have any issues so far.

**Main branch**\
The main branch contains all the source `Quarto` and `Python` code for the masterclass.\
\
**gh_pages**\
This branch is used for hosting the full Masterclass on github. This branch contains the full Masterclass in the `./CourseMaterials` folder. All the html-files, datasets and figures can be found there.

## Timetable day 1

The first day of the Masterclass is a general introduction discussing the following points:

- What are LLMs and what is the recipe for making them?
- What can LLMs do?
- What are best practices for interacting with LLMs? (Prompting)
- How to download and work with open-weights LLM models
- What are ethical considerations you need to be aware of when using LLMs?
- How can we use LLMs as pair-programming buddies?


| Time              | Title                                          | Description                                                                       | Exercises              | Solutions              |
|-------------------|------------------------------------------------|-----------------------------------------------------------------------------------|------------------------|------------------------|
| 09:00 – 09:30 AM | 👋 Introduction                               |                                                                                   | | |
| 09:30 – 10:45 AM | 🤖 [Introduction to LLMs](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/slides/day_1/2.Introduction_Large_Language_Models_and_ChatGPT.html)         | NLP and development of LLMs<br> Inner workings of LLMs <br> Capabilities of LLMs |
| 10:45 – 11:00 AM | ☕ Break                                        |                                                     |
| 11:00 – 12:00 PM | 💬 [Prompt Engineering](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/slides/day_1/3.Prompt_Engineering.html)                          | Introduction to prompting<br>Best practices for prompting - [Prompting Cheatsheet](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/slides/day_1/cheatsheet.pdf)   | [Exercise set Prompting](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/exercises/day_1/1.Prompt_engineering_exercises.pdf) <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_1/Google_Colab_General_notebook_for_assignments.ipynb)| [Solutions Prompting](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/exercises/day_1/solutions/1.Prompt_engineering_solutions.pdf) |
| 12:00 – 13:00 PM | 🥪 Lunch                                        |                                            |
| 13:00 – 13:45 PM | 🎲 A closer look at LLM sampling | A look at the edge of the black box | [Exercises LLM Sampling](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/exercises/day_1/2.Introduction_to_sampling.pdf) <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_1/Google_Colab_General_notebook_for_assignments.ipynb) | [Solutions LLM Sampling](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/exercises/day_1/solutions/2.Introduction_to_sampling_solutions.pdf) |
| 13:45 – 14:45 PM | ⚖️ [Ethical Considerations in Using LLMs](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/slides/day_1/5.Ethical_Considerations_in_Using_LLMs.html)        | Biases and Misinformation<br>The Dark Side of LLMs<br>Privacy and Legal Challenges|
| 14:45 - 15:00 PM | ☕ Break                                        |                                                |
| 15:00 - 16:00 PM |  💻[Programming with LLMs](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/slides/day_1/4.Programming_with_LLMs.html)                         | Pair-programming with LLMs  |[Exercises LLM Programming](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/exercises/day_1/3.Pair-programming_with_LLMs.pdf) <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_1/Google_Colab_General_notebook_for_assignments.ipynb)                                  | Solutions are in the exercise set |
| 16:00 – 16:45 PM  | 🚀 [Improved Efficiency with ChatGPT](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/slides/day_1/6.Increased_efficiency_with_LLMs.html)            | Examples of real implementations of ChatGPT in a workflow                         |
| 16:45 – 17:00 PM | 📝 Summary, Evaluation and Conclusion of Day 1 |                                                   |

## Timetable Day 2

The second day of the Masterclass is a more in-depth session, ending with a large practical assignment:

- Can, and should, you use LLMs for Natural Language Processing?
- What are the latest developments in the field of LLMs. Where are we heading?
- How to build your own Retrieval Augmented Generation system with fact-checking against hallucinations

| Time              | Title                                          | Description                                                                       | Exercises              | Solutions              |
|-------------------|------------------------------------------------|-----------------------------------------------------------------------------------|------------------------|------------------------|
| 09:00 – 09:20 AM | 🌅 Opening and Discussion of the Day's Agenda                      |                                                                                               |
| 09:20 – 10:45 AM | 📊 [Text Analysis with LLMs](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/slides/day_2/2.NLP_with_LLMs.html)                                          | Foundation models for NLP<br>Evaluation of performance | Exercises <br>[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_2/Exercises_NLP_with_LLMs.ipynb)  | Solutions <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_2/solutions/Exercises_NLP_with_LLMs_Solutions.ipynb)                    |
| 10:45 – 11:00 AM | ☕ Break                                                             |                                                                         |
| 11:00 – 12:30 PM | 🔍 [Retrieval Augmented Generation (RAG), open source, and next steps](https://avvorstenbosch.github.io/Masterclass-LLMs-for-Data-Science/CourseMaterials/slides/day_2/3.Next_steps_for_LLMs.html) | LLMs versus Search Engines<br>How to host your own LLM<br>Next steps?                          |
| 12:30 – 13:30 PM | 🥗 Lunch                                                             |                                                                  |
| 13:30 - 16:30 PM | 🚀 Extended Practical Assignment - RAG 🔍                            |   Building your own Retrieval Augmented Generation system with fact-checking against hallucinations                                                                                    | Extended Practical Assignment <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_2/Retrieval_Augmented_Generation_(RAG)_for_Question_Answering.ipynb)  | Solutions <br> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/avvorstenbosch/Masterclass-LLMs-for-Data-Science/blob/main/exercises/day_2/solutions/Retrieval_Augmented_Generation_(RAG)_for_Question_Answering_Solutions.ipynb) 
| 16:30 - 17:00 PM | 📝 Summary, Evaluation, and Conclusion                               |                                             |

# Repository structure

This course's materials were rendered using `Quarto` to create `RevealJS`-html slides. The raw files for the slides, excercises, and solutions to exercises can be found under the `main` branch in the  `./slides/`, `./exercises`, `./exercises/*/solutions/` folders respectively.

On the `gh_pages` branch you will find the figures, datasets, and html files for the slides. The `gh_pages` branch is used to host the full Masterclass on github.
The general structure for the codebase and the rendered masterclass is as follows: 

```
├── exercises
│   ├── day_1
│   │   ├── 1.Prompt_engineering_exercises.qmd
│   │   ├── 2.Introduction_to_sampling.qmd
│   │   ├── 3.Pair-programming_with_LLMs.qmd
│   │   ├── data
│   │   │   ├── advent-of-code-input-solutions.txt
│   │   │   ├── code.py
│   │   │   ├── code.R
│   │   │   ├── code-solution.py
│   │   │   ├── input-data-script.txt
│   │   │   ├── movie-review-1.txt
│   │   │   └── movie-review-2.txt
│   │   ├── Google_Colab_General_notebook_for_assignments.ipynb
│   │   ├── helper_functions
│   │   │   └── helper_functions.py
│   │   └── solutions
│   │       ├── 1.Prompt_engineering_solutions.qmd
│   │       └── 2.Introduction_to_sampling_solutions.qmd
│   └── day_2
│       ├── data
│       │   ├── semEval2014-restaurants-x.csv
│       │   ├── semEval2014-restaurants-y.csv
│       │   └── WIKIPEDIA_natural_language_processing.csv
│       ├── Exercises_NLP_with_LLMs.ipynb
│       ├── Retrieval_Augmented_Generation_(RAG)_for_Question_Answering.ipynb
│       └── solutions
│           ├── Exercises_NLP_with_LLMs_Solutions.ipynb
│           └── Retrieval_Augmented_Generation_(RAG)_for_Question_Answering_Solutions.ipynb
└── slides
    ├── day_1
    │   ├── 1.Opening.qmd
    │   ├── 2.Introduction_Large_Language_Models_and_ChatGPT.qmd
    │   ├── 3.Prompt_Engineering.qmd
    │   ├── 4.Programming_with_LLMs.qmd
    │   ├── 5.Ethical_Considerations_in_Using_LLMs.qmd
    │   ├── 6.Increased_efficiency_with_LLMs.qmd
    │   └── demo
    │       ├── demo-1-advanced-data-analysis.txt
    │       ├── demo-1-penguins.csv
    │       ├── demo-2-image-editing.txt
    │       ├── demo-2-OpenAI.webp
    │       └── demo-3-excel-template.txt
    └── day_2
        ├── 1.Opening.qmd
        ├── 2.NLP_with_LLMs.qmd
        └── 3.Next_steps_for_LLMs.qmd
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

- **Review Process**: All submissions will be reviewed for quality and relevance. I aim to provide feedback or merge contributions promptly.

## License

This project is open source and available under the Attribution-NonCommercial-ShareAlike 4.0 International Creative Commons License.

You are free to:

- Share — copy and redistribute the material in any medium or format.
- Adapt — remix, transform, and build upon the material.

The licensor cannot revoke these freedoms as long as you follow the license terms.
Under the following terms:
- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- NonCommercial — You may not use the material for commercial purposes.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.
- No additional restrictions —  You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.
