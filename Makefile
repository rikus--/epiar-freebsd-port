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
DISTNAME=	epiar-0.4.2
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	rikus+epiar@dusty.rikus.org
COMMENT=	A space adventure/trading game

GNU_CONFIGURE=	yes

pre-configure:
	@cd ${WRKSRC} && ${SH} autogen.sh

.include <bsd.port.mk>
