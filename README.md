# IEEE Style LaTeX Template

## Overview

This repository provides a LaTeX template for IEEE-style papers, including proper formatting, section structures, bibliography management, and example content. It is designed to be used for conference and journal submissions that adhere to IEEE guidelines.

> [!TIP]
> There is a plethora of YouTube videos and documentation for each package and how to use LaTeX in general if you get stuck or want more information.
>Large Language Models (LLMs) like ChatGPT are very useful for formatting and finding information on LaTeX.

## Features

* Pre-formatted IEEE paper layout (two-column format)
* Proper title, author, and abstract sections
* Predefined section structure (Introduction, Methods, Results, etc.)
* Bibliography management using `IEEEtran.bst`
* Example figures
* Compatible with Overleaf and local LaTeX distributions
* Easy to modify and extend
  
# Installation & Usage

## 1. Using Overleaf

  1. Clone or download this repository.
  2. Upload the files to Overleaf.
  3. Compile using `pdflatex`.

## 2. Using Local LaTeX Distribution
1. Ensure you have a LaTeX distribution installed (TeX Live, MikTeX, etc.).

>[!IMPORTANT]
> As well as a LaTeX distribution (TeX Live, MikTeX, etc.), you will also need "Strawberry Perl" in order to use the template.

3. Clone this repository:
```
git clone https://github.com/AT-UNDERMINER/IEEE-LaTeX-Template.git
cd IEEE-LaTeX-Template
```
3. Compile the main.tex file:
```latex
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```
Open main.pdf to view the output.

> [!NOTE]
> I personally use VSCode with the extension "LaTeX Workshop" by "James Yu" in combination with MikTeX and Strawberry Perl.
> This combination handles all the multi-step compiling required for the bibliography and references in one button press. 

# File Structure

```latex
IEEE-LaTeX-Template/
│── main.tex          # Main LaTeX file
│── references.bib    # Bibliography file
│── figures/          # Directory for figures
│── sections/         # Separate section files (optional)
│── output.pdf        # Example compiled output
└── README.md         # This README file
```
# Customization

- Modify `main.tex` to change title, authors, and abstract.
- Update `references.bib` for your bibliography.
- Add figures in the `figures/` directory and reference them in the text.
- Make changes to the Format Parameters.tex and Code Input Parameters.tex to suit your exact requirements for page layout and code style.
- Add other packages into the Base Packages.tex to add extra functionality you may require. 

# Contributing

Contributions are welcome! Feel free to submit issues or pull requests to improve this template.
