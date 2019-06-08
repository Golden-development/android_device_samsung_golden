echo 'VENDOR PATCH OK'
patch -p1 --dry-run -s -f < device/samsung/golden/patches/vendor-lineage.patch 2> /dev/null > /dev/null || true
add_lunch_combo lineage_golden-eng
add_lunch_combo lineage_golden-userdebug
add_lunch_combo lineage_golden-user
