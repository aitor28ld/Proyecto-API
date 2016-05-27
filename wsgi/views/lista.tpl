% include('header.tpl')
<!-- Main -->
			<div id="main">

				<section id="four">
					<div class="row uniform 50%">
						<div class="4u 12u$(small)">
							<form action ="lista" method="post">
								<input name="id" type="text">Introduce tu id (username)<br>
								<input name="name" type="text">Introduce el nombre de la lista de reproducción<br>
								<input type="radio" id="demo-priority-low name="public" value="true" />
									<label for="demo-priority-low">Lista de reproducción pública</label><br>
								<input type="radio" id="demo-priority-low name="public" value="false" />
									<label for="demo-priority-low">Lista de reproducción privada</label><br>
								<input value="Enviar" type="submit"/>
							</form >
						</div>
					</div>
				</section>
			</div>
% include('footer.tpl')
