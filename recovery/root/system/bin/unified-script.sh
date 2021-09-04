#!/system/bin/sh
# set a couple of props, depending on device

load_vayu()
{
    resetprop "ro.product.name" "vayu"
    resetprop "ro.product.model" "Poco X3 Pro NFC (M2102J20SG)"
}

load_bhima()
{
    resetprop "ro.product.name" "bhima"
    resetprop "ro.product.model" "Poco X3 Pro (M2102J20SI)"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_vayu;
        ;;
    "INDIA")
        load_bhima;
        ;;
    *)
        load_vayu;
        ;;
esac

exit 0;

