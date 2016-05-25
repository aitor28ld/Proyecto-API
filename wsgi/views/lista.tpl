% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					<form action ="lista" method="post">
						<input name="id" type="text">Introduce tu id (username)</input><br>
						<input name="name" type="text">Introduce el nombre de la lista de reproducción</input><br>
						<input name="public" type="checkbox" value="true">¿Quieres que sea pública?(Escribe true o false):</input><br>
						<input value="Enviar" type="submit"/>
					</form >
					</section>

			</div>
% include('footer.tpl')
