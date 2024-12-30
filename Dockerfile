FROM ubuntu:24.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y zsh stow fzf neovim git curl
RUN chsh -s /bin/zsh root

RUN mkdir /root/.dotfiles-new
COPY . /root/.dotfiles-new
