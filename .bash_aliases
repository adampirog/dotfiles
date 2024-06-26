alias main_env="conda activate main_env"
alias workspace="tmux new-session -n runner -d ; tmux new-window -n code ; tmux a"
alias pypackage="cookiecutter https://github.com/adampirog/cookiecutter-simple-pypackage.git"
alias jupyter_remote="jupyter lab --no-browser --port 8887"
alias jupyter_screen="screen -dmS jupyter; screen -S jupyter -X stuff 'main_env\n jupyter_remote\n'"
