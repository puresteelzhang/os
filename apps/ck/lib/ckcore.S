/*++

Copyright (c) 2016 Minoca Corp.

    This file is licensed under the terms of the GNU General Public License
    version 3. Alternative licensing terms are available. Contact
    info@minocacorp.com for details. See the LICENSE file at the root of this
    project for complete licensing information.

Module Name:

    ckcore.S

Abstract:

    This module includes the ckcore.ck file directly in the build.

Author:

    Evan Green 4-Oct-2016

Environment:

    Any

--*/

##
## ---------------------------------------------------------------- Definitions
##

#if defined(__WINNT) || defined(__APPLE__)

#define LABEL(_Name) _##_Name

#else

#define LABEL(_Name) _Name

#endif

#define INCLUDE_BINARY(_Path, _Name) \
    .global LABEL(_Name##_start); \
    LABEL(_Name##_start):; \
    .incbin _Path; \
    .global LABEL(_Name##_end); \
    LABEL(_Name##_end):

##
## ---------------------------------------------------------------------- Code
##

.text

INCLUDE_BINARY("ckcore.ck", _binary_ckcore_ck)

