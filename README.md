# Final Report Template - LaTeX

> [!NOTE]
>
> This template is designed to be a starting point. Feel free to adapt it to your project requirements.
> Be sure to follow any formatting guidelines provided by your department.

This repository provides a LaTeX template for a Bachelor of Science in Computer Science final project report at **California State University, Dominguez Hills**. It includes:

- Title page
- Approval page
- Acknowledgements
- Abstract
- Table of contents
- Structured sections (e.g., Methodology, Discussion, Future Work)

## 📁 Repository Structure

- `preamble/`   – Package imports & custom macros
- `front/`      – Title page, abstract, TOC, acknowledgements, etc.
- `contents/`   – Main sections of the report (e.g., Introduction, Methodology)
- `back/`       – Appendices (code listings, references)
- `figures/`    – Images and diagrams
- `bin/`        – Intermediate build files (created by `make`)
- `Makefile`    – Build targets for macOS/Linux
- `build.bat`   – Build script for Windows
- `template_final_report.tex` – Main LaTeX file to compile
- `LICENSE`     – License details

> [!NOTE]
>
> To remove the custom cover page, comment out the `\includepdf` line in `template_final_report.tex` or replace `cover_page.pdf` with your own.

## 📌 Features

- Clean, professional layout following academic formatting standards
- Automatic table of contents, list of figures, and list of tables
- Custom headers and page numbering
- Section/subsection styling for improved readability
- Code listings with syntax highlighting (via `listings` package)
- PDF embedding for external documents

## 🚀 Building the PDF

You can build the report using the CLI. Intermediate files will be placed in the bin/ directory, and the final PDF will appear in the root.

### 🔧 MacOS & Linux (with make)
> [!NOTE]
>
> **Prerequisite:** this project requires a working TeX Live installation.
>
> ```bash
> # verify you have pdflatex
> pdflatex --version
> ```
>
> If it isn’t installed, on macOS run:
>
> ```bash
> brew install --cask mactex    # full TeX Live (~4 GB)
> # or for a smaller footprint:
> brew install --cask basictex  # BasicTeX (~100 MB)
> ```

After cloning this project, navigate to the root directory and run the following:
```bash
make
```
To clean intermediate files:

```bash
make clean
```

### 🔧 Windows (with PowerShell)

#### ✅ Install MiKTeX
To build this LaTeX project on Windows, you’ll first need to install **MiKTeX**:

1. Go to the [MiKTeX installation guide](https://miktex.org/download).
2. Download and install the appropriate Windows version.
3. After installation, **close and reopen your terminal** to ensure the environment variables are refreshed.

To verify the installation:

```powershell
pdflatex --version
```

If you see version info and no error, you're ready to build the project.
#### ▶️ Build the PDF

Navigate to the root of this project directory and run:
```powershell
.\build.bat
```
This will generate the PDF in the correct location.

### 🛠️ Manual Compilation (All OS)

If you'd like to compile manually using `pdflatex`:

#### macOS/Linux:
```bash
mkdir -p bin
pdflatex -output-directory=bin template_final_report.tex
mv bin/template_final_report.pdf .
```
#### Windows (PowerShell):

```powershell
mkdir bin
pdflatex -output-directory=bin template_final_report.tex
move bin\template_final_report.pdf .
```

## ✍️ Customization

**Preamble**:
- edit ``preamble/packages.tex`` & ``preamble/macros.tex`` for packages or new commands.

**Front Matter**:
- update any of the ``.tex`` in ``front/`` for your title, abstract, acknowledgements, etc.
- the title page is in ``front/title_page.tex``; update the project title, author, and semester.

**Main Content**:
- each section lives in ``contents/``. Just open the one you need to edit.

**Appendices**:
- code listings live in ``back/code.tex``; bibliography in ``back/references.tex``.

To replace the default cover page, comment or remove the ``\includepdf`` line in ``template_final_report.tex``.

## 📄 Example Sections

- Cover Page
- Title Page
- Approval Page
- Acknowledgements
- Table of Contents
- List of Figures
- List of Tables
- Abstract
- Introduction
- Related Work
- Other Sections
- Methodology
- Discussion
- Conclusion
- Future Work
- References
- Code Snippets

## 📚 License

This template is free to use and modify for academic purposes. 
See [LICENSE](LICENSE) for more details.
