#!/usr/bin/env python

from aiohttp import web


async def hello(request):
    return web.Response(text="Hello, world! again")

async def init_app():
    app = web.Application()
    app.add_routes([web.get('/', hello)])
    return app

