# Actual Shipping API for FBEv1
  PRODUCT_SHIPPING_API_LEVEL := 28

# fscrypt policy
   TW_USE_FSCRYPT_POLICY := 1

# Default FS type
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# Prebuilt Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/FBEv1/Image.gz-dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/FBEv1/dtbo.img

# Fstab and flags
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/fstab/recovery-fbev1.fstab
PRODUCT_COPY_FILES += $(DEVICE_PATH)/fstab/evox.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/evox.fstab
PRODUCT_COPY_FILES += $(DEVICE_PATH)/fstab/twrp-fbev1.flags:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/twrp.flags