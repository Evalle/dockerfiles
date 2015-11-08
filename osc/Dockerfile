FROM opensuse:latest
MAINTAINER mmeister <mmeister@suse.de>

RUN zypper --non-interactive --no-gpg-checks ref
RUN zypper --non-interactive --no-gpg-checks install sudo
RUN zypper --non-interactive --no-gpg-checks install --no-recommends osc
RUN zypper --non-interactive --no-gpg-checks install rpm-build
RUN zypper --non-interactive --no-gpg-checks install build
