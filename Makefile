# New ports collection makefile for:	epiar
# Date created:				16 November 2010
# Whom:					Rikus Goodell
#
# $FreeBSD$
#

PORTNAME=	epiar
PORTVERSION=	0.4.2
CATEGORIES=	games
MASTER_SITES=	http://epiar.net/files/epiar/releases/0.4.0/
DISTNAME=	epiar-${PORTVERSION}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	rikus+epiar@dusty.rikus.org
COMMENT=	A space adventure/trading game

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
BUILD_DEPENDS+=	pkg-config:${PORTSDIR}/devel/pkg-config

USE_SDL=	sdl image mixer
USE_GNOME=	libxml2
LIB_DEPENDS+=	freetype.9:${PORTSDIR}/print/freetype2

USE_AUTOTOOLS=	aclocal:111 autoheader:268 automake:111 autoconf:268
AUTOMAKE_ARGS=	--add-missing --copy
ACLOCAL_ARGS+=	-I${LOCALBASE}/share/aclocal

MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
