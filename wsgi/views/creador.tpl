% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					<a href="{{listas["external_urls"]["spotify"]}}">Más información</a><br>
					<iframe src="https://embed.spotify.com/?uri={{listas["uri"]}}" width="240" height="290" frameborder="0" allowtransparency="true"></iframe>
					<a href="http://spotype-aitor28ld.rhcloud.com/addtracks/{{listas["owner"]["id"]}}/{{listas["uri"].split(":")[4]}}">Empezar a añadir canciones</a>
					</section>

			</div>
% include('footer.tpl')
