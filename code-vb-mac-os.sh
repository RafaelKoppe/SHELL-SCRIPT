#!/bin/bash
# Script pra fazer funcinar o Mac OS X Catalina na Máquina Virtual no Linux

VBoxManage modifyvm "macOS Catalina" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata "macOS Catalina" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "macOS Catalina" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "macOS Catalina" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "macOS Catalina" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "macOS Catalina" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
