from bottle import Bottle, route, run, request, template, default_app, static_file
import requests


@route('/')
def index():
    return template('template_index.tpl')

@route('/search',method='POST')
def search():
	buscador = request.forms.get('buscador')
	opciones = request.forms.get('opciones')
	datos={"q":buscador,"type":opciones}
	if opciones == "artist":
		artistas = requests.get("https://api.spotify.com/v1/search", params=datos)
		if artistas.status_code == 200:
			artista=artistas.json()
			artis=artista["artists"]["items"]
			#for i in artista["artists"]["items"]:
			#	nombre = i["name"]
			#	url = i["external_urls"]["spotify"]
		
		return template('artistas.tpl', artis=artis)
	canciones = requests.get("https://api.spotify.com/v1/search", params=datos)
	if canciones.status_code== 200:
		cancion = canciones.json()
		if opciones == "track":
			return template("canciones.tpl", canciones=cancion, opciones=opciones)
	



#def search():
#	r= requests.get("https://api.spotify.com/v1/search?q=Linkin%20Park&type=album")
#	if r.status_code == 200:
#		discos=r.json()
#		for album in discos[u"albums"][u"items"]:
#			titulos = [album["name"]]
#			albums = [album["href"]]
#			todo = [titulos, albums]
			
#	return template('search.tpl', todo=todo)


@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')



# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
