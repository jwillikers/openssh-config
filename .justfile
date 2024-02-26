default: install

alias f := format
alias fmt := format

format:
    just --fmt --unstable

install:
    sudo cp openssh-config/ssh/sshd_config.d/*.conf /etc/ssh/sshd_config.d/
    sudo cp openssh-config/ssh/ssh_config.d/*.conf /etc/ssh/ssh_config.d/
    sudo systemctl restart sshd
