/******************************************************************************

Copyright (C) 2015 Burkhard Stubert, Embedded Use (DBA), Germany
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Embedded Use (DBA) nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL BURKHARD STUBERT, EMBEDDED USE (DBA), BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

******************************************************************************/

pragma Singleton
import QtQuick 2.0

QtObject
{
    readonly property color textColorNormal: "#FFEC8B"      // lightgoldenrod 1
    readonly property color textColorSmall: "#CDBE70"       // lightgoldenrod 3
    readonly property color textColorSelected: "#7FFF00"    // chartreuse
    readonly property color textColorPressed: "#FFB90F"     // darkgoldenrod 1

    readonly property color backgroundColorLight: "#00008B" // blue 4 (darkblue)
    readonly property color backgroundColorDark: "#191970"  // midnightblue

    readonly property real borderSizeNormal: 1
    readonly property int borderSizeSelected: 2

    property Component bgToolButtonNormalT: BorderBackground {
        backgroundColor: backgroundColorLight
        borderColor: textColorNormal
        topBorder: borderSizeNormal
    }

    property Component bgToolButtonNormalTB: BorderBackground {
        backgroundColor: backgroundColorLight
        borderColor: textColorNormal
        topBorder: borderSizeNormal
        bottomBorder: borderSizeNormal
    }

    property Component bgToolButtonNormalRT: BorderBackground {
        backgroundColor: backgroundColorLight
        borderColor: textColorNormal
        rightBorder: borderSizeNormal
        topBorder: borderSizeNormal
    }

    property Component bgToolButtonNormalRTB: BorderBackground {
        backgroundColor: backgroundColorLight
        borderColor: textColorNormal
        rightBorder: borderSizeNormal
        topBorder: borderSizeNormal
        bottomBorder: borderSizeNormal
    }

    property Component bgToolButtonSelected: BorderBackground {
        backgroundColor: backgroundColorLight
        borderColor: textColorPressed
        leftBorder: borderSizeSelected
        rightBorder: borderSizeSelected
        topBorder: borderSizeSelected
        bottomBorder: borderSizeSelected
    }

    property Component bgTabButtonNormal: BorderBackground {
        backgroundColor: backgroundColorDark
        borderColor: textColorNormal
    }

    property Component bgTabButtonNormalT: BorderBackground {
        backgroundColor: backgroundColorDark
        borderColor: textColorNormal
        topBorder: borderSizeNormal
    }

    property Component bgTabButtonNormalR: BorderBackground {
        backgroundColor: backgroundColorDark
        borderColor: textColorNormal
        rightBorder: borderSizeNormal
    }

    property Component bgTabButtonNormalRT: BorderBackground {
        backgroundColor: backgroundColorDark
        borderColor: textColorNormal
        rightBorder: borderSizeNormal
        topBorder: borderSizeNormal
    }

    property Component bgTabButtonNormalRB: BorderBackground {
        backgroundColor: backgroundColorDark
        borderColor: textColorNormal
        rightBorder: borderSizeNormal
        bottomBorder: borderSizeNormal
    }

    property Component bgTabButtonNormalRTB: BorderBackground {
        backgroundColor: backgroundColorDark
        borderColor: textColorNormal
        rightBorder: borderSizeNormal
        topBorder: borderSizeNormal
        bottomBorder: borderSizeNormal
    }

    property Component bgTabButtonChecked: BorderBackground {
        backgroundColor: backgroundColorDark
        borderColor: textColorSelected
        leftBorder: borderSizeSelected
        rightBorder: borderSizeSelected
        topBorder: borderSizeSelected
        bottomBorder: borderSizeSelected
    }
}
