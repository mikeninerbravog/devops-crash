#!/bin/bash
echo "💡 POSIX Tools Check"
command -v awk && awk --version
command -v sed && sed --version
command -v grep && grep --version
