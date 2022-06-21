# Device tree for Redmi K20 Pro (codenamed _"raphael"_)

==================================
## Device specifications

| Device                  | Redmi K20 Pro                                                 |
| ----------------------: | :------------------------------------------------------------ |
| SoC                     | Qualcomm SDM855 Snapdragon 855                                |
| CPU                     | 1x2.84 GHz Kryo 485 + 3x2.4 GHz Kryo 485 + 4x1.8 GHz Kryo 485 |
| GPU                     | Adreno 640                                                    |
| Memory                  | 6GB / 8GB RAM (LPDDR4X)                                       |
| Shipped Android version | 9.0                                                           |
| Storage                 | 64GB / 128GB / 256GB UFS 2.1 flash storage                    |
| Battery                 | Non-removable Li-Po 4000 mAh                                  |
| Dimensions              | 74.3 mm x 156.7 mm x 8.8 mm                                   |
| Display                 |1080 x 2340 px (FHD+), 19.5:9 ratio, 6.39", Amoled Samsung     |
| Rear camera 1           | Sony IMX586 Exmor RS,f/1.75, 0.800 µm, 48Mpx                  |
| Rear camera 2           | 2Omnivision OV8856, f/2.4, 1.120 µm, 8 Mpx                    |
| Front camera            | 20 MP, f/2.2, 0.800 µm                                        |
| Audio | HiRes Audio, Qualcomm WCD9375 independent audio chip, Qualcomm TrueWireless Stereo Plus |
| Misc  | Phase detection with Dual Pixel,4K video 60fps, 79.4º angle lens, 6P lens, 1/2" sensor size,
|       |1,6 μm 4 in 1 pixel size (12MP), Second rear camera telephoto 5P lens, AF, FOV 49.6, 
|       |Third rear camera 13MP ultra wide angle 124º f/2.4 aperture, Third rear camera sensor Samsung S5K3L6 1.12μm 1/3" |

## Features 
**Works**

- Booting.
- **Decryption** (Android 12)
- ADB
- MTP
- OTG
- Vibration

## Device picture
![Xiaomi Redmi K20 Pro](https://camo.githubusercontent.com/a3c8df8a8a9d3c1f31ee082e779e7fd5545d2dc6cdd5defbe1e5a8f047e8fc3e/68747470733a2f2f69312e6d6966696c652e636e2f662f692f323031392f7265646d696b323070726f2f73656374696f6e32375f696d67332e6a70673f)

## Compile

Lunch command :
```
lunch twrp_raphael-eng && mka recoveryimage
```
