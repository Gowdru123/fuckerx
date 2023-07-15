if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Gowdru123/fuckerx /fuckerx 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /fuckerx 
fi
cd /fuckerx 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
