#!/usr/bin/env bash
# Lightweight demo runner: index small CSV then run streamlit
python src/index_data.py --data-dir data --index-file data/index_bm25.pkl --method bm25
# Then run: streamlit run app/app.py
