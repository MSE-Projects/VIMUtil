@echo off

rem list help
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -vminfo test1 guest.ipAddress


rem retrieve guest vm ipaddress property
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -vminfo test1 guest.ipAddress

rem retrieve guest vm hostname property
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -vminfo test1 guest.hostName

rem list help
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -help

rem export vm to a folder
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -exportVM "kannan-test" "e:\cloudmunch\sample\ovfdir"

rem Creating a new vm
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -createVM

rem import a ovf file to a target host
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -importVM 10.112.79.206 "e:\cloudmunch\ovfdir\VMware Workbench 2.1.0.631880\VMware Workbench 2.1.0.631880.ovf" kannan-test

rem Install vmware tools on a virtual machine
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -installVMTools "kannan-test"

rem Deleting a virtual machine
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -deleteVM test1

rem Powering on a virtual machine
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -powerOnVM "kannan-test"

rem Powering off a virtual machine
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -powerOffVM kannan-test

rem Listing All Hosts to VM mapping
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -listHost-VMs

rem Listing all VMs on a given host
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -listVMs 10.112.80.89

rem Listing all hosts
rem java -DlogEnabled=true -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -listHosts

rem Listing all ResourcePools to Virtual Machines mapping
java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -listRP-VMs

rem Listing all ResourcePools
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -listResourcePools

rem Listing all VMs, Hosts and ResourcePools
rem java -cp vim25.jar;classes com.vmware.helper.VimUtil -url https://10.112.188.21/sdk/vimService -u root -p ca$hc0w -listVMs -listHosts -listResourcePools


