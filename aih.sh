#      ___      .______        ______  __    __      __       _______..__   __. .___________.    __    __       ___      .______       _______  
#     /   \     |   _  \      /      ||  |  |  |    |  |     /       ||  \ |  | |           |   |  |  |  |     /   \     |   _  \     |       \ 
#    /  ^  \    |  |_)  |    |  ,----'|  |__|  |    |  |    |   (----`|   \|  | `---|  |----`   |  |__|  |    /  ^  \    |  |_)  |    |  .--.  |
#   /  /_\  \   |      /     |  |     |   __   |    |  |     \   \    |  . `  |     |  |        |   __   |   /  /_\  \   |      /     |  |  |  |
#  /  _____  \  |  |\  \----.|  `----.|  |  |  |    |  | .----)   |   |  |\   |     |  |        |  |  |  |  /  _____  \  |  |\  \----.|  '--'  |
# /__/     \__\ | _| `._____| \______||__|  |__|    |__| |_______/    |__| \__|     |__|        |__|  |__| /__/     \__\ | _| `._____||_______/ 
#                                                                                                                                             

# MAIN INSTALLER SCRIPT

echo "ARCH ISN'T HARD Arch Linux installer v1.0-x86_64-efi"
echo "------------------------------------"
echo "PARTITION SETUP"
echo "------------------------------------"
echo "Do you want a swap partition (These can be used to archive RAM data that isn't being used.) (Y/n):"
read a
echo "What drive would you like to install to?"
echo "Available drives:"
lsblk -e7 -ndo NAME,SIZE
read b
# check drive name
if lsblk -e7 -ndo  NAME /dev/$b | grep -q $b; then
   echo "Drive is valid!"
fi