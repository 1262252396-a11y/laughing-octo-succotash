@echo off
REM One-time setup: install packages, train the model, create + fill the database.
pip install -r requirements.txt
python train_model.py
python init_db.py
python seed_data.py
python evaluate.py
echo.
echo Setup done. Start the website with:  streamlit run app.py
