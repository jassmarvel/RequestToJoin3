if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jassmarvel/RequestToJoinnn /RequestToJoinnn
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RequestToJoinnn
fi
cd /RequestToJoinnn
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
