#!/usr/bin/env bash

DOTFILES_DIR=/mnt/shared/documents/dotFiles
XDG_CONFIG_DIR=${HOME}/.config

dir=${HOME}
ln -sf ${DOTFILES_DIR}/bash_profile ${dir}/.bash_profile
ln -sf ${DOTFILES_DIR}/bash_aliases ${dir}/.bash_aliases
ln -sf ${DOTFILES_DIR}/bashrc ${dir}/.bashrc
ln -sf ${DOTFILES_DIR}/bashrc.archlinux ${dir}/.bashrc.archlinux
ln -sf ${DOTFILES_DIR}/inputrc ${dir}/.inputrc
ln -sf ${DOTFILES_DIR}/gitconfig ${dir}/.gitconfig
ln -sf ${DOTFILES_DIR}/tmux.conf ${dir}/.tmux.conf
ln -sf ${DOTFILES_DIR}/xinitrc ${dir}/.xinitrc

dir=${XDG_CONFIG_DIR}/mpd
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/mpd.conf ${dir}

dir=${XDG_CONFIG_DIR}/nvim
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/init.vim ${dir}

dir=${XDG_CONFIG_DIR}/nvim/after/syntax
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/fortran.vim ${dir}
ln -sf ${DOTFILES_DIR}/python.vim ${dir}
ln -sf ${DOTFILES_DIR}/tex.vim ${dir}

dir=${HOME}/.ssh
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/sshconfig ${dir}/config

dir=${XDG_CONFIG_DIR}/alacritty
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/alacritty.toml ${dir}

dir=${XDG_CONFIG_DIR}/i3
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/i3.conf ${dir}/config

dir=${XDG_CONFIG_DIR}/i3blocks
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/i3blocks.conf ${dir}/config
ln -sf ${DOTFILES_DIR}/i3blocks_volume ${dir}

dir=${XDG_CONFIG_DIR}/picom
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/picom.conf ${dir}

dir=${XDG_CONFIG_DIR}/mpv
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/mpv.conf ${dir}

dir=${XDG_CONFIG_HOME}/tigervnc
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/tigervnc.config ${dir}/config

dir=${HOME}/.vnc
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/xstartup ${dir}

sudo cp -f ${DOTFILES_DIR}/crontab.archlinux /var/spool/cron/dunhamsj
sudo cp -f ${DOTFILES_DIR}/vconsole.conf /etc
