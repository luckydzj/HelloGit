#!/bin/bash
u="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
for x in `seq 20`
do
pass=""
for i in `seq 5`
do
num=$[RANDOM%62]
tmp=${u:num:1}
pass=${pass}$tmp
done
useradd user$x
echo "user$x已创建"
echo user$pass | passwd --stdin user$x &>/dev/null
echo 用户名user$x密码user$pass   >>/root/userpass.txt
done

