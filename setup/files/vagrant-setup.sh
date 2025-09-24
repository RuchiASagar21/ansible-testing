#! /bin/sh

dnf install -y nano git
dnf install python3-pip
python3 -m pip install --user pipx
python3 -m pipx ensurepath
pipx install --include-deps ansible

chmod ugo+x /home/vagrant/.bash*
