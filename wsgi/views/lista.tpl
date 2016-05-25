% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					<form action ="lista" method="post">
						<input name="id" type="text">Introduce tu id (username)<br>
						<input name="name" type="text">Introduce el nombre de la lista de reproducción<br>
						<input type="radio" name="public" value="true" checked />Lista de reproducción pública<br>
						<input type="radio" name="public" value="false">Lista de reproducción privada<br>
						<label for="slideTwo"></label>
						<input value="Enviar" type="submit"/>
					</form >
					</section>

			</div>
% include('footer.tpl')
