# This Makefile is for the Tk::XML::WizardMaker extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.03 (Revision: 1.63) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#
#   MakeMaker Parameters:

#     ABSTRACT_FROM => q[WizardMaker.pm]
#     AUTHOR => q[Viktor Zimmermann <ZiMTraining@gmx.net>]
#     NAME => q[Tk::XML::WizardMaker]
#     PREREQ_PM => { XML::Simple=>q[1.0], Tk=>q[8.0] }
#     VERSION_FROM => q[WizardMaker.pm]

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/lib/perl5/5.8.0/i586-linux-thread-multi/Config.pm)

# They may have been overridden via Makefile.PL or on the command line
AR = ar
CC = cc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -rdynamic -Wl,-rpath,/usr/lib/perl5/5.8.0/i586-linux-thread-multi/CORE
DLEXT = so
DLSRC = dl_dlopen.xs
LD = cc
LDDLFLAGS = -shared
LDFLAGS = 
LIBC = 
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 2.4.20
RANLIB = :
SO = so
EXE_EXT = 
FULL_AR = /usr/bin/ar


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
NAME = Tk::XML::WizardMaker
DISTNAME = Tk-XML-WizardMaker
NAME_SYM = Tk_XML_WizardMaker
VERSION = 0.90
VERSION_SYM = 0_90
XS_VERSION = 0.90
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INSTALLDIRS = site
PREFIX = /usr
SITEPREFIX = /usr
VENDORPREFIX = 
INSTALLPRIVLIB = $(PREFIX)/lib/perl5/5.8.0
INSTALLSITELIB = $(PREFIX)/lib/perl5/site_perl/5.8.0
INSTALLVENDORLIB = 
INSTALLARCHLIB = $(PREFIX)/lib/perl5/5.8.0/i586-linux-thread-multi
INSTALLSITEARCH = $(PREFIX)/lib/perl5/site_perl/5.8.0/i586-linux-thread-multi
INSTALLVENDORARCH = 
INSTALLBIN = $(PREFIX)/bin
INSTALLSITEBIN = $(PREFIX)/bin
INSTALLVENDORBIN = 
INSTALLSCRIPT = $(PREFIX)/bin
PERL_LIB = /usr/lib/perl5/5.8.0
PERL_ARCHLIB = /usr/lib/perl5/5.8.0/i586-linux-thread-multi
SITELIBEXP = /usr/lib/perl5/site_perl/5.8.0
SITEARCHEXP = /usr/lib/perl5/site_perl/5.8.0/i586-linux-thread-multi
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/lib/perl5/5.8.0/i586-linux-thread-multi/CORE
PERL = /usr/bin/perl
FULLPERL = /usr/bin/perl
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERL = $(PERL)
ABSPERLRUN = $(ABSPERL)
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULL_AR = /usr/bin/ar
PERL_CORE = 0
NOOP = $(SHELL) -c true
NOECHO = @

VERSION_MACRO = VERSION
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc

MAKEMAKER = /usr/lib/perl5/5.8.0/ExtUtils/MakeMaker.pm
MM_VERSION = 6.03

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = Tk/XML/WizardMaker
BASEEXT = WizardMaker
PARENT_NAME = Tk::XML
DLBASE = $(BASEEXT)
VERSION_FROM = WizardMaker.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic

# Handy lists of source code files:
XS_FILES= 
C_FILES = 
O_FILES = 
H_FILES = 
MAN1PODS = 
MAN3PODS = WizardMaker.pm
INST_MAN1DIR = blib/man1
MAN1EXT = 1
INSTALLMAN1DIR = $(PREFIX)/share/man/man1
INSTALLSITEMAN1DIR = $(PREFIX)/share/man/man1
INST_MAN3DIR = blib/man3
MAN3EXT = 3pm
INSTALLMAN3DIR = $(PREFIX)/share/man/man3
INSTALLSITEMAN3DIR = $(PREFIX)/share/man/man3
PERM_RW = 644
PERM_RWX = 755

# work around a famous dec-osf make(1) feature(?):
makemakerdflt: all

.SUFFIXES: .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

# Nick wanted to get rid of .PRECIOUS. I don't remember why. I seem to recall, that
# some make implementations will delete the Makefile when we rebuild it. Because
# we call false(1) when we rebuild it. So make(1) is not completely wrong when it
# does so. Our milage may vary.
# .PRECIOUS: Makefile    # seems to be not necessary anymore

.PHONY: all config static dynamic test linkext manifest

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)/Config.pm $(PERL_INC)/config.h

# Where to put things:
INST_LIBDIR      = $(INST_LIB)/Tk/XML
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/Tk/XML

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC  =
INST_DYNAMIC =
INST_BOOT    =

EXPORT_LIST = 

PERL_ARCHIVE = 

PERL_ARCHIVE_AFTER = 

TO_INST_PM = WizardMaker.pm \
	WizardMaker/demos/cat.gif \
	WizardMaker/demos/demo_01.pl \
	WizardMaker/demos/demo_01a.pl \
	WizardMaker/demos/demo_02.pl \
	WizardMaker/demos/demo_03.pl \
	WizardMaker/demos/demo_03a.pl \
	WizardMaker/demos/demo_04.pl \
	WizardMaker/demos/demo_05.pl \
	WizardMaker/demos/demo_06.pl \
	WizardMaker/demos/die1.gif \
	WizardMaker/demos/die2.gif \
	WizardMaker/demos/die3.gif \
	WizardMaker/demos/die4.gif \
	WizardMaker/demos/die5.gif \
	WizardMaker/demos/die6.gif \
	WizardMaker/demos/first.txt \
	WizardMaker/demos/gui.xml \
	WizardMaker/demos/gui_01a.xml \
	WizardMaker/demos/gui_03.xml \
	WizardMaker/demos/gui_03a.xml \
	WizardMaker/demos/gui_04.xml \
	WizardMaker/demos/gui_05.xml \
	WizardMaker/demos/gui_06.xml \
	WizardMaker/demos/last.txt \
	WizardMaker/demos/left_image.gif \
	WizardMaker/demos/opt_01a.xml \
	WizardMaker/demos/top_image.gif

PM_TO_BLIB = WizardMaker/demos/demo_04.pl \
	blib/lib/Tk/XML/WizardMaker/demos/demo_04.pl \
	WizardMaker/demos/first.txt \
	blib/lib/Tk/XML/WizardMaker/demos/first.txt \
	WizardMaker/demos/gui_04.xml \
	blib/lib/Tk/XML/WizardMaker/demos/gui_04.xml \
	WizardMaker/demos/demo_03a.pl \
	blib/lib/Tk/XML/WizardMaker/demos/demo_03a.pl \
	WizardMaker/demos/gui_06.xml \
	blib/lib/Tk/XML/WizardMaker/demos/gui_06.xml \
	WizardMaker.pm \
	blib/lib/Tk/XML/WizardMaker.pm \
	WizardMaker/demos/gui_05.xml \
	blib/lib/Tk/XML/WizardMaker/demos/gui_05.xml \
	WizardMaker/demos/left_image.gif \
	blib/lib/Tk/XML/WizardMaker/demos/left_image.gif \
	WizardMaker/demos/gui_03.xml \
	blib/lib/Tk/XML/WizardMaker/demos/gui_03.xml \
	WizardMaker/demos/demo_02.pl \
	blib/lib/Tk/XML/WizardMaker/demos/demo_02.pl \
	WizardMaker/demos/die2.gif \
	blib/lib/Tk/XML/WizardMaker/demos/die2.gif \
	WizardMaker/demos/gui_01a.xml \
	blib/lib/Tk/XML/WizardMaker/demos/gui_01a.xml \
	WizardMaker/demos/demo_01a.pl \
	blib/lib/Tk/XML/WizardMaker/demos/demo_01a.pl \
	WizardMaker/demos/die6.gif \
	blib/lib/Tk/XML/WizardMaker/demos/die6.gif \
	WizardMaker/demos/demo_06.pl \
	blib/lib/Tk/XML/WizardMaker/demos/demo_06.pl \
	WizardMaker/demos/demo_03.pl \
	blib/lib/Tk/XML/WizardMaker/demos/demo_03.pl \
	WizardMaker/demos/opt_01a.xml \
	blib/lib/Tk/XML/WizardMaker/demos/opt_01a.xml \
	WizardMaker/demos/gui.xml \
	blib/lib/Tk/XML/WizardMaker/demos/gui.xml \
	WizardMaker/demos/die1.gif \
	blib/lib/Tk/XML/WizardMaker/demos/die1.gif \
	WizardMaker/demos/die5.gif \
	blib/lib/Tk/XML/WizardMaker/demos/die5.gif \
	WizardMaker/demos/top_image.gif \
	blib/lib/Tk/XML/WizardMaker/demos/top_image.gif \
	WizardMaker/demos/die3.gif \
	blib/lib/Tk/XML/WizardMaker/demos/die3.gif \
	WizardMaker/demos/demo_05.pl \
	blib/lib/Tk/XML/WizardMaker/demos/demo_05.pl \
	WizardMaker/demos/die4.gif \
	blib/lib/Tk/XML/WizardMaker/demos/die4.gif \
	WizardMaker/demos/gui_03a.xml \
	blib/lib/Tk/XML/WizardMaker/demos/gui_03a.xml \
	WizardMaker/demos/cat.gif \
	blib/lib/Tk/XML/WizardMaker/demos/cat.gif \
	WizardMaker/demos/last.txt \
	blib/lib/Tk/XML/WizardMaker/demos/last.txt \
	WizardMaker/demos/demo_01.pl \
	blib/lib/Tk/XML/WizardMaker/demos/demo_01.pl


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(PERLRUN) -e 'use AutoSplit;  autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1) ;'



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:

SHELL = /bin/sh
CHMOD = chmod
CP = cp
LD = cc
MV = mv
NOOP = $(SHELL) -c true
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1

# The following is a portable way to say mkdir -p
# To see which directories are created, change the if 0 to if 1
MKPATH = $(PERLRUN) "-MExtUtils::Command" -e mkpath

# This helps us to minimize the effect of the .exists files A yet
# better solution would be to have a stable file in the perl
# distribution with a timestamp of zero. But this solution doesn't
# need any changes to the core distribution and works with older perls
EQUALIZE_TIMESTAMP = $(PERLRUN) "-MExtUtils::Command" -e eqtime

# Here we warn users that an old packlist file was found somewhere,
# and that they should call some uninstall routine
WARN_IF_OLD_PACKLIST = $(PERL) -we 'exit unless -f $$ARGV[0];' \
-e 'print "WARNING: I have found an old package in\n";' \
-e 'print "\t$$ARGV[0].\n";' \
-e 'print "Please make sure the two installations are not conflicting\n";'

UNINST=0
VERBINST=0

MOD_INSTALL = $(PERL) "-I$(INST_LIB)" "-I$(PERL_LIB)" "-MExtUtils::Install" \
-e "install({@ARGV},'$(VERBINST)',0,'$(UNINST)');"

DOC_INSTALL = $(PERL) -e '$$\="\n\n";' \
-e 'print "=head2 ", scalar(localtime), ": C<", shift, ">", " L<", $$arg=shift, "|", $$arg, ">";' \
-e 'print "=over 4";' \
-e 'while (defined($$key = shift) and defined($$val = shift)){print "=item *";print "C<$$key: $$val>";}' \
-e 'print "=back";'

UNINSTALL =   $(PERLRUN) "-MExtUtils::Install" \
-e 'uninstall($$ARGV[0],1,1); print "\nUninstall is deprecated. Please check the";' \
-e 'print " packlist above carefully.\n  There may be errors. Remove the";' \
-e 'print " appropriate files manually.\n  Sorry for the inconveniences.\n"'


# --- MakeMaker dist section:
ZIPFLAGS = -r
TO_UNIX = @$(NOOP)
TAR = tar
POSTOP = @$(NOOP)
ZIP = zip
DIST_DEFAULT = tardist
CI = ci -u
SHAR = shar
COMPRESS = gzip --best
DIST_CP = best
PREOP = @$(NOOP)
TARFLAGS = cvf
DISTVNAME = $(DISTNAME)-$(VERSION)
SUFFIX = .gz
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIB="$(LIB)"\
	LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"\
	OPTIMIZE="$(OPTIMIZE)"\
	PASTHRU_DEFINE="$(PASTHRU_DEFINE)"\
	PASTHRU_INC="$(PASTHRU_INC)"


# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:

all :: pure_all manifypods
	@$(NOOP)

pure_all :: config pm_to_blib subdirs linkext
	@$(NOOP)

subdirs :: $(MYEXTLIB)
	@$(NOOP)

config :: Makefile $(INST_LIBDIR)/.exists
	@$(NOOP)

config :: $(INST_ARCHAUTODIR)/.exists
	@$(NOOP)

config :: $(INST_AUTODIR)/.exists
	@$(NOOP)

$(INST_AUTODIR)/.exists :: /usr/lib/perl5/5.8.0/i586-linux-thread-multi/CORE/perl.h
	@$(MKPATH) $(INST_AUTODIR)
	@$(EQUALIZE_TIMESTAMP) /usr/lib/perl5/5.8.0/i586-linux-thread-multi/CORE/perl.h $(INST_AUTODIR)/.exists

	-@$(CHMOD) $(PERM_RWX) $(INST_AUTODIR)

$(INST_LIBDIR)/.exists :: /usr/lib/perl5/5.8.0/i586-linux-thread-multi/CORE/perl.h
	@$(MKPATH) $(INST_LIBDIR)
	@$(EQUALIZE_TIMESTAMP) /usr/lib/perl5/5.8.0/i586-linux-thread-multi/CORE/perl.h $(INST_LIBDIR)/.exists

	-@$(CHMOD) $(PERM_RWX) $(INST_LIBDIR)

$(INST_ARCHAUTODIR)/.exists :: /usr/lib/perl5/5.8.0/i586-linux-thread-multi/CORE/perl.h
	@$(MKPATH) $(INST_ARCHAUTODIR)
	@$(EQUALIZE_TIMESTAMP) /usr/lib/perl5/5.8.0/i586-linux-thread-multi/CORE/perl.h $(INST_ARCHAUTODIR)/.exists

	-@$(CHMOD) $(PERM_RWX) $(INST_ARCHAUTODIR)

config :: $(INST_MAN3DIR)/.exists
	@$(NOOP)


$(INST_MAN3DIR)/.exists :: /usr/lib/perl5/5.8.0/i586-linux-thread-multi/CORE/perl.h
	@$(MKPATH) $(INST_MAN3DIR)
	@$(EQUALIZE_TIMESTAMP) /usr/lib/perl5/5.8.0/i586-linux-thread-multi/CORE/perl.h $(INST_MAN3DIR)/.exists

	-@$(CHMOD) $(PERM_RWX) $(INST_MAN3DIR)

help:
	perldoc ExtUtils::MakeMaker


# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	@$(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make dynamic"
#dynamic :: Makefile $(INST_DYNAMIC) $(INST_BOOT) $(INST_PM)
dynamic :: Makefile $(INST_DYNAMIC) $(INST_BOOT)
	@$(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
#static :: Makefile $(INST_STATIC) $(INST_PM)
static :: Makefile $(INST_STATIC)
	@$(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:
POD2MAN_EXE = /usr/bin/pod2man
POD2MAN = $(PERL) -we '%m=@ARGV;for (keys %m){' \
-e 'next if -e $$m{$$_} && -M $$m{$$_} < -M $$_ && -M $$m{$$_} < -M "Makefile";' \
-e 'print "Manifying $$m{$$_}\n";' \
-e 'system(q[$(PERLRUN) $(POD2MAN_EXE) ].qq[$$_>$$m{$$_}])==0 or warn "Couldn\047t install $$m{$$_}\n";' \
-e 'chmod(oct($(PERM_RW)), $$m{$$_}) or warn "chmod $(PERM_RW) $$m{$$_}: $$!\n";}'

manifypods : pure_all WizardMaker.pm
	@$(POD2MAN) \
	WizardMaker.pm \
	$(INST_MAN3DIR)/Tk::XML::WizardMaker.$(MAN3EXT)

# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	-rm -rf ./blib $(MAKE_APERL_FILE) $(INST_ARCHAUTODIR)/extralibs.all perlmain.c tmon.out mon.out so_locations pm_to_blib *$(OBJ_EXT) *$(LIB_EXT) perl.exe perl perl$(EXE_EXT) $(BOOTSTRAP) $(BASEEXT).bso $(BASEEXT).def lib$(BASEEXT).def $(BASEEXT).exp $(BASEEXT).x core core.*perl.*.? *perl.core
	-mv Makefile Makefile.old $(DEV_NULL)


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	rm -rf $(INST_AUTODIR) $(INST_ARCHAUTODIR)
	rm -rf $(DISTVNAME)
	rm -f  blib/lib/Tk/XML/WizardMaker/demos/demo_04.pl
	rm -f blib/lib/Tk/XML/WizardMaker/demos/first.txt
	rm -f blib/lib/Tk/XML/WizardMaker/demos/gui_04.xml
	rm -f blib/lib/Tk/XML/WizardMaker/demos/demo_03a.pl
	rm -f blib/lib/Tk/XML/WizardMaker/demos/gui_06.xml blib/lib/Tk/XML/WizardMaker.pm
	rm -f blib/lib/Tk/XML/WizardMaker/demos/gui_05.xml
	rm -f blib/lib/Tk/XML/WizardMaker/demos/left_image.gif
	rm -f blib/lib/Tk/XML/WizardMaker/demos/gui_03.xml
	rm -f blib/lib/Tk/XML/WizardMaker/demos/demo_02.pl
	rm -f blib/lib/Tk/XML/WizardMaker/demos/die2.gif
	rm -f blib/lib/Tk/XML/WizardMaker/demos/gui_01a.xml
	rm -f blib/lib/Tk/XML/WizardMaker/demos/demo_01a.pl
	rm -f blib/lib/Tk/XML/WizardMaker/demos/die6.gif
	rm -f blib/lib/Tk/XML/WizardMaker/demos/demo_06.pl
	rm -f blib/lib/Tk/XML/WizardMaker/demos/demo_03.pl
	rm -f blib/lib/Tk/XML/WizardMaker/demos/opt_01a.xml
	rm -f blib/lib/Tk/XML/WizardMaker/demos/gui.xml
	rm -f blib/lib/Tk/XML/WizardMaker/demos/die1.gif
	rm -f blib/lib/Tk/XML/WizardMaker/demos/die5.gif
	rm -f blib/lib/Tk/XML/WizardMaker/demos/top_image.gif
	rm -f blib/lib/Tk/XML/WizardMaker/demos/die3.gif
	rm -f blib/lib/Tk/XML/WizardMaker/demos/demo_05.pl
	rm -f blib/lib/Tk/XML/WizardMaker/demos/die4.gif
	rm -f blib/lib/Tk/XML/WizardMaker/demos/gui_03a.xml
	rm -f blib/lib/Tk/XML/WizardMaker/demos/cat.gif
	rm -f blib/lib/Tk/XML/WizardMaker/demos/last.txt
	rm -f blib/lib/Tk/XML/WizardMaker/demos/demo_01.pl
	rm -rf Makefile Makefile.old


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ *.orig */*~ */*.orig



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT)
	@$(PERL) -le 'print "Warning: Makefile possibly out of date with $$vf" if ' \
	    -e '-e ($$vf="$(VERSION_FROM)") and -M $$vf < -M "Makefile";'

tardist : $(DISTVNAME).tar$(SUFFIX)

zipdist : $(DISTVNAME).zip

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) \
		$(DISTVNAME).tar$(SUFFIX) > \
		$(DISTVNAME).tar$(SUFFIX)_uu

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker dist_dir section:
distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"



# --- MakeMaker dist_test section:

disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)


# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
		-e "@all = keys %{ maniread() };" \
		-e 'print("Executing $(CI) @all\n"); system("$(CI) @all");' \
		-e 'print("Executing $(RCS_LABEL) ...\n"); system("$(RCS_LABEL) @all");'


# --- MakeMaker install section:

install :: all pure_install doc_install

install_perl :: all pure_perl_install doc_perl_install

install_site :: all pure_site_install doc_site_install

install_vendor :: all pure_vendor_install doc_vendor_install

pure_install :: pure_$(INSTALLDIRS)_install

doc_install :: doc_$(INSTALLDIRS)_install
	@echo Appending installation info to $(INSTALLARCHLIB)/perllocal.pod

pure__install : pure_site_install
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install ::
	@$(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(INSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(INSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(INSTALLARCHLIB) \
		$(INST_BIN) $(INSTALLBIN) \
		$(INST_SCRIPT) $(INSTALLSCRIPT) \
		$(INST_MAN1DIR) $(INSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(INSTALLMAN3DIR)
	@$(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install ::
	@$(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(INSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(INSTALLSITELIB) \
		$(INST_ARCHLIB) $(INSTALLSITEARCH) \
		$(INST_BIN) $(INSTALLSITEBIN) \
		$(INST_SCRIPT) $(INSTALLSCRIPT) \
		$(INST_MAN1DIR) $(INSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(INSTALLSITEMAN3DIR)
	@$(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install ::
	@$(MOD_INSTALL) \
		$(INST_LIB) $(INSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(INSTALLVENDORARCH) \
		$(INST_BIN) $(INSTALLVENDORBIN) \
		$(INST_SCRIPT) $(INSTALLSCRIPT) \
		$(INST_MAN1DIR) $(INSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(INSTALLVENDORMAN3DIR)

doc_perl_install ::
	-@$(MKPATH) $(INSTALLARCHLIB)
	-@$(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(INSTALLARCHLIB)/perllocal.pod

doc_site_install ::
	-@$(MKPATH) $(INSTALLARCHLIB)
	-@$(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(INSTALLARCHLIB)/perllocal.pod

doc_vendor_install ::


uninstall :: uninstall_from_$(INSTALLDIRS)dirs

uninstall_from_perldirs ::
	@$(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	@$(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE:
	@$(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:

# We take a very conservative approach here, but it\'s worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
Makefile : Makefile.PL $(CONFIGDEP)
	@echo "Makefile out-of-date with respect to $?"
	@echo "Cleaning current config before rebuilding Makefile..."
	-@$(RM_F) Makefile.old
	-@$(MV) Makefile Makefile.old
	-$(MAKE) -f Makefile.old clean $(DEV_NULL) || $(NOOP)
	$(PERLRUN) Makefile.PL 
	@echo "==> Your Makefile has been rebuilt. <=="
	@echo "==> Please rerun the make command.  <=="
	false



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) -f $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE)
	@echo Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	@$(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE)

test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd:
	@$(PERL) -e "print qq{<SOFTPKG NAME=\"$(DISTNAME)\" VERSION=\"0,90,0,0\">\n\t<TITLE>$(DISTNAME)</TITLE>\n\t<ABSTRACT>easy way to build the Software Assistants and</ABSTRACT>\n\t<AUTHOR>Viktor Zimmermann &lt;ZiMTraining\@gmx.net&gt;</AUTHOR>\n}" > $(DISTNAME).ppd
	@$(PERL) -e "print qq{\t<IMPLEMENTATION>\n\t\t<DEPENDENCY NAME=\"Tk\" VERSION=\"8,0,0,0\" />\n\t\t<DEPENDENCY NAME=\"XML-Simple\" VERSION=\"1,0,0,0\" />\n}" >> $(DISTNAME).ppd
	@$(PERL) -e "print qq{\t\t<OS NAME=\"$(OSNAME)\" />\n\t\t<ARCHITECTURE NAME=\"i586-linux-thread-multi\" />\n\t\t<CODEBASE HREF=\"\" />\n\t</IMPLEMENTATION>\n</SOFTPKG>\n}" >> $(DISTNAME).ppd

# --- MakeMaker pm_to_blib section:

pm_to_blib: $(TO_INST_PM)
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/demo_04.pl blib/lib/Tk/XML/WizardMaker/demos/demo_04.pl WizardMaker/demos/first.txt blib/lib/Tk/XML/WizardMaker/demos/first.txt}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/gui_04.xml blib/lib/Tk/XML/WizardMaker/demos/gui_04.xml WizardMaker/demos/demo_03a.pl blib/lib/Tk/XML/WizardMaker/demos/demo_03a.pl}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/gui_06.xml blib/lib/Tk/XML/WizardMaker/demos/gui_06.xml WizardMaker.pm blib/lib/Tk/XML/WizardMaker.pm WizardMaker/demos/gui_05.xml blib/lib/Tk/XML/WizardMaker/demos/gui_05.xml}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/gui_03.xml blib/lib/Tk/XML/WizardMaker/demos/gui_03.xml WizardMaker/demos/left_image.gif blib/lib/Tk/XML/WizardMaker/demos/left_image.gif}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/die2.gif blib/lib/Tk/XML/WizardMaker/demos/die2.gif WizardMaker/demos/demo_02.pl blib/lib/Tk/XML/WizardMaker/demos/demo_02.pl}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/gui_01a.xml blib/lib/Tk/XML/WizardMaker/demos/gui_01a.xml WizardMaker/demos/demo_01a.pl blib/lib/Tk/XML/WizardMaker/demos/demo_01a.pl}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/die6.gif blib/lib/Tk/XML/WizardMaker/demos/die6.gif WizardMaker/demos/demo_06.pl blib/lib/Tk/XML/WizardMaker/demos/demo_06.pl}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/demo_03.pl blib/lib/Tk/XML/WizardMaker/demos/demo_03.pl WizardMaker/demos/opt_01a.xml blib/lib/Tk/XML/WizardMaker/demos/opt_01a.xml}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/die5.gif blib/lib/Tk/XML/WizardMaker/demos/die5.gif WizardMaker/demos/die1.gif blib/lib/Tk/XML/WizardMaker/demos/die1.gif}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/gui.xml blib/lib/Tk/XML/WizardMaker/demos/gui.xml WizardMaker/demos/top_image.gif blib/lib/Tk/XML/WizardMaker/demos/top_image.gif}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/die3.gif blib/lib/Tk/XML/WizardMaker/demos/die3.gif WizardMaker/demos/gui_03a.xml blib/lib/Tk/XML/WizardMaker/demos/gui_03a.xml}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/die4.gif blib/lib/Tk/XML/WizardMaker/demos/die4.gif WizardMaker/demos/demo_05.pl blib/lib/Tk/XML/WizardMaker/demos/demo_05.pl}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/cat.gif blib/lib/Tk/XML/WizardMaker/demos/cat.gif WizardMaker/demos/demo_01.pl blib/lib/Tk/XML/WizardMaker/demos/demo_01.pl}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(PERLRUNINST) "-MExtUtils::Install" \
	-e "pm_to_blib({qw{WizardMaker/demos/last.txt blib/lib/Tk/XML/WizardMaker/demos/last.txt}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(TOUCH) $@

# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
