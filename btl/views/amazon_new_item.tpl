% include('global/header.tpl')

<div class="off-canvas-wrapper">

  <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

% include('global/top_bar.tpl')
% include('global/top_nav.tpl')


    <!-- original content goes in this container -->

    <div class="off-canvas-content" data-off-canvas-content>

      <div class="expanded row">
      	   <div class="medium-2 columns">
	   	<h4 style = "color: #004291;">{{amz_header}}</h4>
	   	<ul class="vertical menu">
			<li><a href = "/products/amazon/{{section}}/new-item">New Item</a></li>
		</ul>
	   </div>
      	   <div class="medium-10 columns">
	   {{fdict}}
	   <form action="/add-amazon-item" method="post">
	     <div class = "row">
	   % for f in fields:
	     <div class = "medium-4 columns">
	   	   <label>{{f[1]}}</label>
	   	   <input></input>
	     </div>
	   % end
	     </div>
	   <input value="Add product" type="submit" class="button" />
	   </form>

	   </div>      
      </div>

    </div>



  <!-- close wrapper, no more content after this -->

  </div>

</div>

% include('global/end_body.tpl')