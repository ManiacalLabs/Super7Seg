echo "Buring Fuses..."
avrdude -Cavrdude.conf -v -patmega328p -cstk500v2 -Pusb -e -Ulock:w:0xFF:m -Uefuse:w:0xFD:m -Uhfuse:w:0xDA:m -Ulfuse:w:0xE2:m

echo "Flashing firmware..."
avrdude -Cavrdude.conf -v -patmega328p -cstk500v2 -Pusb -Uflash:w:..\Super7Seg_v1.hex:i -Ulock:w:0xCF:m

python test.py
