### ------------ about venv ------------ ###
mkdir myproject
cd myproject
python -m venv venv

# activate
. venv/bin/activate

# install packages
pip install ...

### ------------ about server ------------ ###

# access
ssh dev0

ssh -L 7007:localhost:7007 dev0

# notebook
ssh -L 7777:localhost:9797 dev0
ssh -L 7777:localhost:9797 dev1
jupyter notebook

# demo port
ssh -L 9990:127.0.0.1:5000 dev0

### ------------ for little Falsk app ------------ ###
export FLASK_APP=app.py
export FLASK_ENV=development
flask run

### ------------ about conda ------------ ###
conda info --envs				# check your environments
conda create --name my_env python=3.6.8		# new environment
source activate my_env
# after enter the environment you want
conda search (packages)
conda install (packages) or pip install (packages)
conda list


### ------------ about GPU ------------ ###

# nvidia GPU usage
nvidia-smi

# investigate unkilled processes
sudo fuser -v /dev/nvidia*

# watch is to execute program periodically, [-n 1] (per second)
watch -n 1 nvidia-smi

### ------------ using tmux ------------ ###
tmux new -s sess_name
tmux ls
tmux detach  # exit session but not destroy
tmux kill-session -t sess_name  # kill a known session
tmux a -t sess_name  # load into a existing session
tmux rename -t old_name new_name
ctrl + d     # destroy all sessions and exit

### ------------ server tensorboardX ------------ ###
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"


### ------------ about Files ------------ ###
# remove all except
shopt -s extglob
rm -- !(file.txt)

# count files
 ls -1 | wc -l

### ------------ git delete remote ------------ ###
git rm -r --cached file_names / folder_names

### ------------ for python plot ------------ ###
import matplotlib.pyplot as plt
%matplotlib inline
from IPython import display
display.set_matplotlib_formats('svg')


# vscode settings.json
{
    "python.pythonPath": "venv/bin/python",
    "python.linting.flake8Enabled": true,
    "python.formatting.provider": "yapf",
    "editor.insertSpaces": false,
    "editor.renderWhitespace": "all",
    "editor.formatOnSave": true,
    "git.ignoreLimitWarning": true
}
