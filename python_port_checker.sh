#!/usr/bin/python3
import socket

ip = input("Enter ip\n")
port = input("Enter port number\n")
port = int(port)

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
if s.connect_ex((ip,port)):
	print ("Port " ,port, " is closed")
else:
	print ("open")
