# my-dotfiles
A collection of my dot files 

## install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

copy .vimrc to home directory then run this vim command
:PlugInstall

## setup a global vim settings
:CocConfig
then paste the below settings
{
  "suggest.noselect": false,
  "coc.preferences.formatOnSaveFiletypes": [
    "typescript",
    "javascript",
    "typescriptreact",
    "json",
    "javascriptreact",
    "typescript.tsx",
    "graphql",
//    "css",
    "MarkDown",
    "html",
    "scss",
    "less"
  ],
  "python.jediEnabled": false,
  "prettier.eslintIntegration": true,
}

## setup shortcuts for vim

:CocCommand snippets.editSnippets

put this for cl shortcut:
snippet cl "console.log()" b
console.log($1);
endsnippet

## copy and paste
install termux-api from playstore
$ pkg install termux-api
ctl-v/ctl-c <=> termux-clipboard-get/set

## termux extra keys

# Open a new terminal with ctrl + t (volume down + t)
shortcut.create-session = ctrl + 3

# Go one session down with (for example) ctrl + 2
shortcut.next-session = ctrl + 2

# Go one session up with (for example) ctrl + 1
shortcut.previous-session = ctrl + 1

# Rename a session with (for example) ctrl + n
shortcut.rename-session = ctrl + 4

extra-keys = [ \
 ['ESC','|','/','HOME','UP','END','$','BACKSLASH'], \
 ['TAB','CTRL','-','LEFT','DOWN','RIGHT','PGDN','_'] \
]
