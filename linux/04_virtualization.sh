#!/bin/bash
echo "💡 Virtualization Check"
grep -E --color 'vmx|svm' /proc/cpuinfo || echo "No virtualization flags found"
