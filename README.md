npc-shell
===
npc/nos OpenAPI command line utility
参见 https://github.com/xiaopal/npc-shell

Update 2018-07-19

开始使用
---
```
$ docker run -i --rm \
    -e NPC_API_KEY=<API_KEY> \
    -e NPC_API_SECRET=<API_SECRET> \
    xiaopal/npc-shell \
	npc api GET /api/v1/namespaces

$ docker run -i --rm \
    -e NPC_API_KEY=<API_KEY> \
    -e NPC_API_SECRET=<API_SECRET> \
    xiaopal/npc-shell \
	npc api POST /api/v1/namespaces '{"name": "test"}'

$ docker run -i --rm \
    -e NPC_API_KEY=<API_KEY> \
    -e NPC_API_SECRET=<API_SECRET> \
    xiaopal/npc-shell \
	npc nos PUT /<bucket>/<object> <file_data|@file>

$ docker run -it --rm \
    -e NPC_API_KEY=<API_KEY> \
    -e NPC_API_SECRET=<API_SECRET> \
    xiaopal/npc-shell

```
