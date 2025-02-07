# Boot Animation

du_device := $(patsubst %f,%,$(subst du_,,$(TARGET_PRODUCT)))

ifneq ($(filter s2 jd2019 kunlun2 begonia raphael lavender payton mido miatoll excalibur gram whyred ginkgo beryllium violet X00T surya sakura phoenix RMX1921 CPH1859 RMX2001 juice apollo,$(du_device)),) || ($(TARGET_BOOT_ANIMATION_RES),1080)
scr_resolution := 1080
endif

ifneq ($(filter ysl laurel_sprout,$(du_device)),) || ($(TARGET_BOOT_ANIMATION_RES),720)
scr_resolution := 720
endif

ifneq ($(wildcard vendor/themes/bootanimation/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/themes/bootanimation/$(scr_resolution).zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
