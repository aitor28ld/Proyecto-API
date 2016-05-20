% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
						<h1>Bienvenido {{perfil["display_name"]}}</h1><br>
						<img src="{{perfil["images"][0]["url"]}}" height="250" width="290"><br>
						<a href="{{perfil["external_urls"]["spotify"]}}">Más información sobre tu perfil</a>
					</section>

			</div>
% include('footer.tpl')
