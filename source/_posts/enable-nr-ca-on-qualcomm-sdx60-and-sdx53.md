---
layout: post
title: Enable NR-CA on Qualcomm SDX60 and SDX53
date: 2021-04-13
author: olkitu
category: 'Qualcomm modem customization'
tags:
- 5G
- Qualcomm
- SDX60
- SDX53
---

By default almost every Qualcomm SDX60 and SDX53 has NR-CA (NR Carrier Aggregation - aggregate two or more 5G NR bands) disabled by default in modem firmware.

NR-CA works with NR-NSA and NR-SA networks depends your device support. You can check NR-CA combination support on [cacombos.com](https://cacombos.com) site. On cacombos.com make sure you check "Hardware" combolist to see hardware supported combinations. Hardware defined combinations cannot be changed after compiled from source. 

<!-- more -->

## Requirements

* QPST and access to EFS. This may require root.
* If device have Carrier Policy, make sure it have multiple NR bands enabled NSA/SA. 
* To use NR-CA with 5G SA, you have to enable SA first. 

This instruction is tested with OnePlus 9 Pro (Global and US) and Xiaomi Mi 11 Lite 5G.

## Let's start

Download [ZIP package](https://mt-tech.fi/wp-content/uploads/2021/04/cap_control_nrca.zip) and extract it to your computer below. It includes nvitems to enable NR-CA.

Then open EFS Explorer on your computer and navigate to `/nv/item_files/modem/nr5g/RRC`

Right click on empty space and use **Copy item files from PC** to copy extracted nvitems from ZIP to modem. Don’t drag and drop because this doesn’t work.

<img alt="Copy item files from PC" class="img-fluid" src="/images/2021-04-13-enable-nr-ca-on-qualcomm-sdx60-and-sdx53/image-1024x633.png"> <br />
<img class="img-fluid" src="/images/2021-04-13-enable-nr-ca-on-qualcomm-sdx60-and-sdx53/image-1.png">

After nvitem copy, refresh and it should look like this.

Reboot your phone and test your device on 5G tower request multiple 5G bands in UE Capability Enquiry (rat type NR)

<img alt="UE Capability Enquiry -message" class="img-fluid" src="/images/2021-04-13-enable-nr-ca-on-qualcomm-sdx60-and-sdx53/Ey36T3WWgAAMOx6.png">

<img alt="UE Capability Information -message" class="img-fluid" src="/images/2021-04-13-enable-nr-ca-on-qualcomm-sdx60-and-sdx53/image-3.png">

Source and more technical details: [band.radio](https://band.radio/nr-ca)