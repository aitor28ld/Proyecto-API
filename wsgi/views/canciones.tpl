% include('header.tpl')
				<!-- Header -->
					<header id="header">
						<a href="http://spotype-aitor28ld.rhcloud.com"> Volver atrás</a><br>
						%for i in canciones["tracks"]["items"]:
							<ul><a href="{{i["external_urls"]["spotify"]}}">{{i["name"]}}</a>
							<iframe src="https://embed.spotify.com/?uri={{i["uri"]}}" width="300" height="80" frameborder="0" allowtransparency="true"></iframe>
							</ul>
						%end
					</header>
% include('footer.tpl')
