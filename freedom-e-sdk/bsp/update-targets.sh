#!/usr/bin/env sh

help() {
    cat >&2 <<EOF
$0: BSP Generator for the SiFive Freedom E SDK
    --help                     Prints this help text.
    --target-name              Specify bsp target name.
    --sdk-path=*               The path to the freedom-e-sdk clone directory, public or private.
    --target-dts=*.dts         The path to the target device tree that will be used.
EOF
}

unset DTSFILE
unset CUSTOM_PATH
unset CUSTOM_NAME
unset NO_FIXUP
NO_FIXUP=0
while [ "$1" != "" ]
do
    case "$1" in
    --help)               help "$0";                                 exit 0;;
    --no-fixup)           NO_FIXUP=1;                                shift 1;;
    --target-name)        CUSTOM_NAME="$2";                          shift 2;;
    --sdk-path=*)         CUSTOM_PATH="$(echo "$1" | cut -d= -f2-)"; shift 1;;
    --sdk-path)           CUSTOM_PATH="$2";                          shift 2;;
    --target-dts=*)       DTSFILE="$(echo "$1" | cut -d= -f2-)";     shift 1;;
    --target-dts)         DTSFILE="$2";                              shift 2;;
    *) echo "$0: Unknown argument $1" >&2;                        exit 1;;
    esac
done

if [ "$CUSTOM_PATH" == "" -a "$CUSTOM_NAME" == "" -a "$DTSFILE" == "" ]
then
    TARGET_LIST="$(ls -d coreip*) "
    TARGET_LIST+="sifive-hifive1 sifive-hifive1-revb freedom-e310-arty "
else
    if [ ! -f "$DTSFILE" -a "$DTSFILE" != "*.dts" ]
    then
        echo "[ERROR] $0: $DTSFILE must be a dts file" >&2
        help "$0"
        exit 1
    fi
    if [ "$CUSTOM_NAME" == "" ]
    then
        echo "[ERROR] $0: --target-name is mandatory" >&2
        help "$0"
        exit 1
    fi
    CUSTOM_TARGET="$CUSTOM_PATH/bsp/$CUSTOM_NAME"
    if [ ! -d "$CUSTOM_TARGET" ]
    then
        echo "[ERROR] $0: "$CUSTOM_TARGET" not found!" >&2
        help "$0"
        exit 1
    fi
    cp $DTSFILE $CUSTOM_TARGET
    TARGET_LIST="$CUSTOM_TARGET "
fi

DTC=dtc
MEE_HEADER_GENERATOR=freedom-metal_header-generator
LDSCRIPT_GENERATOR=freedom-ldscript-generator

DTS_FILENAME=design.dts
DTB_FILENAME=temp.dtb
HEADER_FILENAME=metal.h
LDS_DEFAULT_FILENAME=metal.default.lds
LDS_RAMRODATA_FILENAME=metal.ramrodata.lds
LDS_SCRATCHPAD_FILENAME=metal.scratchpad.lds

update_target() {
    TARGET=$1

    echo "Updating target $TARGET"

    if [ $NO_FIXUP != 1 ]; then
        ../scripts/fixup-dts --dts $TARGET/$DTS_FILENAME || die "Failed to check $TARGET/$DTS_FILENAME for missing elements"
    fi
    
    # Compile temporary .dtb
    $DTC -I dts -O dtb -o $TARGET/$DTB_FILENAME $TARGET/$DTS_FILENAME || die "Failed to compile $TARGET/$DTS_FILENAME to dtb"

    # Produce parameterized files
    $MEE_HEADER_GENERATOR -d $TARGET/$DTB_FILENAME -o $TARGET/$HEADER_FILENAME || die "Failed to produce $TARGET/$HEADER_FILENAME"
    $LDSCRIPT_GENERATOR -d $TARGET/$DTB_FILENAME -l $TARGET/$LDS_DEFAULT_FILENAME || die "Failed to produce $TARGET/$LDS_DEFAULT_FILENAME"
    $LDSCRIPT_GENERATOR -d $TARGET/$DTB_FILENAME -l $TARGET/$LDS_RAMRODATA_FILENAME --ramrodata || die "Failed to produce $TARGET/$LDS_RAMRODATA_FILENAME"
    $LDSCRIPT_GENERATOR -d $TARGET/$DTB_FILENAME -l $TARGET/$LDS_SCRATCHPAD_FILENAME --scratchpad || die "Failed to produce $TARGET/$LDS_SCRATCHPAD_FILENAME"

    # Remove temporary .dtb
    rm $TARGET/$DTB_FILENAME

    echo ""
}

for TARGET in $TARGET_LIST
do
    update_target $TARGET
done

