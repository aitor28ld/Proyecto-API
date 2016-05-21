% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					<form action ="lista" method="post">
						<input name="id" type="text">Introduce tu id (username)</input><br>
						<input name="name" type="text">Introduce el nombre de la lista de reproducción</input><br>
						<input name="public" type="text">¿Quieres que sea pública?(Escribe true(verdad) o false):</input><br>
						<input value="Enviar" type="submit"/>
						
					</section>

			</div>
% include('footer.tpl')
