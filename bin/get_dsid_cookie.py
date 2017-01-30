#!/usr/bin/env python

import browsercookie
cj = browsercookie.chrome()

for cookie in cj:
    if cookie.name == 'sid':
        print(cookie.value)