from bottle import Bottle, route, run, request, template, default_app, static_file
import requests
import json

@route('/')
def index():
    return template('template_index.tpl')

@route('/search')
def search():
	r= requests.get("https://api.spotify.com/v1/search?q=Linkin%20Park&type=album")
	if r.status_code == 200:
		discos=r.text
		dis = json.loads(discos)
		for album in dis["albums"]["items"]:
			listas = [album["name"],album["href"]]
			listas2 = [listas]
		
	return template('search.tpl',albums=listas2)


@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')



# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
