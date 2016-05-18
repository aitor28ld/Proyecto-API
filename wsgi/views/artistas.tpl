% include('header.tpl')
			<div id="main">

				<!-- Two -->
					<section id="two">
						<a href="http://spotype-aitor28ld.rhcloud.com"> Volver atrás</a><br>
						%for i in artis:
							<a href="{{i["external_urls"]["spotify"]}}">{{i["name"]}}<a></p>
						%end
					</section>

			</div>
% include('footer.tpl')
