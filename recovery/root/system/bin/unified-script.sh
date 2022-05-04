#!/system/bin/sh
# set a couple of props, depending on device

load_raphael()
{
    resetprop "ro.product.name" "raphael"
    resetprop "ro.product.model" "Mi 9T Pro"
}

load_raphaelin()
{
    resetprop "ro.product.name" "raphaelin"
    resetprop "ro.product.model" "Redmi K20 Pro"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    *)
        load_raphael;
        ;;
    "INDIA")
        load_raphaelin;
        ;;
esac

exit 0;

