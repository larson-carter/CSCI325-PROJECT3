# CSCI325-PROJECT 3

## Clone this Repo

```
git clone https://github.com/larson-carter/CSCI325-PROJECT3 && cd CSCI325-PROJECT3
```

## Install Pre-Reqs

`chmod +x install_dependencies.sh && ./install_dependencies.sh`

## Make all shell scripts executable

`chmod +x *.sh`


## UFW Part

`./ufw_setup.sh`

`sudo ufw status verbose | tee 'LASTNAME'Project3UFW.txt`

## Snort Part

`./snort_setup.sh`

`sudo snort -v -c /etc/snort/snort.conf | tee 'LASTNAME'Project3SNORT.txt`

## Ping

`ping -c 4 turing.cs.olemiss.edu`

## NMAP

`sudo nmap -v -O turing.cs.olemiss.edu | tee 'LASTNAME'Project3NMAP.txt`