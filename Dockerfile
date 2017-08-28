FROM alpine:3.6

ARG ALPINE_MIRROR=http://mirrors.aliyun.com/alpine
ARG NPC_DL_MIRROR=http://npc.nos-eastchina1.126.net/dl

RUN echo -e "$ALPINE_MIRROR/v3.6/main\n$ALPINE_MIRROR/v3.6/community" >/etc/apk/repositories \
	&& apk add --no-cache bash curl openssl \
	&& ln -sf /bin/bash /bin/sh \
	&& echo '. /etc/profile' >/root/.bashrc \
	&& curl "$NPC_DL_MIRROR/install-npc-shell.sh" | /bin/bash
CMD ["/bin/bash"]