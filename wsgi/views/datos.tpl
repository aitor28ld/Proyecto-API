% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					<h3>Pega en el cuadro el URI de la canción elegida para añadir en la lista de reproducción que acabas de crear</h3>
					<form action="final/{{name}}/{{play}}" method="post">
						<input name="uri" type="text" />
						<input value="Enviar" type="submit" />
					</form>
					</section>

			</div>
% include('footer.tpl')
