% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					%for i in playlist["playlists"]["items"]:
						Propietario {{i["owner"]["id"]}}<br>
						<a href="{{i["external_urls"]["spotify"]}}">{{i["name"]}}</a> 
					%end
					</section>

			</div>
% include('footer.tpl')
