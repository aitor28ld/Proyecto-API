from bottle import Bottle, route, run, request, template, default_app, static_file, get, post, response, redirect 
import requests
from requests_oauthlib import OAuth2Session
from oauthlib.oauth2 import TokenExpiredError
from urlparse import parse_qs
import json
import os

client_id='d4be1938c2954285b3da4eb6ed81743c'
client_secret='f0c4c13ea86a4d98812a56a1b57c876b'
redirect_uri = 'http://spotype-aitor28ld.rhcloud.com/callback'
scope = ['playlist-modify-public playlist-modify-private']
token_url = "https://accounts.spotify.com/api/token"


def token_valido():
  token=request.get_cookie("token", secret='some-secret-key')
  if token:
    token_ok = True
    try:
      oauth2 = OAuth2Session(client_id, token=token)
      r = oauth2.get('https://www.googleapis.com/oauth2/v1/userinfo')
    except TokenExpiredError as e:
      token_ok = False
  else:
    token_ok = False
  return token_ok

@get('/login')
def LOGIN():
  if token_valido():
    redirect("/perfil")
  else:
    response.set_cookie("token", '',max_age=0)
    oauth2 = OAuth2Session(client_id, redirect_uri=redirect_uri,scope=scope)
    authorization_url, state = oauth2.authorization_url('https://accounts.spotify.com/authorize/')
    response.set_cookie("oauth_state", state)
    redirect(authorization_url)

@get('/callback')
def get_token():

  oauth2 = OAuth2Session(client_id, state=request.cookies.oauth_state,redirect_uri=redirect_uri)
  token = oauth2.fetch_token(token_url, client_secret=client_secret,authorization_response=request.url)
  response.set_cookie("token", token,secret='some-secret-key')
  redirect("/perfil")

@get('/perfil')
def personal():
	token = request.get_cookie("token", secret='some-secret-key')
	tokens = token["token_type"]+" "+token["access_token"]
	headers = {"Accept":"aplication/json","Authorization":tokens}
	perfil = requests.get("https://api.spotify.com/v1/me", headers=headers)
	if perfil.status_code == 200:
		cuenta = perfil.json()
		
	return template('perfil.tpl', perfil=cuenta)

@get('/formlista')
def formlista():
	return template('lista.tpl')

@post('/lista')
def lista():
	nombreid = request.forms.get('creador')
	nombrepl = request.forms.get('name')
	publica = request.forms.get('public')
	token = request.get_cookie("token", secret='some-secret-key')
	tokens = token["token_type"]+" "+token["access_token"]
	headers = {"Accept":"aplication/json","Authorization":tokens}
	data = json.dumps({"name":nombrepl,"public":publica})
	lista = requests.post("https://api.spotify.com/v1/users/"+str(nombreid)+"/playlists",headers=headers,data=data)
	if lista.status_code == 200:
		listas=lista.json()
		return template('creador.tpl', listas=listas)

#@post('/create')
#def playlist():
#	token = request.get_cookie("token", secret='some-secret-key')
#	tokens = token["token_type"]+" "+token["access_token"]
#	headers = {"Accept":"aplication/json","Authorization":tokens}
#	data = json.dumps({"name":nombrepl,"public":publica})
#	lista = requests.post("https://api.spotify.com/v1/users/"+str(nombreid)+"/playlists",headers=headers,data=data)
#	if lista.status_code == 200:
#		listas=lista.json()
	
#	return template('creador.tpl', listas=listas)
	

@route('/')
def index():
    return template('index.tpl')

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
	if opciones == "track":
		canciones = requests.get("https://api.spotify.com/v1/search", params=datos)
		if canciones.status_code == 200:
			cancion = canciones.json()
		return template("canciones.tpl", canciones=cancion)
	
	if opciones == "album":
		albums = requests.get("https://api.spotify.com/v1/search", params=datos)
		if albums.status_code == 200:
			album = albums.json()
		
		return template("albums.tpl", album=album)
		
	if opciones == "playlist":
		lista = requests.get("https://api.spotify.com/v1/search", params=datos)
		if lista.status_code == 200:
			playlist = lista.json()
		
		return template('playlist.tpl', playlist=playlist)


@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')



# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
os.environ['OAUTHLIB_INSECURE_TRANSPORT'] = '1'
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
