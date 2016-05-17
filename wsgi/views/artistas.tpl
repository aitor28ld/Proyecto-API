% include('header.tpl')
				<!-- Header -->
					<header id="header">
						<p>Hola</p>
						%for i in artis:
							<a href="{{i["external_urls"]["spotify"]}}">{{i["name"]}}<a></p>
						%end
					</header>
% include('footer.tpl')
