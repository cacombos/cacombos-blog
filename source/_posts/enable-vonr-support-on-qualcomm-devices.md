---
layout: post
title: Enable VoNR support on Qualcomm devices
date: 2021-03-28
author: olkitu
category: 'Qualcomm modem customization'
tags:
- 5G
- Qualcomm
---

This instruction helps you to enable VoNR (Voice over 5G New Radio – Phone calls over 5G-networks) support on your Qualcomm device. By default this is disabled To use VoNR your network must support 5G SA (Standalone).

<!-- more -->

### Requirements

* Qualcomm diag driver installed and access to QPST/EFS
* May require rooted device

### Let's start

[Download ZIP package](https://mt-tech.fi/wp-content/uploads/2021/03/nr5g_full_voice_support.zip) and extract to your computer below. It include nvitems to enable VoNR.

Then open EFS Explorer on your computer and navigate to /nv/item_files/modem/mmode.

Right click to directory and use Copy item file from PC. **Don’t drag and drop!**

<img class="img-fluid" src="/images/2021-03-28-enable-vonr-support-on-qualcomm-devices/image-2.png">

Wait a moment while files copied to modem. This will take some time.

<img class="img-fluid" src="/images/2021-03-28-enable-vonr-support-on-qualcomm-devices/image-3.png">

After copied, reboot your phone. You can check VoNR support in UE Capability Information eutra and nr message. To see VoNR support you must have SA enabled on your phone. Here instruction to enable [5G SA on OnePlus 8/8Pro](https://mt-tech.fi/en/modify-oneplus-7-pro-5g-8-and-8-pro-nr-lte-a-band-combos/#Enable_5G_SA_Standalone_in_Android_11).

<img class="img-fluid" src="/images/2021-03-28-enable-vonr-support-on-qualcomm-devices/image-4.png">