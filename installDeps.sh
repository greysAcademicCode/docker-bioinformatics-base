#!/usr/bin/env bash
set -eu -o pipefail

# install bowtie2
pacman -S --noprogressbar --needed --noconfirm intel-tbb
su docker -c 'pacaur -S --noprogressbar --needed --noedit --noconfirm bowtie2'

# install udr
su docker -c 'pacaur -S --noprogressbar --needed --noedit --noconfirm udr'
