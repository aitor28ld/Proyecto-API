% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
						<h1>Bienvenido {{perfil["display_name"]}}</h1><br>
						% if perfil["images"] = "":
							 <h3> Sin foto de perfil</h3> 
						% else:
							<img src="{{perfil["images"][0]["url"]}}" height="230" width="290"><br>
						%end 
						<p> {{perfil}}</p>
						<a href="{{perfil["external_urls"]["spotify"]}}">Más información sobre tu perfil</a>
					</section>

			</div>
% include('footer.tpl')
