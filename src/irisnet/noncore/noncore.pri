IRIS_BASE = $$PWD/../../..

QT *= network

irisnetcore_bundle:{
	include(../corelib/corelib.pri)
}
else {
	LIBS += -L$$IRIS_BASE/lib -lirisnetcore
}

INCLUDEPATH += $$PWD/../corelib

include($$PWD/cutestuff/cutestuff.pri)

HEADERS += \
	$$PWD/processquit.h \
	$$PWD/stunutil.h \
	$$PWD/stunmessage.h \
	$$PWD/stuntypes.h \
	$$PWD/stuntransaction.h \
	$$PWD/stunbinding.h \
	$$PWD/stunallocate.h \
	$$PWD/turnclient.h \
	$$PWD/icelocaltransport.h \
	$$PWD/ice176.h

SOURCES += \
	$$PWD/processquit.cpp \
	$$PWD/stunutil.cpp \
	$$PWD/stunmessage.cpp \
	$$PWD/stuntypes.cpp \
	$$PWD/stuntransaction.cpp \
	$$PWD/stunbinding.cpp \
	$$PWD/stunallocate.cpp \
	$$PWD/turnclient.cpp \
	$$PWD/icelocaltransport.cpp \
	$$PWD/ice176.cpp

INCLUDEPATH += $$PWD/legacy
include(legacy/legacy.pri)
