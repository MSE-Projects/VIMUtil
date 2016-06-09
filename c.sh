set -x

if [ -d classes ]; then
    rm -rf classes
fi
mkdir classes
javac -d classes -cp vim25.jar src/com/vmware/helper/VimUtil.java
