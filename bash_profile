# Filename: ${HOME}/.bash_profile
# Soft-linked from /mnt/shared/documents/dotFiles/bash_profile

if [ -f ${HOME}/.bash_aliases ]; then . ${HOME}/.bash_aliases; fi

# Get full hostname, including domain (i.e., Fully Qualified Domain Name)
export FQDN=$( hostname -f )

# Get computing facility name (e.g. OLCF, ACCRE)
if   [[ ${FQDN} = *"olcf"*         ]]; then export FACILITY="olcf"; export hn=$( echo ${FQDN} | cut -d "." -f 2-2 )
elif [[ ${FQDN} = "gw"*            ]]; then export FACILITY="accre"
elif [[ ${FQDN} = *"utk"*          ]]; then export FACILITY="nics"
elif [[ ${FQDN} = "Samuels"*       ]]; then export FACILITY="osx"
elif [[ ${FQDN} = "fedora"         ]]; then export FACILITY="fedora"
elif [[ ${FQDN} = "killerkadoogan" ]]; then export FACILITY="archlinux"
else                                        export FACILITY="osx"
fi

if [ -f ${HOME}/.bashrc.${FACILITY} ]; then . ${HOME}/.bashrc.${FACILITY}; fi
