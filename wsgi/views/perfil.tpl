% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
						<h1>Bienvenido {{perfil["display_name"]}}</h1><br>
						<a href="{{perfil["external_urls"]["spotify"]}}"><img src="{{perfil["images"][0]["url"]}}" height="300" width="300">Más información sobre tu perfil</a>
					</section>

			</div>
% include('footer.tpl')
