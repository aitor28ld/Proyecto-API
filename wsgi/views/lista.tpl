% include('header.tpl')
<!-- Main -->
			<div id="main">

				<section id="four">
					<form action ="lista" method="post">
								<input name="id" type="text">Introduce tu id (username)<br>
								<input name="name" type="text">Introduce el nombre de la lista de reproducción<br>
								<div class="row uniform 50%">
									<div class="4u 12u$(small)">
										<input type="radio" id="demo-priority-low" name="public" value="true" checked />
										<label for="demo-priority-low">Lista de reproducción pública</label><br>
										</div>
								</div>
								<div class="row uniform 50%">
									<div class="4u 12u$(small)">
										<input type="radio" id="demo-priority-normal" name="public" value="false" />
										<label for="demo-priority-normal">Lista de reproducción privada</label><br>
									</div>
								</div>
								<input value="Enviar" type="submit" />
					</form >
				</section>
			</div>
% include('footer.tpl')
