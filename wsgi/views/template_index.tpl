% include('header.tpl')
				<!-- Header -->
					<header id="header">
						<h1>Spotype</h1>
						<p>Buscador de música y artistas gracias a <a href="http://www.spotify.com">Spotify</a></p>
						<br>
						<form action ="search" method="post">
						<input name="buscador" type="text" />
						<select name="opciones">
							<option value="artist">Artista</option>
							<option value="track">Canción</option>
							<option value="album">Album</option>
							<option value="playlist">Lista de Reproducción</option>
						</select>
						<input value="Buscar" type="submit"/>
						<nav>
							<ul>
								<li><a href="http://www.github.com/aitor28ld" class="icon fa-github"><span class="label">Github</span></a></li>
								<li><a href="http://wordpress-aitor28ld.rhcloud.com" class="icon fa-wordpress"><span class="label">Wordpress</span></a></li>
							</ul>
						</nav>
					</header>
% include('footer.tpl')
