#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import run
import os
os.environ['OPENSHIFT_REPO_DIR']="/home/usuario/spotype/"
import mybottleapp
run(host='0.0.0.0', port=8080, debug=True)
