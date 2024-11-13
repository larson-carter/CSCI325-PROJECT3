# CSCI325-PROJECT 3

## Clone this Repo

```
git clone https://github.com/larson-carter/CSCI325-PROJECT3 && cd CSCI325-PROJECT3
```

## Install Pre-Reqs

```
chmod +x install_dependencies.sh && ./install_dependencies.sh && chmod +x *.sh
```

## Setup Everything

```
./ufw_setup.sh && ./snort_setup.sh
```

## UFW Part

```
sudo ufw status verbose | tee 'LASTNAME'Project3UFW.txt
```

## Snort Part

```
sudo snort -v -c /etc/snort/snort.conf | tee 'LASTNAME'Project3SNORT.txt
```

## Ping

```
ping -c 4 turing.cs.olemiss.edu
```

## NMAP

```
sudo nmap -v -O turing.cs.olemiss.edu | tee 'LASTNAME'Project3NMAP.txt
```