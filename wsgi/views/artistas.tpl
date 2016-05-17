% include('header.tpl')
				<!-- Header -->
					<header id="header">
						<a href="http://spotype-aitor28ld.rhcloud.com"> Volver atrás</a><br>
						%for i in artis:
							<a href="{{i["external_urls"]["spotify"]}}">{{i["name"]}}<a></p>
						%end
					</header>
% include('footer.tpl')
