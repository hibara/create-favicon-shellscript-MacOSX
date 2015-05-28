#!/bin/sh
#このシェルスクリプトを実行した場所をカレントディレクトリにする（お約束）
cd `dirname $0`

# 出力ディレクトリの生成
outdir="favicon"
mkdir -p $outdir

if [ -e "icon_512x512.png" ]; then
  BASE_FILE="icon_512x512.png"	#すべてのアイコンのベースサイズ
else
  if [ -e "icon_256x256.png" ]; then
    BASE_FILE="icon_256x256.png"	#すべてのアイコンのベースサイズ
  else
    echo "素になる大きなサイズのファイルが見つかりません。\n処理を中止します。"
    exit
  fi
fi

# ----------------------------------------------------------------------
# favicon.ico の作成
# ----------------------------------------------------------------------

if [ -e "favicon-64.png" ]; then
  echo "favicon-64.png はすでに存在しています。"
else
  sips -Z 64 ${BASE_FILE} --out favicon-64.png
fi

if [ -e "favicon-48.png" ]; then
  echo "favicon-48.png はすでに存在しています。"
else
  sips -Z 48 ${BASE_FILE} --out favicon-48.png
fi

if [ -e "favicon-32.png" ]; then
  echo "favicon-32.png はすでに存在しています。"
else
  sips -Z 32 ${BASE_FILE} --out favicon-32.png
fi

if [ -e "favicon-24.png" ]; then 
  echo "favicon-24.png はすでに存在しています。"
else
  sips -Z 24 ${BASE_FILE} --out favicon-24.png
fi

if [ -e "favicon-16.png" ]; then
  echo "favicon-16.png はすでに存在しています。"
else
  sips -Z 16 ${BASE_FILE} --out favicon-16.png
fi

# favicon.ico の作成
png2ico favicon/favicon.ico favicon-16.png favicon-24.png favicon-32.png favicon-48.png favicon-64.png


# ----------------------------------------------------------------------
# favicon.png の作成
# ----------------------------------------------------------------------

if [ -e "ifavicon-152.png" ]; then
  echo "favicon-152.png はすでに存在しています。処理をスキップします。"
else
  sips -Z 152 ${BASE_FILE} --out favicon-152.png
fi

cp -vf "favicon-152.png" "${outdir}/favicon-152.png"

# 32x32
if [ -e "ifavicon-32.png" ]; then
  echo "favicon-32.png はすでに存在しています。処理をスキップします。"
else
  sips -Z 32 ${BASE_FILE} --out favicon-32.png
fi

cp -vf "favicon-32.png" "${outdir}/favicon-32.png"

# 57x57
if [ -e "ifavicon-57.png" ]; then
    echo "favicon-57.png はすでに存在しています。処理をスキップします。"
else
    sips -Z 57 ${BASE_FILE} --out favicon-57.png
fi

cp -vf "favicon-57.png" "${outdir}/favicon-57.png"

# 72x72
if [ -e "ifavicon-72.png" ]; then
    echo "favicon-72.png はすでに存在しています。処理をスキップします。"
else
    sips -Z 72 ${BASE_FILE} --out favicon-72.png
fi

cp -vf "favicon-72.png" "${outdir}/favicon-72.png"

# 96x96
if [ -e "ifavicon-96.png" ]; then
    echo "favicon-96.png はすでに存在しています。処理をスキップします。"
else
    sips -Z 96 ${BASE_FILE} --out favicon-96.png
fi

cp -vf "favicon-96.png" "${outdir}/favicon-96.png"

# 120x120
if [ -e "ifavicon-120.png" ]; then
    echo "favicon-120.png はすでに存在しています。処理をスキップします。"
else
    sips -Z 120 ${BASE_FILE} --out favicon-120.png
fi

cp -vf "favicon-120.png" "${outdir}/favicon-120.png"

# 128x128
if [ -e "ifavicon-128.png" ]; then
    echo "favicon-128.png はすでに存在しています。処理をスキップします。"
else
    sips -Z 128 ${BASE_FILE} --out favicon-128.png
fi

cp -vf "favicon-128.png" "${outdir}/favicon-128.png"

# 144x144
if [ -e "ifavicon-144.png" ]; then
    echo "favicon-144.png はすでに存在しています。処理をスキップします。"
else
    sips -Z 144 ${BASE_FILE} --out favicon-144.png
fi

cp -vf "favicon-144.png" "${outdir}/favicon-144.png"

# 152x152
if [ -e "ifavicon-152.png" ]; then
    echo "favicon-152.png はすでに存在しています。処理をスキップします。"
else
    sips -Z 152 ${BASE_FILE} --out favicon-152.png
fi

cp -vf "favicon-152.png" "${outdir}/favicon-152.png"

# 195x195
if [ -e "ifavicon-195.png" ]; then
    echo "favicon-195.png はすでに存在しています。処理をスキップします。"
else
    sips -Z 195 ${BASE_FILE} --out favicon-195.png
fi

cp -vf "favicon-195.png" "${outdir}/favicon-195.png"



