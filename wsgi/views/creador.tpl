% include('header.tpl')
<!-- Main -->
			<div id="main">

				<!-- Two -->
					<section id="two">
					%for i in listas:
					<h1>{{i["id"]}}</h1>
					%end
					</section>

			</div>
% include('footer.tpl')
