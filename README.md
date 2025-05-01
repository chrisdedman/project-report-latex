# Final Report Template - LaTeX

> [!NOTE]
>
> This template is designed to be a starting point. You can modify it to fit your specific project requirements.
> Make sure to check the formatting guidelines provided by your department.

This repository contains a LaTeX template for a Bachelor of Science in Computer Science final project report at **California State University, Dominguez Hills**. It includes sections such as a title page, approval page, acknowledgements, abstract, table of contents, and structured content areas like methodology, discussion, and future work.

## 📁 Structure

- `template_final_report.tex`: Main LaTeX source file
- `figures/`: Folder for images and diagrams (if used)
- `bin/`: Directory for intermediate files (created during compilation using `make`)
- `build.bat`: Windows batch file for building the report
- `Makefile`: Makefile for building the report on macOS/Linux

> [!NOTE]
>
> Comment line with `\includepdf` if you want to remove the custom cover page. Or update the `cover_page.pdf` with your own.
> Add your own figures in the `figures/` directory and reference them in the text.

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
>  Ensure you have `pdflatex` installed before running `make`.

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

Update the following in report.tex:

- Project_Title, Your_First_Name Your_Last_Name
- Replace placeholders in each section (e.g., Abstract, Introduction, etc.)
- Comment line with `\includepdf` if you want to remove the custom cover page. Or update the cover_page.pdf with your own.
- Add your own figures in the `figures/` directory and reference them in the text.

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
