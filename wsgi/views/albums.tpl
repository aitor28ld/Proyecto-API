% include('header.tpl')
				<div id="main">

				<!-- Two -->
					<section id="two">
						<a href="http://spotype-aitor28ld.rhcloud.com"> Volver atrás</a><br>
						%for i in albums["albums"]["items"]:
							<ul><p>{{i}}</p>
							</ul>
						%end
					</section>

			</div>
% include('footer.tpl')
