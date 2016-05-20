% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					%for i in playlist["playlists"]["items"]:
						<span>Propietario {{i["owner"]["id"]}}<span>
						<a href="{{i["external_urls"]["spotify"]}}">{{i["name"]}}</a><br>
					%end
					</section>

			</div>
% include('footer.tpl')
