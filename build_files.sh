echo "BUILD START"
echo "`python3 --version`"
sudo apt-get install build-essential libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev
wget https://www.python.org/ftp/python/3.10.4/Python-3.10.4.tgz
cd Python-3.10.4
./configure --enable-optimizations --with-ensurepip=install
make -j $(nproc)
sudo make altinstall
tar -xvf Python-3.10.4.tgz
python3 -m venv venv
source venv/bin/activate
python3 -m pip install -r requirements.txt
python3 manage.py collectstatic --noinput --clear
echo "BUILD END, I LOVE YOU MOHIT BHAIYA/COPILOT"