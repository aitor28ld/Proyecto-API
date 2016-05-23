% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					%for i in listas:
						<a href="{{i["external_urls"]["spotify"]}}">Más información</a><br>
						<iframe src="https://embed.spotify.com/?uri={{i["uri"]}}" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>
					%end
					</section>

			</div>
% include('footer.tpl')
