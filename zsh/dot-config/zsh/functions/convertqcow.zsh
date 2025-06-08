function convertqcow() {
    qemu-img convert -f vmdk -O qcow2 "$1" "$2".qcow2
}
