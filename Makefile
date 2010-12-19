# Note: This is not a release port! This Makefile is for fetching, building, and running
# the latest development version. I will create ports for new releases when they become
# available.
#
# See also:
#   http://www.epiar.net/
#   https://github.com/knowknowledge/Epiar

PORTNAME=	epiar
PORTVERSION=	0.5devel
CATEGORIES=	games

# Matt's repository:
MASTER_SITES=	https://github.com/knowknowledge/Epiar/tarball/master/

DISTNAME=	epiar-${PORTVERSION}
EXTRACT_SUFX=	.tar.gz
FETCH_ARGS=	-Fpr

MAINTAINER=	rikus+epiar@dusty.rikus.org
COMMENT=	A space adventure/trading game

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
BUILD_DEPENDS+=	pkg-config:${PORTSDIR}/devel/pkg-config

USE_SDL=	sdl image mixer
USE_GNOME=	libxml2
LIB_DEPENDS+=	ftgl.2:${PORTSDIR}/graphics/ftgl

#USE_AUTOTOOLS=	aclocal:111 autoheader:268 automake:111 autoconf:268
USE_AUTOTOOLS=	aclocal autoheader automake autoconf
AUTOMAKE_ARGS=	--add-missing --copy
ACLOCAL_ARGS+=	-I${LOCALBASE}/share/aclocal

MAKE_JOBS_SAFE=	yes

EPIAR_PATH=	${WRKDIR}/${DISTNAME}

post-extract:
	@mv -v ${WRKDIR}/knowknowledge-Epiar-* ${WRKDIR}/${DISTNAME}

install:
	@echo "There is no 'install' capability in this pre-release version. To use it: make build; make run"

run: build
	if /bin/test "${UID}" -gt 0 -a -x "${EPIAR_PATH}/epiar"; then cd ${EPIAR_PATH} && ./epiar; fi

.include <bsd.port.mk>
