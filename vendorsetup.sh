LOCAL_DIR="$PWD"
PATCH_DIR="$LOCAL_DIR/device/xiaomi/begonia/patch"

TARGET_DIRS=("frameworks/av")

for dir in "${TARGET_DIRS[@]}"; do
  cd $LOCAL_DIR/$dir
  for file in `find $PATCH_DIR/$dir -name \*.patch | sort`; do
    git am $file
  done
done
cd $LOCAL_DIR

rm -d -r hardware/qcom/sm8150/thermal