sudo apt update && sudo apt upgrade
sudo apt install python3
sudo apt install neovim
sudo apt install fish

mv ./init.vim ~/.config/nvim
mdkir ~/.config/nvim/vim-plug
mv ./plugins.vim ~/.config/nvim/vim-plug
mkdir ~/.config/nvim/themes
mv ./onedark.vim ~/.config/nvim/themes
mv ./fish_variables ~/.config/fish
mkdir ~/.config/fish/functions
mv ./parse.py ~/.config/fish/functions
mv ./fish_prompt.fish ~/.config/fish/functions
