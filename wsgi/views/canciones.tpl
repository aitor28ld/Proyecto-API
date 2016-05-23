% include('header.tpl')
				<div id="main">

				<!-- Two -->
					<section id="two">
						<a href="http://spotype-aitor28ld.rhcloud.com"> Volver atrás</a><br>
						%for i in canciones["tracks"]["items"]:
							<ul><p><a href="{{i["external_urls"]["spotify"]}}">{{i["name"]}}</a>
							<form action="https://api.spotify.com/v1/users/{{identificador}}/playlists/{{playl}}/tracks{{i["uri"].split(":")[2]}}" method="post">
							<button type="submit">Añadir canción a lista de reproducción</button>
							</form>
							<iframe src="https://embed.spotify.com/?uri={{i["uri"]}}" width="300" height="80" frameborder="0" allowtransparency="true"></iframe>
							</ul>
						%end
					</section>

			</div>
% include('footer.tpl')
