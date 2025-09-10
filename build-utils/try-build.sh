#!/bin/bash
SCRIPT_ARGS="$1"
DEFAULT_COMBO="eng"
DEFAULT_LINEAGE_OR_CM="lineage"
TARGET_DEVICE="a04br3"

if [ "$SCRIPT_ARGS" = "--clean" ]; then
    FORCE_CLEAN="true"
fi

if [ "$SCRIPT_ARGS" = "--recoveryimage" ]; then
    TARGET_FILE="recoveryimage"
elif [ "$SCRIPT_ARGS" = "--bootimage" ]; then
    TARGET_FILE="bootimage"
else
    TARGET_FILE="OTA"
fi


setup_color() {  # Activate color codes.
    RED="\e[31m"
    GREEN="\e[32m"
    YELLOW="\e[33m"
    BLUE="\e[34m"
    RESET="\e[0m"   
}

run_command() {
    TARGET_CMD="$1"
    
    echo -e "${GREEN}-> $TARGET_CMD ${RESET}"
    $TARGET_CMD

    TARGET_CMD_EXIT_STAT="$?"
    if [ "$TARGET_CMD_EXIT_STAT" != "0" ]; then
        echo -e "${RED}[!!] ERROR: Command failed. bad return status: $TARGET_CMD_EXIT_STAT $RESET"
        exit 1
    fi
}

prepare_env() { # env
    export LC_ALL="C"
    export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
    export KCFLAGS="-Wno-error=maybe-uninitialized"
    export USER="root"
    export ALLOW_MISSING_DEPENDENCIES="true"
}

main() {
    echo -e "Enabling color mode"
    setup_color
    echo -e "Setting up variable"
    prepare_env
    
    if [ "$FORCE_CLEAN" = "true" ]; then
        run_command "make clean"
        exit 0
    fi

    echo -e "Try to build..."
    run_command ". build/envsetup.sh"

    run_command "lunch ${DEFAULT_LINEAGE_OR_CM}_${TARGET_DEVICE}-${DEFAULT_COMBO}"
    run_command "mkdir -p out/target/product/${TARGET_DEVICE}/obj/KERNEL_OBJ/usr"
    
    if [ "$TARGET_FILE" = "OTA" ]; then
        run_command "brunch ${TARGET_DEVICE}"
    elif [ "$TARGET_FILE" = "recoveryimage" ]; then
        run_command "make recoveryimage"
    elif [ "$TARGET_FILE" = "bootimage" ]; then
        run_command "make bootimage"
    fi
    
    echo -e "${BLUE}[OK] Build successfully ${RESET}" 
}


main
