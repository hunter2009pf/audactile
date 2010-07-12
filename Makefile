#############################################################################
# Makefile for building: Player
# Generated by qmake (2.01a) (Qt 4.6.3) on: Thu Jul 8 09:27:11 2010
# Project:  Player.pro
# Template: app
# Command: /usr/bin/qmake -spec /usr/share/qt/mkspecs/linux-g++ -unix CONFIG+=debug -o Makefile Player.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT_LIB -DQT_PHONON_LIB -DQT_SQL_LIB -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt/mkspecs/linux-g++ -I. -I/usr/include/QtCore -I/usr/include/QtNetwork -I/usr/include/QtGui -I/usr/include/QtSql -I/usr/include/phonon -I/usr/include/QtWebKit -I/usr/include -I/usr/include/phonon_compat -I.
LINK          = g++
LFLAGS        = -Wl,--hash-style=gnu -Wl,--as-needed
LIBS          = $(SUBLIBS)  -L/usr/lib -lQtWebKit -lphonon -lQtSql -lQtGui -lQtNetwork -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = src/mainwindow/mainnotebook/collection/collectiontreewidget.cpp \
		src/mainwindow/mainnotebook/filesystem/filesystemwidget.cpp \
		src/mainwindow/mainnotebook/mainnotebook.cpp \
		src/mainwindow/playlist/playlistwidget.cpp \
		src/mainwindow/playlist/playlistitem.cpp \
		src/mainwindow/playerbar.cpp \
		src/mainwindow/mainwindow.cpp \
		src/mainwindow/mainwidget.cpp \
		src/main.cpp \
		src/settings/applicationsettings.cpp \
		src/settings/settingsdialog/widgets/foldersettingswidget.cpp \
		src/settings/settingsdialog/settingsdialog.cpp \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.cpp \
		src/settings/lastfmsettings.cpp \
		src/services/lastfmscrobbler.cpp \
		src/services/lastfmcontext.cpp moc_filesystemwidget.cpp \
		moc_playlistwidget.cpp \
		moc_playlistitem.cpp \
		moc_playerbar.cpp \
		moc_mainwindow.cpp \
		moc_foldersettingswidget.cpp \
		moc_settingsdialog.cpp \
		moc_lastfmsettingswidget.cpp \
		moc_lastfmscrobbler.cpp \
		moc_lastfmcontext.cpp
OBJECTS       = collectiontreewidget.o \
		filesystemwidget.o \
		mainnotebook.o \
		playlistwidget.o \
		playlistitem.o \
		playerbar.o \
		mainwindow.o \
		mainwidget.o \
		main.o \
		applicationsettings.o \
		foldersettingswidget.o \
		settingsdialog.o \
		lastfmsettingswidget.o \
		lastfmsettings.o \
		lastfmscrobbler.o \
		lastfmcontext.o \
		moc_filesystemwidget.o \
		moc_playlistwidget.o \
		moc_playlistitem.o \
		moc_playerbar.o \
		moc_mainwindow.o \
		moc_foldersettingswidget.o \
		moc_settingsdialog.o \
		moc_lastfmsettingswidget.o \
		moc_lastfmscrobbler.o \
		moc_lastfmcontext.o
DIST          = /usr/share/qt/mkspecs/common/g++.conf \
		/usr/share/qt/mkspecs/common/unix.conf \
		/usr/share/qt/mkspecs/common/linux.conf \
		/usr/share/qt/mkspecs/qconfig.pri \
		/usr/share/qt/mkspecs/features/qt_functions.prf \
		/usr/share/qt/mkspecs/features/qt_config.prf \
		/usr/share/qt/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt/mkspecs/features/default_pre.prf \
		/usr/share/qt/mkspecs/features/debug.prf \
		/usr/share/qt/mkspecs/features/default_post.prf \
		/usr/share/qt/mkspecs/features/warn_on.prf \
		/usr/share/qt/mkspecs/features/qt.prf \
		/usr/share/qt/mkspecs/features/unix/thread.prf \
		/usr/share/qt/mkspecs/features/moc.prf \
		/usr/share/qt/mkspecs/features/resources.prf \
		/usr/share/qt/mkspecs/features/uic.prf \
		/usr/share/qt/mkspecs/features/yacc.prf \
		/usr/share/qt/mkspecs/features/lex.prf \
		/usr/share/qt/mkspecs/features/include_source_dir.prf \
		Player.pro
QMAKE_TARGET  = Player
DESTDIR       = 
TARGET        = Player

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Player.pro  /usr/share/qt/mkspecs/linux-g++/qmake.conf /usr/share/qt/mkspecs/common/g++.conf \
		/usr/share/qt/mkspecs/common/unix.conf \
		/usr/share/qt/mkspecs/common/linux.conf \
		/usr/share/qt/mkspecs/qconfig.pri \
		/usr/share/qt/mkspecs/features/qt_functions.prf \
		/usr/share/qt/mkspecs/features/qt_config.prf \
		/usr/share/qt/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt/mkspecs/features/default_pre.prf \
		/usr/share/qt/mkspecs/features/debug.prf \
		/usr/share/qt/mkspecs/features/default_post.prf \
		/usr/share/qt/mkspecs/features/warn_on.prf \
		/usr/share/qt/mkspecs/features/qt.prf \
		/usr/share/qt/mkspecs/features/unix/thread.prf \
		/usr/share/qt/mkspecs/features/moc.prf \
		/usr/share/qt/mkspecs/features/resources.prf \
		/usr/share/qt/mkspecs/features/uic.prf \
		/usr/share/qt/mkspecs/features/yacc.prf \
		/usr/share/qt/mkspecs/features/lex.prf \
		/usr/share/qt/mkspecs/features/include_source_dir.prf \
		/usr/lib/libQtWebKit.prl \
		/usr/lib/libQtSql.prl \
		/usr/lib/libQtGui.prl \
		/usr/lib/libQtNetwork.prl \
		/usr/lib/libQtCore.prl
	$(QMAKE) -spec /usr/share/qt/mkspecs/linux-g++ -unix CONFIG+=debug -o Makefile Player.pro
/usr/share/qt/mkspecs/common/g++.conf:
/usr/share/qt/mkspecs/common/unix.conf:
/usr/share/qt/mkspecs/common/linux.conf:
/usr/share/qt/mkspecs/qconfig.pri:
/usr/share/qt/mkspecs/features/qt_functions.prf:
/usr/share/qt/mkspecs/features/qt_config.prf:
/usr/share/qt/mkspecs/features/exclusive_builds.prf:
/usr/share/qt/mkspecs/features/default_pre.prf:
/usr/share/qt/mkspecs/features/debug.prf:
/usr/share/qt/mkspecs/features/default_post.prf:
/usr/share/qt/mkspecs/features/warn_on.prf:
/usr/share/qt/mkspecs/features/qt.prf:
/usr/share/qt/mkspecs/features/unix/thread.prf:
/usr/share/qt/mkspecs/features/moc.prf:
/usr/share/qt/mkspecs/features/resources.prf:
/usr/share/qt/mkspecs/features/uic.prf:
/usr/share/qt/mkspecs/features/yacc.prf:
/usr/share/qt/mkspecs/features/lex.prf:
/usr/share/qt/mkspecs/features/include_source_dir.prf:
/usr/lib/libQtWebKit.prl:
/usr/lib/libQtSql.prl:
/usr/lib/libQtGui.prl:
/usr/lib/libQtNetwork.prl:
/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt/mkspecs/linux-g++ -unix CONFIG+=debug -o Makefile Player.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/Player1.0.0 || $(MKDIR) .tmp/Player1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/Player1.0.0/ && $(COPY_FILE) --parents src/mainwindow/mainnotebook/collection/collectiontreewidget.h src/mainwindow/mainnotebook/filesystem/filesystemwidget.h src/mainwindow/mainnotebook/mainnotebook.h src/mainwindow/playlist/playlistwidget.h src/mainwindow/playlist/playlistitem.h src/mainwindow/playerbar.h src/mainwindow/mainwindow.h src/mainwindow/mainwidget.h src/settings/applicationsettings.h src/settings/settingsdialog/widgets/foldersettingswidget.h src/settings/settingsdialog/settingsdialog.h src/settings/settingsdialog/widgets/lastfmsettingswidget.h src/settings/lastfmsettings.h src/services/lastfmscrobbler.h src/services/lastfmcontext.h .tmp/Player1.0.0/ && $(COPY_FILE) --parents src/mainwindow/mainnotebook/collection/collectiontreewidget.cpp src/mainwindow/mainnotebook/filesystem/filesystemwidget.cpp src/mainwindow/mainnotebook/mainnotebook.cpp src/mainwindow/playlist/playlistwidget.cpp src/mainwindow/playlist/playlistitem.cpp src/mainwindow/playerbar.cpp src/mainwindow/mainwindow.cpp src/mainwindow/mainwidget.cpp src/main.cpp src/settings/applicationsettings.cpp src/settings/settingsdialog/widgets/foldersettingswidget.cpp src/settings/settingsdialog/settingsdialog.cpp src/settings/settingsdialog/widgets/lastfmsettingswidget.cpp src/settings/lastfmsettings.cpp src/services/lastfmscrobbler.cpp src/services/lastfmcontext.cpp .tmp/Player1.0.0/ && (cd `dirname .tmp/Player1.0.0` && $(TAR) Player1.0.0.tar Player1.0.0 && $(COMPRESS) Player1.0.0.tar) && $(MOVE) `dirname .tmp/Player1.0.0`/Player1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/Player1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_filesystemwidget.cpp moc_playlistwidget.cpp moc_playlistitem.cpp moc_playerbar.cpp moc_mainwindow.cpp moc_foldersettingswidget.cpp moc_settingsdialog.cpp moc_lastfmsettingswidget.cpp moc_lastfmscrobbler.cpp moc_lastfmcontext.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_filesystemwidget.cpp moc_playlistwidget.cpp moc_playlistitem.cpp moc_playerbar.cpp moc_mainwindow.cpp moc_foldersettingswidget.cpp moc_settingsdialog.cpp moc_lastfmsettingswidget.cpp moc_lastfmscrobbler.cpp moc_lastfmcontext.cpp
moc_filesystemwidget.cpp: src/mainwindow/mainwindow.h \
		src/mainwindow/mainnotebook/mainnotebook.h \
		src/mainwindow/mainnotebook/filesystem/filesystemwidget.h \
		src/mainwindow/playlist/playlistitem.h \
		src/mainwindow/mainnotebook/collection/collectiontreewidget.h \
		src/mainwindow/playlist/playlistwidget.h \
		src/mainwindow/playerbar.h \
		src/settings/settingsdialog/settingsdialog.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h \
		src/services/lastfmscrobbler.h \
		src/mainwindow/mainnotebook/filesystem/filesystemwidget.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/mainwindow/mainnotebook/filesystem/filesystemwidget.h -o moc_filesystemwidget.cpp

moc_playlistwidget.cpp: src/mainwindow/playlist/playlistitem.h \
		src/mainwindow/playlist/playlistwidget.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/mainwindow/playlist/playlistwidget.h -o moc_playlistwidget.cpp

moc_playlistitem.cpp: src/mainwindow/playlist/playlistitem.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/mainwindow/playlist/playlistitem.h -o moc_playlistitem.cpp

moc_playerbar.cpp: src/settings/settingsdialog/settingsdialog.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h \
		src/mainwindow/playerbar.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/mainwindow/playerbar.h -o moc_playerbar.cpp

moc_mainwindow.cpp: src/mainwindow/mainnotebook/mainnotebook.h \
		src/mainwindow/mainnotebook/filesystem/filesystemwidget.h \
		src/mainwindow/mainwindow.h \
		src/mainwindow/playlist/playlistwidget.h \
		src/mainwindow/playlist/playlistitem.h \
		src/mainwindow/playerbar.h \
		src/settings/settingsdialog/settingsdialog.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h \
		src/services/lastfmscrobbler.h \
		src/mainwindow/mainnotebook/collection/collectiontreewidget.h \
		src/mainwindow/mainwindow.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/mainwindow/mainwindow.h -o moc_mainwindow.cpp

moc_foldersettingswidget.cpp: src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/settings/settingsdialog/widgets/foldersettingswidget.h -o moc_foldersettingswidget.cpp

moc_settingsdialog.cpp: src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h \
		src/settings/settingsdialog/settingsdialog.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/settings/settingsdialog/settingsdialog.h -o moc_settingsdialog.cpp

moc_lastfmsettingswidget.cpp: src/settings/lastfmsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/settings/settingsdialog/widgets/lastfmsettingswidget.h -o moc_lastfmsettingswidget.cpp

moc_lastfmscrobbler.cpp: src/settings/lastfmsettings.h \
		src/services/lastfmscrobbler.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/services/lastfmscrobbler.h -o moc_lastfmscrobbler.cpp

moc_lastfmcontext.cpp: src/services/lastfmcontext.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/services/lastfmcontext.h -o moc_lastfmcontext.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

collectiontreewidget.o: src/mainwindow/mainnotebook/collection/collectiontreewidget.cpp src/mainwindow/mainnotebook/collection/collectiontreewidget.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o collectiontreewidget.o src/mainwindow/mainnotebook/collection/collectiontreewidget.cpp

filesystemwidget.o: src/mainwindow/mainnotebook/filesystem/filesystemwidget.cpp src/mainwindow/mainnotebook/filesystem/filesystemwidget.h \
		src/mainwindow/mainwindow.h \
		src/mainwindow/mainnotebook/mainnotebook.h \
		src/mainwindow/mainnotebook/collection/collectiontreewidget.h \
		src/mainwindow/playlist/playlistwidget.h \
		src/mainwindow/playlist/playlistitem.h \
		src/mainwindow/playerbar.h \
		src/settings/settingsdialog/settingsdialog.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h \
		src/services/lastfmscrobbler.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o filesystemwidget.o src/mainwindow/mainnotebook/filesystem/filesystemwidget.cpp

mainnotebook.o: src/mainwindow/mainnotebook/mainnotebook.cpp src/mainwindow/mainnotebook/mainnotebook.h \
		src/mainwindow/mainnotebook/filesystem/filesystemwidget.h \
		src/mainwindow/mainwindow.h \
		src/mainwindow/playlist/playlistwidget.h \
		src/mainwindow/playlist/playlistitem.h \
		src/mainwindow/playerbar.h \
		src/settings/settingsdialog/settingsdialog.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h \
		src/services/lastfmscrobbler.h \
		src/mainwindow/mainnotebook/collection/collectiontreewidget.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainnotebook.o src/mainwindow/mainnotebook/mainnotebook.cpp

playlistwidget.o: src/mainwindow/playlist/playlistwidget.cpp src/mainwindow/playlist/playlistwidget.h \
		src/mainwindow/playlist/playlistitem.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playlistwidget.o src/mainwindow/playlist/playlistwidget.cpp

playlistitem.o: src/mainwindow/playlist/playlistitem.cpp src/mainwindow/playlist/playlistitem.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playlistitem.o src/mainwindow/playlist/playlistitem.cpp

playerbar.o: src/mainwindow/playerbar.cpp src/mainwindow/playerbar.h \
		src/settings/settingsdialog/settingsdialog.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playerbar.o src/mainwindow/playerbar.cpp

mainwindow.o: src/mainwindow/mainwindow.cpp src/mainwindow/mainwindow.h \
		src/mainwindow/mainnotebook/mainnotebook.h \
		src/mainwindow/mainnotebook/filesystem/filesystemwidget.h \
		src/mainwindow/playlist/playlistitem.h \
		src/mainwindow/mainnotebook/collection/collectiontreewidget.h \
		src/mainwindow/playlist/playlistwidget.h \
		src/mainwindow/playerbar.h \
		src/settings/settingsdialog/settingsdialog.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h \
		src/services/lastfmscrobbler.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o src/mainwindow/mainwindow.cpp

mainwidget.o: src/mainwindow/mainwidget.cpp src/mainwindow/mainwidget.h \
		src/mainwindow/mainnotebook/mainnotebook.h \
		src/mainwindow/mainnotebook/filesystem/filesystemwidget.h \
		src/mainwindow/mainwindow.h \
		src/mainwindow/playlist/playlistwidget.h \
		src/mainwindow/playlist/playlistitem.h \
		src/mainwindow/playerbar.h \
		src/settings/settingsdialog/settingsdialog.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h \
		src/services/lastfmscrobbler.h \
		src/mainwindow/mainnotebook/collection/collectiontreewidget.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwidget.o src/mainwindow/mainwidget.cpp

main.o: src/main.cpp src/mainwindow/mainwindow.h \
		src/mainwindow/mainnotebook/mainnotebook.h \
		src/mainwindow/mainnotebook/filesystem/filesystemwidget.h \
		src/mainwindow/playlist/playlistitem.h \
		src/mainwindow/mainnotebook/collection/collectiontreewidget.h \
		src/mainwindow/playlist/playlistwidget.h \
		src/mainwindow/playerbar.h \
		src/settings/settingsdialog/settingsdialog.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h \
		src/services/lastfmscrobbler.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o src/main.cpp

applicationsettings.o: src/settings/applicationsettings.cpp src/settings/applicationsettings.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o applicationsettings.o src/settings/applicationsettings.cpp

foldersettingswidget.o: src/settings/settingsdialog/widgets/foldersettingswidget.cpp src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o foldersettingswidget.o src/settings/settingsdialog/widgets/foldersettingswidget.cpp

settingsdialog.o: src/settings/settingsdialog/settingsdialog.cpp src/settings/settingsdialog/settingsdialog.h \
		src/settings/settingsdialog/widgets/foldersettingswidget.h \
		src/settings/applicationsettings.h \
		src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o settingsdialog.o src/settings/settingsdialog/settingsdialog.cpp

lastfmsettingswidget.o: src/settings/settingsdialog/widgets/lastfmsettingswidget.cpp src/settings/settingsdialog/widgets/lastfmsettingswidget.h \
		src/settings/lastfmsettings.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o lastfmsettingswidget.o src/settings/settingsdialog/widgets/lastfmsettingswidget.cpp

lastfmsettings.o: src/settings/lastfmsettings.cpp src/settings/lastfmsettings.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o lastfmsettings.o src/settings/lastfmsettings.cpp

lastfmscrobbler.o: src/services/lastfmscrobbler.cpp src/services/lastfmscrobbler.h \
		src/settings/lastfmsettings.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o lastfmscrobbler.o src/services/lastfmscrobbler.cpp

lastfmcontext.o: src/services/lastfmcontext.cpp src/services/lastfmcontext.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o lastfmcontext.o src/services/lastfmcontext.cpp

moc_filesystemwidget.o: moc_filesystemwidget.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_filesystemwidget.o moc_filesystemwidget.cpp

moc_playlistwidget.o: moc_playlistwidget.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_playlistwidget.o moc_playlistwidget.cpp

moc_playlistitem.o: moc_playlistitem.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_playlistitem.o moc_playlistitem.cpp

moc_playerbar.o: moc_playerbar.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_playerbar.o moc_playerbar.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_foldersettingswidget.o: moc_foldersettingswidget.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_foldersettingswidget.o moc_foldersettingswidget.cpp

moc_settingsdialog.o: moc_settingsdialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_settingsdialog.o moc_settingsdialog.cpp

moc_lastfmsettingswidget.o: moc_lastfmsettingswidget.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_lastfmsettingswidget.o moc_lastfmsettingswidget.cpp

moc_lastfmscrobbler.o: moc_lastfmscrobbler.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_lastfmscrobbler.o moc_lastfmscrobbler.cpp

moc_lastfmcontext.o: moc_lastfmcontext.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_lastfmcontext.o moc_lastfmcontext.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

