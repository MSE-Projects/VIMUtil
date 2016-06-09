set -x

# retrieve guest vm ipaddress property
# java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -vminfo test1 guest.ipAddress

# retrieve guest vm hostname property
# java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -vminfo test1 guest.hostName

# list help
# java -cp vim25.jar;classes com.vmware.helper.VimUtil -help

# Creating a new vm
# java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -createVM

# import a ovf file to a target host
#java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -importVM 10.112.79.206 "/tmp/ovfdir/VMware Workbench 2.1.0.631880.ovf" kannan-test1

#export vm to a folder
#java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -exportVM "kannan-test" "/tmp"

#Install vmware tools on a virtual machine
#java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -installVMTools "kannan-test"

#Deleting a virtual machine
#java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -deleteVM kannan-test

#Powering on a virtual machine
#java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -powerOnVM "kannan-test"

#Powering off a virtual machine
#java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -powerOffVM kannan-test

#Listing All Hosts to VM mapping
#java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -listHost-VMs

#Listing all VMs on a given host
#java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -listVMs 10.112.80.89

#Listing all hosts
#java -DlogEnabled=true -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -listHosts

#Listing all ResourcePools to Virtual Machines mapping
java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -listRP-VMs

#Listing all ResourcePools
#java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -listResourcePools

#Listing all VMs, Hosts and ResourcePools
#java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.76.179/sdk/vimService -u root -p vmware -listVMs -listHosts -listResourcePools


