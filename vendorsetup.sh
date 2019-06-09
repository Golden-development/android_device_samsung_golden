echo 'Patching...'
PRE="$PWD"
DEVICE_PATCHES='device/samsung/golden/patches'
for f in $(ls "$DEVICE_PATCHES")
do
 NEXT_PATH=$(printf "$f" | sed 's/.patch//' | sed 's/-/\//g') # process next path from patch filename
 echo 'Applying "'"$f"'" to '"$NEXT_PATH"'...'
 cd "$NEXT_PATH"
 git apply "$PRE"'/'"$DEVICE_PATCHES"'/'"$f" 2> /dev/null > /dev/null || true
 cd "$PRE"
done
echo 'Patch completed.'
add_lunch_combo lineage_golden-eng
add_lunch_combo lineage_golden-userdebug
add_lunch_combo lineage_golden-user
