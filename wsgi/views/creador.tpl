% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					%for i in listas:
						<a href="{{i["external_urls"]["spotify"]}}">Más información</a><br>
						<iframe src="https://embed.spotify.com/?uri={{i["uri"]}}" width="240" height="290" frameborder="0" allowtransparency="true"></iframe>
					%end
					</section>

			</div>
% include('footer.tpl')
