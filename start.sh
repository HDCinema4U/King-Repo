if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HDCinema4U/King-Repo /King-Repo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Lucifer
fi
cd /Lucifer
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
