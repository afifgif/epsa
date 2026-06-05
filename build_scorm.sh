#!/bin/bash
# Script untuk membungkus prototaip EPSA SCORM 1.2
echo "================================================="
echo "Membungkus Pakej SCORM 1.2 Teknologi Makanan..."
echo "================================================="

# Buang fail ZIP lama jika ada
if [ -f epsa_scorm_pack.zip ]; then
    rm epsa_scorm_pack.zip
fi

# Bungkus fail index.html dan imsmanifest.xml
zip -r epsa_scorm_pack.zip index.html imsmanifest.xml

echo "-------------------------------------------------"
if [ $? -eq 0 ]; then
    echo "BERJAYA! Fail pakej dibina di:"
    echo "  epsa_scorm_pack.zip"
    echo "-------------------------------------------------"
    echo "Sila muat naik fail ini ke LMS kerajaan atau SCORM Cloud untuk penilaian."
else
    echo "RALAT: Gagal membungkus fail!"
    echo "-------------------------------------------------"
fi
