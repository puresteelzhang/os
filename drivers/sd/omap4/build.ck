/*++

Copyright (c) 2014 Minoca Corp. All Rights Reserved

Module Name:

    SD OMAP4

Abstract:

    This module implements the OMAP4 SD controller driver.

Author:

    Evan Green 16-Mar-2014

Environment:

    Kernel

--*/

function build() {
    name = "sdomap4";
    sources = [
        "i2c.c",
        "pmic.c",
        "sdomap4.c"
    ];

    dynlibs = [
        "//drivers/sd/core:sd"
    ];

    drv = {
        "label": name,
        "inputs": sources + dynlibs,
    };

    entries = driver(drv);
    return entries;
}

return build();