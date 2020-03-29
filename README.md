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
