#!/usr/bin/env bash

XDG_CONFIG_HOME=${HOME}/.config
DOTFILES_DIR=/mnt/shared/documents/dotFiles

dir=${HOME}
ln -sf ${DOTFILES_DIR}/bash_profile ${dir}/.bash_profile
ln -sf ${DOTFILES_DIR}/bash_prompt ${dir}/.bash_prompt
ln -sf ${DOTFILES_DIR}/bash_aliases ${dir}/.bash_aliases
ln -sf ${DOTFILES_DIR}/bashrc ${dir}/.bashrc
ln -sf ${DOTFILES_DIR}/bashrc.home.ubuntu ${dir}/.bashrc.home.ubuntu
ln -sf ${DOTFILES_DIR}/inputrc ${dir}/.inputrc
ln -sf ${DOTFILES_DIR}/gitconfig ${dir}/.gitconfig
ln -sf ${DOTFILES_DIR}/tmux.conf ${dir}/.tmux.conf
ln -sf ${DOTFILES_DIR}/xinitrc ${dir}/.xinitrc
ln -sf ${DOTFILES_DIR}/asoundrc ${dir}/.asoundrc

dir=${XDG_CONFIG_HOME}/mpd
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/mpd.conf ${dir}

dir=${XDG_CONFIG_HOME}/nvim
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/init.vim ${dir}

dir=${XDG_CONFIG_HOME}/nvim/after/syntax
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/fortran.vim ${dir}
ln -sf ${DOTFILES_DIR}/python.vim ${dir}
ln -sf ${DOTFILES_DIR}/tex.vim ${dir}

dir=${HOME}/.ssh
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/sshconfig ${dir}/config

dir=${XDG_CONFIG_HOME}/alacritty
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/alacritty.ubuntu.toml ${dir}/alacritty.toml

dir=${XDG_CONFIG_HOME}/mpv
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/mpv.conf ${dir}

dir=${XDG_CONFIG_HOME}/tigervnc
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/tigervnc.config ${dir}/config

dir=${HOME}/.vnc
mkdir -p ${dir}
ln -sf ${DOTFILES_DIR}/xstartup ${dir}

#sudo cp -f ${DOTFILES_DIR}/crontab.ubuntu /var/spool/cron/dunhamsj
