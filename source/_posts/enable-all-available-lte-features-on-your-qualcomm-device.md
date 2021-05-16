---
layout: post
title: Enable all available LTE-features on your Qualcomm device
date: 2020-11-12
author: olkitu
category: 'Qualcomm modem customization'
tags:
- 4G
- Qualcomm
- SDX52
- SDX55
---

This instruction helps you to enable all LTE-features on your Qualcomm devices like 1024QAM DL and 256QAM UL. Some features only supported only with SDX52, SDX55 and newer modems.

<!-- more -->

<span style="color:red">Before continuing, I remind you these changes could end your device warranty.</span> Be careful because this can make your device unusable.

### Requirements

* Make sure your device have X55 Modem Baseband version HI2.0 or newer. In Android you can check this in Settings -> About -> Status and find Baseband version.
* Qualcomm diag driver installed and access to QPST/EFS.
* Hex File Editor (eg. [HxD Editor](https://mh-nexus.de/en/)).

This instruction is tested with OnePlus 8 (IN2013) and 8 Pro (IN2023). To access QPST with OnePlus 8, follow instructions [here](https://mt-tech.fi/en/modify-oneplus-7-pro-5g-8-and-8-pro-nr-lte-a-band-combos/).

### Steps

Open EFS Explorer and navigate to following folder: `/nv/item_files/modem/lte/rrc/efs`

<img class="img-fluid" src="/images/2020-11-12-enable-all-available-lte-features-on-your-qualcomm-device/photo_2020-11-12_18-54-17.jpg">

In this folder, search for and backup lte_feature_disable and/or lte_feature_disable_Subscription01 to your computer and afterwards delete them from your phone EFS filesystem. If these files do not exist, find lte_feature_enable and/or lte_feature_enable_Subscription01 and copy these (or one if only one exists) files to your computer. Modify lte_feature_enable(_Subscription01) files as needed.

Then find lte_feature_enable and/or lte_feature_enable_Subscription01 and copy these one or both files to your computer. Modify these files.

For Qualcomm SDX52 and SDX55 modems, we have already [modified file](https://mt-tech.fi/wp-content/uploads/2020/11/X52_X55_lte_feature_enable.zip). Download it and replace current file with this file or modify it manually.

<img class="img-fluid" src="/images/2020-11-12-enable-all-available-lte-features-on-your-qualcomm-device/photo_2020-11-12_19-11-42-1024x588.jpg">

Change all values to 11111111 (FF) to enable all LTE-features what chipset support. Here is explanations of all [Feature bits](https://mt-tech.fi/wp-content/uploads/2020/11/Feature_Bits.xlsx).

<img class="img-fluid" src="/images/2020-11-12-enable-all-available-lte-features-on-your-qualcomm-device/photo_2020-11-12_19-03-29-1024x344.jpg">

Copy file back to phone as ItemFile (**don´t drag and drop**).

Right click on EFS Explorer and select **Copy Item File from PC**.

<img class="img-fluid" src="/images/2020-11-12-enable-all-available-lte-features-on-your-qualcomm-device/photo_2020-11-12_20-04-00.jpg">

Click Browse and find then file on your computer and then click OK. Wait the confirmation message of item transfer from EFS Explorer.

You can check enabled features in [UE Capability Information](https://mt-tech.fi/en/how-to-get-4g-supported-ca-combinations-from-your-android-phone/) message. To confirm you have 256QAM UL enabled, find “ul-256QAM-r14” in UE Capability Information message.

