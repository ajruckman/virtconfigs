#!/bin/bash

virsh pool-define    pool-pool0.xml
virsh pool-autostart pool0

virsh net-define    net-privnet0.xml
virsh net-autostart privnet0

virsh net-define    net-brnet0.xml
virsh net-autostart brnet0

virsh pool-start pool0
virsh net-start  privnet0
virsh net-start  brnet0
