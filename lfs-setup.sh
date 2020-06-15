#!/bin/bash
echo "Starting ssh Daemon"
sleep 1
systemctl start sshd
systemctl enable sshd

echo "Setting password for root"
sleep 1
passwd root

sleep 1
pacman -Sy
echo "Fetching all the needed packages "
pacman -S binutils bison gcc m4 make patch perl
sleep 1


echo "Thanks for using me"
