#informacion de un device
#dar informacion de ese device
#si no esta avisar

#Tarea
#udev
# enumerador dinamico de puertos
# migrar este script a udev

SD="$1"
SDPATH="/sys/devices/pci0000:00/0000:00:1f.2/ata3/host2/target2:0:0/2:0:0:0/block/sda"

# Verify if the device exist
if [ ! -e "/dev/$SD" ] ; then
    echo "The device doesnt exist"
    exit 0
fi

# Verify if the directory ~hardcoded~ exist
if [ ! -d "$SDPATH" ] ; then
    echo "The directory $SDPATH doesnt exist"
    exit 0
fi

# Verify if the partition file exist
if [ ! -e "$SDPATH/$SD/partition" ] ; then
    echo "The file $SDPATH/$SD/partition doesnt exist"
    exit 0
fi

# If the file partition exist we assume that stat and size
# also exist
echo "Partition Number: "
echo `cat $SDPATH/$SD/partition`

echo "Stat"
echo `cat $SDPATH/$SD/stat`

echo "Size"
echo `cat $SDPATH/$SD/size`

sonojacker github
    diplomado_embed
