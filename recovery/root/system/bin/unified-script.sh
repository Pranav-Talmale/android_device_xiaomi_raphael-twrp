#!/system/bin/sh
# set a couple of props, depending on device

load_raphael()
{
    resetprop "ro.product.name" "raphael"
    resetprop "ro.product.model" "Mi 9T Pro"
	resetprop "ro.product.device" "raphael"
}

load_raphaelin()
{
    resetprop "ro.product.name" "raphaelin"
    resetprop "ro.product.model" "Redmi K20 Pro"
	resetprop "ro.product.device" "raphaelin"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "INDIA")
        load_raphaelin;
        ;;
    *)
        load_raphael;
        ;;
esac

exit 0;

