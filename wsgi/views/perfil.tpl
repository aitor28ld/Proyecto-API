% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
						<h1>Bienvenido {{perfil["id"]}}</h1><br>
						%if perfil["images"]!="":
							<img src="{{perfil["images"][0]["url"] height="230" width="290" />
						%else:
							<h2> Sin foto de perfil</h2>
						%end
						<a href="{{perfil["external_urls"]["spotify"]}}">Más información sobre tu perfil</a>
					</section>

			</div>
% include('footer.tpl')
