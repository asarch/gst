#!/bin/sh

# Get the source code
git clone https://github.com/OpenSmalltalk/opensmalltalk-vm

# Let's backup the data
tar vcf opensmalltalk-vm.tar opensmalltalk-vm/
gzip --verbose --best opensmalltalk-vm.tar

cd opensmalltalk-vm/

# Update the tree
bash scripts/updateSCCSVersions

# Compile source code
cd build.linux64x64/squeak.cog.spur/build
