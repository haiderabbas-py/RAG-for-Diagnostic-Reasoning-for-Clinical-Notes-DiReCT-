# RAG for Diagnostic Reasoning for Clinical Notes (DiReCT)

This repository contains a Retrieval-Augmented Generation (RAG) demo project based on the assignment *RAG for Diagnostic Reasoning for Clinical Notes (DiReCT)*.  
It provides a starter codebase, an example Streamlit frontend, and documentation so you can reproduce the pipeline locally or extend it.

**Repository structure**
- `app/` - Streamlit app and frontend helpers
- `src/` - Core modules: preprocessing, retriever, generator, evaluation
- `notebooks/` - Example notebooks and experiments
- `docs/` - Medium & LinkedIn post drafts and project manual
- `data/` - Expected location for local dataset files (NOT included)
- `requirements.txt` - Python dependencies
- `setup.sh` - Convenience script to create virtualenv and install deps
- `LICENSE` - MIT License
- `.gitignore`

> ⚠️ The MIMIC-IV-Ext dataset is **not included** in this repository. You must obtain it via PhysioNet and place the extracted files into `data/` following the instructions below.

---

## Quickstart

### 1. Clone & unzip
If you downloaded this repo as a zip, unzip and `cd` into the folder.

### 2. Create a Python environment and install
```bash
python -m venv .venv
source .venv/bin/activate       # or .venv\Scripts\activate on Windows
pip install -r requirements.txt
```
(You can also use `setup.sh` on Unix systems: `bash setup.sh`)

### 3. Prepare data
- Register at PhysioNet and download **MIMIC-IV-Ext Direct** following the instructions at https://physionet.org/content/mimic-iv-ext-direct/1.0.0/
- Place the CSV/JSON files or the subset you will use into `data/`
- Update `src/config.py` with paths and options

### 4. Index data (example using BM25)
```bash
python src/index_data.py --data-dir data --index-file data/index_bm25.pkl
```

### 5. Run Streamlit demo
```bash
streamlit run app/app.py
```




