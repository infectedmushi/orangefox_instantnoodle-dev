#!/system/bin/sh
# automatically set device props for unified tree shared-hardware models/variants


load_op8()
{
    resetprop "ro.build.product" "oneplus8"
    resetprop "ro.display.series" "oneplus 8"
    resetprop "ro.product.device" "oneplus8"
    resetprop "ro.product.model" "oneplus 8"
    resetprop "ro.product.name" "oneplus8"
    resetprop "ro.product.odm.device" "oneplus8"
    resetprop "ro.product.odm.model" "oneplus 8"
    resetprop "ro.product.odm.name" "oneplus8"
    resetprop "ro.product.product.device" "oneplus8"
    resetprop "ro.product.product.model" "oneplus 8"
    resetprop "ro.product.product.name" "oneplus8"
    resetprop "ro.product.system.device" "oneplus8"
    resetprop "ro.product.system_ext.device" "oneplus8"
    resetprop "ro.product.system_ext.model" "oneplus 8"
    resetprop "ro.product.system_ext.name" "oneplus8"
    resetprop "ro.product.vendor.device" "oneplus8"
    resetprop "ro.product.vendor.model" "oneplus 8"
    resetprop "ro.product.vendor.name" "oneplus8"
    resetprop "ro.product.system.brand" "oneplus"
    resetprop "ro.product.system.manufacturer" "oneplus"
    resetprop "ro.product.system.model" "IN2025"
    resetprop "ro.product.system.name" "oneplus8"
}

load_op8t()
{
    resetprop "ro.build.product" "oneplus8T"
    resetprop "ro.display.series" "oneplus 8T"
    resetprop "ro.product.device" "oneplus8T"
    resetprop "ro.product.model" "oneplus 8T"
    resetprop "ro.product.name" "oneplus8T"
    resetprop "ro.product.odm.device" "oneplus8T"
    resetprop "ro.product.odm.model" "oneplus 8T"
    resetprop "ro.product.odm.name" "oneplus8T"
    resetprop "ro.product.product.device" "oneplus8T"
    resetprop "ro.product.product.model" "oneplus 8T"
    resetprop "ro.product.product.name" "oneplus8T"
    resetprop "ro.product.system.device" "oneplus8T"
    resetprop "ro.product.system.model" "oneplus 8T"
    resetprop "ro.product.system.name" "oneplus8T"
    resetprop "ro.product.system_ext.device" "oneplus8T"
    resetprop "ro.product.system_ext.model" "oneplus 8T"
    resetprop "ro.product.system_ext.name" "oneplus8T"
    resetprop "ro.product.vendor.device" "oneplus8T"
    resetprop "ro.product.vendor.model" "oneplus 8T"
    resetprop "ro.product.vendor.name" "oneplus8T"
}

load_op8pro()
{
    resetprop "ro.build.product" "oneplus8Pro"
    resetprop "ro.display.series" "oneplus 8Pro"
    resetprop "ro.product.device" "oneplus8PRO"
    resetprop "ro.product.model" "oneplus 8 Pro"
    resetprop "ro.product.name" "oneplus8Pro_IND"
    resetprop "ro.product.odm.device" "oneplus8Pro"
    resetprop "ro.product.odm.model" "oneplus 8Pro"
    resetprop "ro.product.odm.name" "oneplus8Pro_IND"
    resetprop "ro.product.product.device" "oneplus8Pro"
    resetprop "ro.product.product.model" "oneplus 8Pro"
    resetprop "ro.product.product.name" "oneplus8Pro_IND"
    resetprop "ro.product.system.device" "oneplus8Pro"
    resetprop "ro.product.system_ext.device" "oneplus8Pro"
    resetprop "ro.product.system_ext.model" "oneplus 8Pro"
    resetprop "ro.product.system_ext.name" "oneplus8Pro_IND"
    resetprop "ro.product.vendor.device" "oneplus8Pro"
    resetprop "ro.product.vendor.model" "oneplus 8Pro"
    resetprop "ro.product.vendor.name" "oneplus8Pro_IND"
    resetprop "ro.product.system.brand" "oneplus"
    resetprop "ro.product.system.manufacturer" "oneplus"
    resetprop "ro.product.system.model" "IN2025"
    resetprop "ro.product.system.name" "oneplus8Pro"
}

load_op9r()
{
    resetprop "ro.build.product" "oneplus9R"
    resetprop "ro.display.series" "oneplus 9R"
    resetprop "ro.product.device" "oneplus9R"
    resetprop "ro.product.model" "oneplus 9R"
    resetprop "ro.product.name" "oneplus9R_IND"
    resetprop "ro.product.odm.device" "oneplus9R"
    resetprop "ro.product.odm.model" "oneplus 9R"
    resetprop "ro.product.odm.name" "oneplus9R_IND"
    resetprop "ro.product.product.device" "oneplus9R"
    resetprop "ro.product.product.model" "oneplus 9R"
    resetprop "ro.product.product.name" "oneplus9R_IND"
    resetprop "ro.product.system.device" "oneplus9R"
    resetprop "ro.product.system.model" "oneplus 9R"
    resetprop "ro.product.system.name" "oneplus9R_IND"
    resetprop "ro.product.system_ext.device" "oneplus9R"
    resetprop "ro.product.system_ext.model" "oneplus 9R"
    resetprop "ro.product.system_ext.name" "oneplus9R_IND"
    resetprop "ro.product.vendor.device" "oneplus9R"
    resetprop "ro.product.vendor.model" "oneplus 9R"
    resetprop "ro.product.vendor.name" "oneplus9R_IND"
}

project=$(getprop ro.boot.prj_version)
echo "Running unified/variant script with $project..." >> /tmp/recovery.log

case $project in
    20828)
        load_op9r
        ;;
	19821)
	    load_op8
		;;
	19811)
        load_op8pro
        ;;		
    *)
        load_op8t
        ;;
esac

exit 0
