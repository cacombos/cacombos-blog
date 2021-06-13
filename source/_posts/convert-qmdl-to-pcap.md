---
layout: post
title: Convert QMDL or DLF file to PCAP to read with Wireshark
date:  2021-06-13
author: olkitu
tags:
- Qualcomm
---

The Qualcomm log files qmdl, qmdl2 and dlf can be converted to pcap file to read with free [Wireshark](https://www.wireshark.org/) program. This helps you to read mobile network signaling without any special tool from Qualcomm. This instruction doesn't work with new qdss format used in 2021 and newer Qualcomm devices.

<!-- more -->

### Scat

This is program to convert qmdl, qmdl2 and dlf file to pcap file. This program requires python to be installed to your local computer.

#### Install to Debian/Ubuntu

Install some packages from package manager and clone scat from Github

<figure class="highlight">
```
sudo apt-get install git python3-usb python3-serial
git clone https://github.com/fgsect/scat
cd scat
```
</figure>

#### Install to MacOS

Run these commands in [MacOS terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac).

<figure class="highlight">
```shell
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
python3 -m pip install pysub
python3 -m pip install pyserial
python3 -m pip install libusb
git clone https://github.com/fgsect/scat
cd scat
```
</figure>

#### Install to Windows

Install Python from [Windows Store](https://www.microsoft.com/en-us/p/python-38/9mssztt1n39l#activetab=pivot:overviewtab) and [Git](https://git-scm.com/)

Open PowerShell with Administrator and install some python packages and clone repository.

<figure class="highlight">
```batch
cd C:
pip install pysub
pip install pyserial
pip3 install pyusb
pip3 install pyserial
git clone https://github.com/HandyMenny/scat
cd scat
```
</figure>

### Run Scat to convert qmdl to pcap

Run command below to convert log.qmdl to log.pcap file. Then you can open it via Wireshark.

<figure class="highlight">
```
python ./scat.py -t qc -d log.qmdl -F log.pcap
```
</figure>

Or

<figure class="highlight">
```
python3 ./scat.py -t qc -d log.qmdl -F log.pcap
```
</figure>
