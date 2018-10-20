#! /bin/bash

SCRIPT_DIR=$(cd $(dirname $0);pwd)
EGRET_CORE=$(cd "${SCRIPT_DIR}/../egret-core";pwd)
LIB_DIR=${EGRET_CORE}/build/dragonBones

PROJ_ROOT="${SCRIPT_DIR}"


tsc -p "${PROJ_ROOT}/Egret/4.x" --rootDir "${PROJ_ROOT}" --sourceMap true --sourceRoot "file://${PROJ_ROOT}"
# node ./node_modules/.bin/uglifyjs ./out/dragonBones.js -o ./out/dragonBones.min.js -m

if ! [ -d "${LIB_DIR}" ]; then
	mkdir "${LIB_DIR}"
fi
echo "${PROJ_ROOT}/Egret/4.x/out  ${LIB_DIR}"
cp "${PROJ_ROOT}/Egret/4.x/out"/* "${LIB_DIR}"/


