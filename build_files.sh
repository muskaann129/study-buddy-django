echo "BUILD START"
echo "`python3 --version`"
python3.10 -m pip install -r requirements.txt
python3.10 manage.py collectstatic --noinput --clear
echo "BUILD END, I LOVE YOU MOHIT BHAIYA/COPILOT"