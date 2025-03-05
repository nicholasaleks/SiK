rm -rf dst obj
make clean
make BOARDS="hm_trp" install
cd tools
python3.11 uploader.py --port /dev/ttyUSB0 ../dst/radio\~hm_trp.ihx
cd ..
