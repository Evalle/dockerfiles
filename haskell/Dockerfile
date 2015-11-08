FROM opensuse:13.2

MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"
ENV REFRESHED_AT 2015-15-04

RUN zypper -n --gpg-auto-import-keys refresh
RUN zypper -n --gpg-auto-import-keys update
RUN zypper -n --gpg-auto-import-keys install ghc cabal-install ghc-Cabal ghc-Cabal-devel

CMD [ "/bin/bash" ]
