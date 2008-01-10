#
# Install the packages locally on the Windows machine
#
# Run this on the Windows machine in a mingw Shell
#

PACKAGES="gnustep-make gnustep-base gnustep-gui gustep-back"

cd packages
for p in $PACKAGES; do
  cd $p
  tar -cf - GNUstep | (cd /; tar -xvf -)
  cd ..
done
