% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					<form action ="lista" method="post">
						<input name="id" type="text">Introduce tu id (username)</input><br>
						<input name="name" type="text">Introduce el nombre de la lista de reproducción</input><br>
						<input type="checkbox" name="public" value="true" checked>Lista de reproducción pública</input>
						<input type="checkbox" name="public" value="false">Lista de reproducción privada</input><br>
						<input value="Enviar" type="submit"/>
					</form >
					</section>

			</div>
% include('footer.tpl')
