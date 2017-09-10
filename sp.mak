# Microsoft Developer Studio Generated NMAKE File, Based on sp.dsp
!IF "$(CFG)" == ""
CFG=sp - Win32 Debug
!MESSAGE No configuration specified. Defaulting to sp - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "sp - Win32 Release" && "$(CFG)" != "sp - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "sp.mak" CFG="sp - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "sp - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "sp - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "sp - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\sp.exe"


CLEAN :
	-@erase "$(INTDIR)\ChildView.obj"
	-@erase "$(INTDIR)\LeftView.obj"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\RightView.obj"
	-@erase "$(INTDIR)\sp.obj"
	-@erase "$(INTDIR)\sp.pch"
	-@erase "$(INTDIR)\sp.res"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\sp.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\sp.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\sp.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\sp.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\sp.pdb" /machine:I386 /out:"$(OUTDIR)\sp.exe" 
LINK32_OBJS= \
	"$(INTDIR)\ChildView.obj" \
	"$(INTDIR)\LeftView.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\RightView.obj" \
	"$(INTDIR)\sp.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\sp.res"

"$(OUTDIR)\sp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "sp - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\sp.exe" "$(OUTDIR)\sp.bsc"


CLEAN :
	-@erase "$(INTDIR)\ChildView.obj"
	-@erase "$(INTDIR)\ChildView.sbr"
	-@erase "$(INTDIR)\LeftView.obj"
	-@erase "$(INTDIR)\LeftView.sbr"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\MainFrm.sbr"
	-@erase "$(INTDIR)\RightView.obj"
	-@erase "$(INTDIR)\RightView.sbr"
	-@erase "$(INTDIR)\sp.obj"
	-@erase "$(INTDIR)\sp.pch"
	-@erase "$(INTDIR)\sp.res"
	-@erase "$(INTDIR)\sp.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\sp.bsc"
	-@erase "$(OUTDIR)\sp.exe"
	-@erase "$(OUTDIR)\sp.ilk"
	-@erase "$(OUTDIR)\sp.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\sp.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\sp.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\sp.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\ChildView.sbr" \
	"$(INTDIR)\LeftView.sbr" \
	"$(INTDIR)\MainFrm.sbr" \
	"$(INTDIR)\RightView.sbr" \
	"$(INTDIR)\sp.sbr" \
	"$(INTDIR)\StdAfx.sbr"

"$(OUTDIR)\sp.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\sp.pdb" /debug /machine:I386 /out:"$(OUTDIR)\sp.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\ChildView.obj" \
	"$(INTDIR)\LeftView.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\RightView.obj" \
	"$(INTDIR)\sp.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\sp.res"

"$(OUTDIR)\sp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("sp.dep")
!INCLUDE "sp.dep"
!ELSE 
!MESSAGE Warning: cannot find "sp.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "sp - Win32 Release" || "$(CFG)" == "sp - Win32 Debug"
SOURCE=.\ChildView.cpp

!IF  "$(CFG)" == "sp - Win32 Release"


"$(INTDIR)\ChildView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\sp.pch"


!ELSEIF  "$(CFG)" == "sp - Win32 Debug"


"$(INTDIR)\ChildView.obj"	"$(INTDIR)\ChildView.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\sp.pch"


!ENDIF 

SOURCE=.\LeftView.cpp

!IF  "$(CFG)" == "sp - Win32 Release"


"$(INTDIR)\LeftView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\sp.pch"


!ELSEIF  "$(CFG)" == "sp - Win32 Debug"


"$(INTDIR)\LeftView.obj"	"$(INTDIR)\LeftView.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\sp.pch"


!ENDIF 

SOURCE=.\MainFrm.cpp

!IF  "$(CFG)" == "sp - Win32 Release"


"$(INTDIR)\MainFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\sp.pch"


!ELSEIF  "$(CFG)" == "sp - Win32 Debug"


"$(INTDIR)\MainFrm.obj"	"$(INTDIR)\MainFrm.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\sp.pch"


!ENDIF 

SOURCE=.\RightView.cpp

!IF  "$(CFG)" == "sp - Win32 Release"


"$(INTDIR)\RightView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\sp.pch"


!ELSEIF  "$(CFG)" == "sp - Win32 Debug"


"$(INTDIR)\RightView.obj"	"$(INTDIR)\RightView.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\sp.pch"


!ENDIF 

SOURCE=.\sp.cpp

!IF  "$(CFG)" == "sp - Win32 Release"


"$(INTDIR)\sp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\sp.pch"


!ELSEIF  "$(CFG)" == "sp - Win32 Debug"


"$(INTDIR)\sp.obj"	"$(INTDIR)\sp.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\sp.pch"


!ENDIF 

SOURCE=.\sp.rc

"$(INTDIR)\sp.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "sp - Win32 Release"

CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\sp.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\sp.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "sp - Win32 Debug"

CPP_SWITCHES=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\sp.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\sp.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

