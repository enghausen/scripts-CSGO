#!/bin/bash
# Get low var (0.000-0.001) on Debian 10. Testet on Intel Xeon E3-1246V3 and Intel Core i7-4770.
# This will install the Real-Time kernel and tuned with the latency-performance profile.
sudo apt-get update
sudo apt-get install tuned
sudo tuned-adm latency-performance
sudo apt-get install linux-image-rt-amd64
