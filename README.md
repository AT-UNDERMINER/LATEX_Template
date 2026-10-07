# Engineering Report LaTeX Template

## Overview

A single-column LaTeX template for engineering reports and assignments, styled after IEEE reports on A4 paper. It sets up the page layout, headers and footers, IEEE-style references, cross-referencing and code listings. It also includes worked examples of the packages engineering students use most: tables, subfigures, units, equations, plots, circuit diagrams, block diagrams and code.

The compiled PDF explains each example, and the matching source is in the `Sections/` files, so you can compare the two, copy the parts you need and delete the rest.

> [!TIP]
> There are many YouTube videos and plenty of package documentation if you get stuck or want to learn more. Every package's manual is on [CTAN](https://ctan.org) (search for the package name).
> Large Language Models (LLMs) such as Claude or ChatGPT are also very useful for formatting help and finding the right LaTeX command.

## Features

* Single-column A4 report layout with 19 mm side, 25 mm top and 30 mm bottom margins (set in `Format Parameters.tex`)
* Title, author, abstract, header and footer ("Page X of Y") set from a few values in the main file
* IEEE-style bibliography using `IEEEtran.bst`
* Cross-referencing with `cleveref` (`\cref` / `\Cref`) throughout, in IEEE style: "Section II-A", "Fig. 1", "Fig. 2(a)", "(1)" (or "Equation (1)" at the start of a sentence) and "Table I"
* IEEE caption style ("Fig. 1." below figures, "TABLE I" above tables) and reference list placed after the appendices
* All figures and tables fixed in place with `[H]`
* Example figures and subfigures (`subcaption`)
* Example `booktabs` tables, including `siunitx` decimal-aligned and grouped columns
* Engineering examples:
  * `siunitx` units and numbers
  * `amsmath` derivations, matrices and piecewise functions
  * `pgfplots` plots from CSV data and from equations (including Bode plots)
  * `circuitikz` circuit diagrams
  * `tikz` block diagrams
  * G-code, CODESYS Structured Text and MATLAB code listings
* Electrical and electronic examples:
  * `circuitikz` American and European (IEC) symbols, op-amps and logic gates
  * `tikz-timing` digital timing diagrams
  * `karnaugh-map` Karnaugh maps with groupings
  * `bodeplot` Bode plots straight from poles, zeros and gain
  * `steinmetz` phasor notation
  * `pgfplots` 3D plots: magnetic field around a wire and an antenna radiation pattern surface
  * `bytefield` register maps and data frames
  * `pdfpages` datasheets inserted into the appendix
  * `acronym` acronym list, with each acronym written in full on first use
* Compatible with Overleaf and local LaTeX distributions

# Installation

You can either use the template online with Overleaf (nothing to install) or install LaTeX on your own computer. A local install works offline, has no compile time limits and works well with VS Code.

## Option 1: Overleaf (online)

1. On this repository's GitHub page, click **Code > Download ZIP**.
2. Sign in to [Overleaf](https://www.overleaf.com), then click **New Project > Upload Project** and select the ZIP file.
3. Open **Menu** (top left) and check that:
   * **Main document** is set to `IEEE Report Template.tex`
   * **Compiler** is set to `pdfLaTeX`
4. Click **Recompile**.

> [!NOTE]
> The free Overleaf plan has a compile time limit. Large reports with many `pgfplots` or `tikz` figures may hit this limit; a local install does not have this problem.

## Option 2: Local install

A local setup needs three things:

1. **A LaTeX distribution:** the compiler and packages (MiKTeX, TeX Live or MacTeX)
2. **Perl:** needed by `latexmk`, the tool that runs all the compile steps for you. It's already included with TeX Live and MacTeX.
3. **An editor:** VS Code with the LaTeX Workshop extension is recommended

### Windows

You can use either **MiKTeX** (smaller, installs packages as needed) or **TeX Live** (one large install with every package).

**MiKTeX (recommended)**

1. Download and run the installer from [miktex.org/download](https://miktex.org/download).
2. When asked about missing packages, choose **Install missing packages on-the-fly: Yes**. Otherwise, the first compile stops with a pop-up for every package the template needs.
3. After installing, open **MiKTeX Console** and click **Check for updates**, then **Update now**.
4. Install **Strawberry Perl** from [strawberryperl.com](https://strawberryperl.com). MiKTeX does not include Perl, and `latexmk` will not run without it.

**TeX Live (alternative)**

1. Download `install-tl-windows.exe` from [tug.org/texlive](https://tug.org/texlive/acquire-netinstall.html) and run it.
2. Keep the default **full** scheme. The download is several gigabytes and can take an hour or more.
3. Perl is included, so Strawberry Perl is not needed.

### macOS

1. Install **MacTeX** from [tug.org/mactex](https://tug.org/mactex/). It is a large download (around 6 GB) and includes everything, including Perl.
   * If you use Homebrew: `brew install --cask mactex`

### Linux

Install TeX Live from your package manager. The full install is the simplest option:

```bash
# Debian / Ubuntu
sudo apt install texlive-full

# Fedora
sudo dnf install texlive-scheme-full
```

### Check the install

Close and reopen your terminal (or restart your computer) so the new programs are found, then run:

```bash
pdflatex --version
latexmk --version
perl --version
```

Each command should print a version number. If one says "command not found" or "not recognized", that part is not installed or is not on your PATH.

## Editor: VS Code with LaTeX Workshop

1. Install [VS Code](https://code.visualstudio.com).
2. Open the **Extensions** panel (`Ctrl+Shift+X`) and install **LaTeX Workshop** by James Yu.
3. Restart VS Code so it picks up the LaTeX install.
4. Open the template folder (**File > Open Folder**) and open `IEEE Report Template.tex`.
5. Build with `Ctrl+Alt+B` (or save the file; it builds automatically) and view the PDF with `Ctrl+Alt+V`.

LaTeX Workshop uses `latexmk` by default, which runs `pdflatex` and `bibtex` as many times as needed so references, citations and page numbers are all correct, in one click.

> [!NOTE]
> I personally use VS Code with LaTeX Workshop, MiKTeX and Strawberry Perl.

# Usage

## Getting the template

Either download the ZIP from GitHub (**Code > Download ZIP**) or clone it:

```bash
git clone https://github.com/AT-UNDERMINER/LATEX_Template.git
cd LATEX_Template
```

## Compiling from the command line

If you are not using VS Code or Overleaf, compile with `latexmk`. The quotes are needed because the file name contains spaces:

```bash
latexmk -pdf "IEEE Report Template.tex"
```

Open `IEEE Report Template.pdf` to view the output. To delete the build files afterwards, run `latexmk -c`.

## Filling in your details

Near the top of `IEEE Report Template.tex`, change these values. They are used in the title, header and footer:

```latex
\def\name{First and Last Name}
\def\subjectcode{Subject Code}
\def\studentnumber{Student Number}
\def\doctitle{Document Title}
\def\institution{Name of institution}
```

Also replace `Email Address` in the `\author` line and write your abstract in the `abstract` environment.

# File Structure

```
LATEX_Template/
│── IEEE Report Template.tex   # Main file: your details, abstract and the list of sections
│── Base Packages.tex          # All packages loaded by the template
│── Format Parameters.tex      # Page margins, header/footer and numbering settings
│── Code Input Perameters.tex  # Code listing styles (MATLAB, G-code, CODESYS)
│── references.bib             # Bibliography entries
│── Sections/
│   │── Acronyms.tex              # Acronym definitions (listed at the start of the report)
│   │── Example Section.tex       # Figures, subfigures, booktabs tables, \cref usage
│   │── Engineering Examples.tex  # siunitx, amsmath, pgfplots, circuitikz, tikz, listings, citations
│   │── Electrical Examples.tex   # Acronyms, circuits, timing diagrams, K-maps, Bode plots, phasors, 3D plots, registers, datasheets
│   └── Appendices.tex            # Appendix chapters, including an inserted datasheet
│── Figures/
│   └── test-setup.jpg         # Example photo (Figure 1 in the Example Section)
│── Data/
│   └── step_response.csv      # Example data plotted with pgfplots
│── Code/
│   └── step_response.m        # Example code included with \lstinputlisting
└── README.md                  # This file
```

# Customisation

- **Sections:** write each section in its own file in `Sections/` and add it to the main file with `\input{Sections/Your Section}`. Remove the example sections once you no longer need them.
- **Figures:** put your images in the `Figures/` folder and include them with `\includegraphics[width=0.8\linewidth]{Figures/your-image}`. Use JPG or PNG for photos and screenshots, and PDF for plots and diagrams so they stay sharp.
- **Datasheets:** put PDFs in a `Datasheets/` folder and insert them with `\includepdf[pages=-]{Datasheets/your-datasheet}` (see `Appendices.tex`). Build PDFs are ignored by git, but PDFs in `Figures/` and `Datasheets/` are kept.
- **Acronyms:** add them to `Sections/Acronyms.tex` and write `\ac{KEY}` in the text. Only acronyms you use appear in the list.
- **Circuit symbols:** for IEC/European symbols throughout (as used in Australian Standards), change `\usepackage{circuitikz}` to `\usepackage[european]{circuitikz}` in `Base Packages.tex`.
- **References:** add entries to `references.bib` and cite them with `\cite{key}`. The main file uses `\nocite{*}`, which lists *every* entry in the bibliography even if it is not cited. Remove it if you only want cited sources.
- **Cross-references:** label everything (`fig:`, `tab:`, `eq:`, `lst:`, `app:`) and reference it with `\cref{...}`, or `\Cref{...}` at the start of a sentence. The IEEE reference and caption styles are set in `Base Packages.tex` and `Format Parameters.tex`.
- **Page layout and code style:** edit `Format Parameters.tex` and `Code Input Perameters.tex`.
- **Section headings:** these follow IEEE style: "I. INTRODUCTION" (Roman numeral, centred, small capitals), "A. Subsection" (italic) and "1) Subsubsection:" (italic, run into the paragraph). Reference them with `\cref{sec:...}`, which gives "Section II-A". The heading styles are set in `Format Parameters.tex`.
- **Extra packages:** add them to `Base Packages.tex`. Most packages can go anywhere in the file, but `cleveref` must stay after `hyperref`, so check a package's documentation if it says it needs to be loaded before or after either of them.

# Contributing

Contributions are welcome! Feel free to submit issues or pull requests to improve this template.
