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


# EAST !!! #
rsync -avrh /Users/zichen.liu/Desktop/projects/shopee/3_text/ocr_lib/east_pytorch dev0:/ldap_home/zichen.liu/

### ---------------- file transfer 193 text --------------- ###
# (local to server)
rsync -avrh --exclude='/output' --exclude='/venv' --exclude='/_old' --exclude='/_ctpn_pytorch_bak' --exclude='/ocr_lib/ctpn_pytorch/lib/dataset/ctpn_valid_17_800px_latin/pred' --exclude='/.git' --exclude='/ocr_lib/ctpn_pytorch/lib/model/_C.cpython-36m-darwin.so' /Users/zichen.liu/Desktop/projects/shopee/3_text/ dev0:/ldap_home/zichen.liu/text/
# (server to local)

# tensorboardX
rsync -avrh dev0:/ldap_home/zichen.liu/text/ocr_lib/ctpn_pytorch/ctpn_training_logs /Users/zichen.liu/Desktop/projects/shopee/proj3_exp/ocr_lib/ctpn_pytorch/

# model
rsync -avrh dev0:/ldap_home/zichen.liu/text/ocr_lib/ctpn_pytorch/models/* /Users/zichen.liu/Desktop/projects/shopee/proj3_exp/ocr_lib/ctpn_pytorch/models/

# output ctpn
rsync -avrh dev0:/ldap_home/zichen.liu/text/ocr_lib/ctpn_pytorch/lib/dataset/tmp_out /Users/zichen.liu/Desktop/projects/shopee/proj3_exp/ocr_lib/ctpn_pytorch/lib/dataset

# output combine
rsync -avrh dev0:/ldap_home/zichen.liu/text/output/* /Users/zichen.liu/Desktop/projects/shopee/proj3_exp/output/

# backup
rsync -avrh dev0:/ldap_home/zichen.liu/text/ctpn_pytorch/train_exp.ipynb /Users/zichen.liu/Desktop/projects/shopee/proj3_exp/ctpn_pytorch_bak/train_exp_bak.ipynb
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
