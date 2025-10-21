# Filename: ${HOME}/.bash_profile
# Soft-linked from /mnt/shared/documents/dotFiles/bash_profile
#
# Adapted from https://github.com/jaharris87/dotfiles/bash_profile/bashrc

if [ -f ${HOME}/.bash_aliases ]; then . ${HOME}/.bash_aliases; fi

# Get full hostname, including domain (i.e., Fully Qualified Domain Name)
export FQDN=$( hostname -f )

# Get computing facility name (e.g. OLCF, ACCRE)
if   [[ ${FQDN} = *"olcf"*         ]]; then export FACILITY="olcf"; export hn=$( echo ${FQDN} | cut -d "." -f 2-2 )
elif [[ ${FQDN} = "gw"*            ]]; then export FACILITY="accre"
elif [[ ${FQDN} = *"utk"*          ]]; then export FACILITY="nics"
elif [[ ${FQDN} = *"anta"*         ]]; then export FACILITY="anta"
elif [[ ${FQDN} = *"perseus"*      ]]; then export FACILITY="perseus"
elif [[ ${FQDN} = "killerkadoogan" ]]; then export FACILITY="home.archlinux"
else                                        export FACILITY="home.osx"
fi

if [ -f ${HOME}/.bashrc.${FACILITY} ]; then . ${HOME}/.bashrc.${FACILITY}; fi
