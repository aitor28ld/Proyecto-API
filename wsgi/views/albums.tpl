% include('header.tpl')
				<div id="main">

				<!-- Two -->
					<section id="two">
						<a href="http://spotype-aitor28ld.rhcloud.com"> Volver atrás</a><br>
						%for i in album["albums"]["items"]:
							<a href="{{i["external_urls"]["spotify"]}}"><img src="{{i["images"][0]["url"]}}" height="300" width="300"></p>
							<iframe src="https://embed.spotify.com/?uri={{i["uri"]}}" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>
						%end
					</section>

			</div>
% include('footer.tpl')
