#!/bin/bash
echo "💡 Networking Example"
ip a | grep inet
ping -c 2 8.8.8.8
