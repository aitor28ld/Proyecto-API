from bottle import Bottle, route, run, request, template, default_app, static_file, get, post, response, redirect 
import requests
from requests_oauthlib import OAuth2Session
from oauthlib.oauth2 import TokenExpiredError
from urlparse import parse_qs
import json
import os

client_id='3e7e48a09b864858b7cede21623b5275'
client_secret='4854538669394dfcb39e31b72af6d460'
redirect_uri = 'http://spotype-aitor28ld.rhcloud.com/callback/'
scope = []
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
    redirect("/listapersonal")
  else:
    response.set_cookie("token", '',max_age=0)
    oauth2 = OAuth2Session(client_id, redirect_uri=redirect_uri,scope=scope)
    authorization_url, state = oauth2.authorization_url('https://accounts.spotify.com/authorize')
    response.set_cookie("oauth_state", state)
    redirect(authorization_url)

@get('/callback/')
def get_token():

  oauth2 = OAuth2Session(client_id, state=request.cookies.oauth_state,redirect_uri=redirect_uri)
  token = oauth2.fetch_token(token_url, client_secret=client_secret,authorization_response=request.url)
  response.set_cookie("token", token,secret='some-secret-key')
  redirect("/listapersonal")


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
		
	#if opciones == "playlist":
		#playlist = requests.get("

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')



# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
