% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
						%for i in perfil:
							<h1>Bienvenido {{i["display_name"]}}</h1>
						%end
					</section>

			</div>
% include('footer.tpl')
