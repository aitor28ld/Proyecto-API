% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
						<h1>Bienvenido {{perfil["display_name"]}}</h1><br>
						
						<p> {{perfil}}</p>
						<a href="{{perfil["external_urls"]["spotify"]}}">Más información sobre tu perfil</a>
					</section>

			</div>
% include('footer.tpl')
