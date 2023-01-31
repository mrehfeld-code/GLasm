%ifndef  __FREEGLUT_STD_ASM__
%define  __FREEGLUT_STD_ASM__

;
; freeglut_std.h
;
; The GLUT-compatible part of the freeglut library include file
;
; Copyright (c) 1999-2000 Pawel W. Olszta. All Rights Reserved.
; Written by Pawel W. Olszta, <olszta@sourceforge.net>
; Creation date: Thu Dec 2 1999
;
; Permission is hereby granted, free of charge, to any person obtaining a
; copy of this software and associated documentation files (the "Software"),
; to deal in the Software without restriction, including without limitation
; the rights to use, copy, modify, merge, publish, distribute, sublicense,
; and/or sell copies of the Software, and to permit persons to whom the
; Software is furnished to do so, subject to the following conditions:
;
; The above copyright notice and this permission notice shall be included
; in all copies or substantial portions of the Software.
;
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
; OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
; PAWEL W. OLSZTA BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
; IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
;

;
; The freeglut and GLUT API versions
;
%define  FREEGLUT             1
%define  GLUT_API_VERSION     4
%define  GLUT_XLIB_IMPLEMENTATION 13
; Deprecated:
;  cf. http://sourceforge.net/mailarchive/forum.php?thread_name=CABcAi1hw7cr4xtigckaGXB5X8wddLfMcbA_rZ3NAuwMrX_zmsw%40mail.gmail.com&forum_name=freeglut-developer */
%define  FREEGLUT_VERSION_2_0 1

;
; Always include OpenGL and GLU headers
;
%include "gl.asm"
%include "glu.asm"

;
; GLUT API macro definitions -- the special key codes:
;
%define  GLUT_KEY_F1                        0x0001
%define  GLUT_KEY_F2                        0x0002
%define  GLUT_KEY_F3                        0x0003
%define  GLUT_KEY_F4                        0x0004
%define  GLUT_KEY_F5                        0x0005
%define  GLUT_KEY_F6                        0x0006
%define  GLUT_KEY_F7                        0x0007
%define  GLUT_KEY_F8                        0x0008
%define  GLUT_KEY_F9                        0x0009
%define  GLUT_KEY_F10                       0x000A
%define  GLUT_KEY_F11                       0x000B
%define  GLUT_KEY_F12                       0x000C
%define  GLUT_KEY_LEFT                      0x0064
%define  GLUT_KEY_UP                        0x0065
%define  GLUT_KEY_RIGHT                     0x0066
%define  GLUT_KEY_DOWN                      0x0067
%define  GLUT_KEY_PAGE_UP                   0x0068
%define  GLUT_KEY_PAGE_DOWN                 0x0069
%define  GLUT_KEY_HOME                      0x006A
%define  GLUT_KEY_END                       0x006B
%define  GLUT_KEY_INSERT                    0x006C

;
; GLUT API macro definitions -- mouse state definitions
;
%define  GLUT_LEFT_BUTTON                   0x0000
%define  GLUT_MIDDLE_BUTTON                 0x0001
%define  GLUT_RIGHT_BUTTON                  0x0002
%define  GLUT_DOWN                          0x0000
%define  GLUT_UP                            0x0001
%define  GLUT_LEFT                          0x0000
%define  GLUT_ENTERED                       0x0001

;
; GLUT API macro definitions -- the display mode definitions
;
%define  GLUT_RGB                           0x0000
%define  GLUT_RGBA                          0x0000
%define  GLUT_INDEX                         0x0001
%define  GLUT_SINGLE                        0x0000
%define  GLUT_DOUBLE                        0x0002
%define  GLUT_ACCUM                         0x0004
%define  GLUT_ALPHA                         0x0008
%define  GLUT_DEPTH                         0x0010
%define  GLUT_STENCIL                       0x0020
%define  GLUT_MULTISAMPLE                   0x0080
%define  GLUT_STEREO                        0x0100
%define  GLUT_LUMINANCE                     0x0200

;
; GLUT API macro definitions -- windows and menu related definitions
;
%define  GLUT_MENU_NOT_IN_USE               0x0000
%define  GLUT_MENU_IN_USE                   0x0001
%define  GLUT_NOT_VISIBLE                   0x0000
%define  GLUT_VISIBLE                       0x0001
%define  GLUT_HIDDEN                        0x0000
%define  GLUT_FULLY_RETAINED                0x0001
%define  GLUT_PARTIALLY_RETAINED            0x0002
%define  GLUT_FULLY_COVERED                 0x0003

;
; GLUT API macro definitions -- fonts definitions
;
; Steve Baker suggested to make it binary compatible with GLUT:
;
; I don't really know if it's a good idea... But here it goes:
;
extern glutStrokeRoman
extern glutStrokeMonoRoman
extern glutBitmap9By15
extern glutBitmap8By13
extern glutBitmapTimesRoman10
extern glutBitmapTimesRoman24
extern glutBitmapHelvetica10
extern glutBitmapHelvetica12
extern glutBitmapHelvetica18

;
; Those pointers will be used by following definitions:
;
%define  GLUT_STROKE_ROMAN               [glutStrokeRoman]
%define  GLUT_STROKE_MONO_ROMAN          [glutStrokeMonoRoman]
%define  GLUT_BITMAP_9_BY_15             [glutBitmap9By15]
%define  GLUT_BITMAP_8_BY_13             [glutBitmap8By13]
%define  GLUT_BITMAP_TIMES_ROMAN_10      [glutBitmapTimesRoman10]
%define  GLUT_BITMAP_TIMES_ROMAN_24      [glutBitmapTimesRoman24]
%define  GLUT_BITMAP_HELVETICA_10        [glutBitmapHelvetica10]
%define  GLUT_BITMAP_HELVETICA_12        [glutBitmapHelvetica12]
%define  GLUT_BITMAP_HELVETICA_18        [glutBitmapHelvetica18]

;
; GLUT API macro definitions -- the glutGet parameters
;
%define  GLUT_WINDOW_X                      0x0064
%define  GLUT_WINDOW_Y                      0x0065
%define  GLUT_WINDOW_WIDTH                  0x0066
%define  GLUT_WINDOW_HEIGHT                 0x0067
%define  GLUT_WINDOW_BUFFER_SIZE            0x0068
%define  GLUT_WINDOW_STENCIL_SIZE           0x0069
%define  GLUT_WINDOW_DEPTH_SIZE             0x006A
%define  GLUT_WINDOW_RED_SIZE               0x006B
%define  GLUT_WINDOW_GREEN_SIZE             0x006C
%define  GLUT_WINDOW_BLUE_SIZE              0x006D
%define  GLUT_WINDOW_ALPHA_SIZE             0x006E
%define  GLUT_WINDOW_ACCUM_RED_SIZE         0x006F
%define  GLUT_WINDOW_ACCUM_GREEN_SIZE       0x0070
%define  GLUT_WINDOW_ACCUM_BLUE_SIZE        0x0071
%define  GLUT_WINDOW_ACCUM_ALPHA_SIZE       0x0072
%define  GLUT_WINDOW_DOUBLEBUFFER           0x0073
%define  GLUT_WINDOW_RGBA                   0x0074
%define  GLUT_WINDOW_PARENT                 0x0075
%define  GLUT_WINDOW_NUM_CHILDREN           0x0076
%define  GLUT_WINDOW_COLORMAP_SIZE          0x0077
%define  GLUT_WINDOW_NUM_SAMPLES            0x0078
%define  GLUT_WINDOW_STEREO                 0x0079
%define  GLUT_WINDOW_CURSOR                 0x007A

%define  GLUT_SCREEN_WIDTH                  0x00C8
%define  GLUT_SCREEN_HEIGHT                 0x00C9
%define  GLUT_SCREEN_WIDTH_MM               0x00CA
%define  GLUT_SCREEN_HEIGHT_MM              0x00CB
%define  GLUT_MENU_NUM_ITEMS                0x012C
%define  GLUT_DISPLAY_MODE_POSSIBLE         0x0190
%define  GLUT_INIT_WINDOW_X                 0x01F4
%define  GLUT_INIT_WINDOW_Y                 0x01F5
%define  GLUT_INIT_WINDOW_WIDTH             0x01F6
%define  GLUT_INIT_WINDOW_HEIGHT            0x01F7
%define  GLUT_INIT_DISPLAY_MODE             0x01F8
%define  GLUT_ELAPSED_TIME                  0x02BC
%define  GLUT_WINDOW_FORMAT_ID              0x007B

;
; GLUT API macro definitions -- the glutDeviceGet parameters
;
%define  GLUT_HAS_KEYBOARD                  0x0258
%define  GLUT_HAS_MOUSE                     0x0259
%define  GLUT_HAS_SPACEBALL                 0x025A
%define  GLUT_HAS_DIAL_AND_BUTTON_BOX       0x025B
%define  GLUT_HAS_TABLET                    0x025C
%define  GLUT_NUM_MOUSE_BUTTONS             0x025D
%define  GLUT_NUM_SPACEBALL_BUTTONS         0x025E
%define  GLUT_NUM_BUTTON_BOX_BUTTONS        0x025F
%define  GLUT_NUM_DIALS                     0x0260
%define  GLUT_NUM_TABLET_BUTTONS            0x0261
%define  GLUT_DEVICE_IGNORE_KEY_REPEAT      0x0262
%define  GLUT_DEVICE_KEY_REPEAT             0x0263
%define  GLUT_HAS_JOYSTICK                  0x0264
%define  GLUT_OWNS_JOYSTICK                 0x0265
%define  GLUT_JOYSTICK_BUTTONS              0x0266
%define  GLUT_JOYSTICK_AXES                 0x0267
%define  GLUT_JOYSTICK_POLL_RATE            0x0268

;
; GLUT API macro definitions -- the glutLayerGet parameters
;
%define  GLUT_OVERLAY_POSSIBLE              0x0320
%define  GLUT_LAYER_IN_USE                  0x0321
%define  GLUT_HAS_OVERLAY                   0x0322
%define  GLUT_TRANSPARENT_INDEX             0x0323
%define  GLUT_NORMAL_DAMAGED                0x0324
%define  GLUT_OVERLAY_DAMAGED               0x0325

;
; GLUT API macro definitions -- the glutVideoResizeGet parameters
;
%define  GLUT_VIDEO_RESIZE_POSSIBLE         0x0384
%define  GLUT_VIDEO_RESIZE_IN_USE           0x0385
%define  GLUT_VIDEO_RESIZE_X_DELTA          0x0386
%define  GLUT_VIDEO_RESIZE_Y_DELTA          0x0387
%define  GLUT_VIDEO_RESIZE_WIDTH_DELTA      0x0388
%define  GLUT_VIDEO_RESIZE_HEIGHT_DELTA     0x0389
%define  GLUT_VIDEO_RESIZE_X                0x038A
%define  GLUT_VIDEO_RESIZE_Y                0x038B
%define  GLUT_VIDEO_RESIZE_WIDTH            0x038C
%define  GLUT_VIDEO_RESIZE_HEIGHT           0x038D

;
; GLUT API macro definitions -- the glutUseLayer parameters
;
%define  GLUT_NORMAL                        0x0000
%define  GLUT_OVERLAY                       0x0001

;
; GLUT API macro definitions -- the glutGetModifiers parameters
;
%define  GLUT_ACTIVE_SHIFT                  0x0001
%define  GLUT_ACTIVE_CTRL                   0x0002
%define  GLUT_ACTIVE_ALT                    0x0004

;
; GLUT API macro definitions -- the glutSetCursor parameters
;
%define  GLUT_CURSOR_RIGHT_ARROW            0x0000
%define  GLUT_CURSOR_LEFT_ARROW             0x0001
%define  GLUT_CURSOR_INFO                   0x0002
%define  GLUT_CURSOR_DESTROY                0x0003
%define  GLUT_CURSOR_HELP                   0x0004
%define  GLUT_CURSOR_CYCLE                  0x0005
%define  GLUT_CURSOR_SPRAY                  0x0006
%define  GLUT_CURSOR_WAIT                   0x0007
%define  GLUT_CURSOR_TEXT                   0x0008
%define  GLUT_CURSOR_CROSSHAIR              0x0009
%define  GLUT_CURSOR_UP_DOWN                0x000A
%define  GLUT_CURSOR_LEFT_RIGHT             0x000B
%define  GLUT_CURSOR_TOP_SIDE               0x000C
%define  GLUT_CURSOR_BOTTOM_SIDE            0x000D
%define  GLUT_CURSOR_LEFT_SIDE              0x000E
%define  GLUT_CURSOR_RIGHT_SIDE             0x000F
%define  GLUT_CURSOR_TOP_LEFT_CORNER        0x0010
%define  GLUT_CURSOR_TOP_RIGHT_CORNER       0x0011
%define  GLUT_CURSOR_BOTTOM_RIGHT_CORNER    0x0012
%define  GLUT_CURSOR_BOTTOM_LEFT_CORNER     0x0013
%define  GLUT_CURSOR_INHERIT                0x0064
%define  GLUT_CURSOR_NONE                   0x0065
%define  GLUT_CURSOR_FULL_CROSSHAIR         0x0066

;
; GLUT API macro definitions -- RGB color component specification definitions
;
%define  GLUT_RED                           0x0000
%define  GLUT_GREEN                         0x0001
%define  GLUT_BLUE                          0x0002

;
; GLUT API macro definitions -- additional keyboard and joystick definitions
;
%define  GLUT_KEY_REPEAT_OFF                0x0000
%define  GLUT_KEY_REPEAT_ON                 0x0001
%define  GLUT_KEY_REPEAT_DEFAULT            0x0002

%define  GLUT_JOYSTICK_BUTTON_A             0x0001
%define  GLUT_JOYSTICK_BUTTON_B             0x0002
%define  GLUT_JOYSTICK_BUTTON_C             0x0004
%define  GLUT_JOYSTICK_BUTTON_D             0x0008

;
; GLUT API macro definitions -- game mode definitions
;
%define  GLUT_GAME_MODE_ACTIVE              0x0000
%define  GLUT_GAME_MODE_POSSIBLE            0x0001
%define  GLUT_GAME_MODE_WIDTH               0x0002
%define  GLUT_GAME_MODE_HEIGHT              0x0003
%define  GLUT_GAME_MODE_PIXEL_DEPTH         0x0004
%define  GLUT_GAME_MODE_REFRESH_RATE        0x0005
%define  GLUT_GAME_MODE_DISPLAY_CHANGED     0x0006

;
; Initialization functions, see fglut_init.c
;
extern glutInit
extern glutInitWindowPosition
extern glutInitWindowSize
extern glutInitDisplayMode
extern glutInitDisplayString

;
; Process loop function, see freeglut_main.c
;
extern glutMainLoop

;
; Window management functions, see freeglut_window.c
;
extern glutCreateWindow
extern glutCreateSubWindow
extern glutDestroyWindow
extern glutSetWindow
extern glutGetWindow
extern glutSetWindowTitle
extern glutSetIconTitle
extern glutReshapeWindow
extern glutPositionWindow
extern glutShowWindow
extern glutHideWindow
extern glutIconifyWindow
extern glutPushWindow
extern glutPopWindow
extern glutFullScreen

;
; Display-connected functions, see freeglut_display.c
;
extern glutPostWindowRedisplay
extern glutPostRedisplay
extern glutSwapBuffers

;
; Mouse cursor functions, see freeglut_cursor.c
;
extern glutWarpPointer
extern glutSetCursor

;
; Overlay stuff, see freeglut_overlay.c
;
extern glutEstablishOverlay
extern glutRemoveOverlay
extern glutUseLayer
extern glutPostOverlayRedisplay
extern glutPostWindowOverlayRedisplay
extern glutShowOverlay
extern glutHideOverlay

;
; Menu stuff, see freeglut_menu.c
;
extern glutCreateMenu
extern glutDestroyMenu
extern glutGetMenu
extern glutSetMenu
extern glutAddMenuEntry
extern glutAddSubMenu
extern glutChangeToMenuEntry
extern glutChangeToSubMenu
extern glutRemoveMenuItem
extern glutAttachMenu
extern glutDetachMenu

;
; Global callback functions, see freeglut_callbacks.c
;
extern glutTimerFunc
extern glutIdleFunc

;
; Window-specific callback functions, see freeglut_callbacks.c
;
extern glutKeyboardFunc
extern glutSpecialFunc
extern glutReshapeFunc
extern glutVisibilityFunc
extern glutDisplayFunc
extern glutMouseFunc
extern glutMotionFunc
extern glutPassiveMotionFunc
extern glutEntryFunc

extern glutKeyboardUpFunc
extern glutSpecialUpFunc
extern glutJoystickFunc
extern glutMenuStateFunc
extern glutMenuStatusFunc
extern glutOverlayDisplayFunc
extern glutWindowStatusFunc

extern glutSpaceballMotionFunc
extern glutSpaceballRotateFunc
extern glutSpaceballButtonFunc
extern glutButtonBoxFunc
extern glutDialsFunc
extern glutTabletMotionFunc
extern glutTabletButtonFunc

;
; State setting and retrieval functions, see freeglut_state.c
;
extern glutGet
extern glutDeviceGet
extern glutGetModifiers
extern glutLayerGet

;
; Font stuff, see freeglut_font.c
;
extern glutBitmapCharacter
extern glutBitmapWidth
extern glutStrokeCharacter
extern glutStrokeWidth
extern glutBitmapLength
extern glutStrokeLength

;
; Geometry functions, see freeglut_geometry.c
;
extern glutWireCube
extern glutSolidCube
extern glutWireSphere
extern glutSolidSphere
extern glutWireCone
extern glutSolidCone

extern glutWireTorus
extern glutSolidTorus
extern glutWireDodecahedron
extern glutSolidDodecahedron
extern glutWireOctahedron
extern glutSolidOctahedron
extern glutWireTetrahedron
extern glutSolidTetrahedron
extern glutWireIcosahedron
extern glutSolidIcosahedron

;
; Teapot rendering functions, found in freeglut_teapot.c
; NB: front facing polygons have clockwise winding, not counter clockwise
;
extern glutWireTeapot
extern glutSolidTeapot

;
; Game mode functions, see freeglut_gamemode.c
;
extern glutGameModeString
extern glutEnterGameMode
extern glutLeaveGameMode
extern glutGameModeGet

;
; video resize functions, see freeglut_videoresize.c
;
extern glutVideoResizeGet
extern glutSetupVideoResizing
extern glutStopVideoResizing
extern glutVideoResize
extern glutVideoPan

;
; Colormap functions, see freeglut_misc.c
;
extern glutSetColor
extern glutGetColor
extern glutCopyColormap

;
; Misc keyboard and joystick functions, see freeglut_misc.c
;
extern glutIgnoreKeyRepeat
extern glutSetKeyRepeat
extern glutForceJoystickFunc

;
; Misc functions, see freeglut_misc.c
;
extern glutExtensionSupported
extern glutReportErrors


; *** END OF FILE ***

%endif ; __FREEGLUT_STD_ASM__
