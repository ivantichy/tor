#!/bin/bash

cp /etc/tor/torrc /etc/tor/torrc.bak

sed -i 's/^[# ]*DataDirectory.*/DataDirectory \/tmp\/tor\//' /etc/tor/torrc
sed -i 's/^#SocksPort.*9100.*/SocksPort 0.0.0.0:6001/' /etc/tor/torrc
sed -i 's/^#Log notice file/Log notice file/' /etc/tor/torrc
sed -i 's/^#RunAsDaemon.*/RunAsDaemon 0/' /etc/tor/torrc
sed -i 's/^#ORPort 9001/ORPort 6000/' /etc/tor/torrc
sed -i 's/^#Nickname.*/Nickname WWW.IVANTICHY.CZ/' /etc/tor/torrc
#sed -i 's/^#RelayBandwidthRate/RelayBandwidthRate/' /etc/tor/torrc
#sed -i 's/^#RelayBandwidthBurst/RelayBandwidthBurst/' /etc/tor/torrc
sed -i 's/^#ExitPolicy reject/ExitPolicy reject/' /etc/tor/torrc

echo test
