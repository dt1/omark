<!-- This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/. -->

% if inv:
% include('global/header_inv.tpl')
% else:
% include('global/header.tpl')
%end

<div class="off-canvas-wrapper">

  <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

% include('global/top_bar.tpl')

% if inv:
% include('global/top_nav_inv.tpl')
% else:
% include('global/top_nav.tpl')
% end


    <!-- original content goes in this container -->

    <div class="off-canvas-content" data-off-canvas-content>

      <div class="expanded row">
      	   <div class="medium-2 columns">
	   <h4 color = >{{warehouse_name}}</h4>

	   	<ul class="vertical menu">
		<li><a href = "/warehouses/{{wh_link}}/information">Information</a></li>
		<li><a href = "/warehouses/{{wh_link}}/running-inventory">Running Inventory</a></li>
		<li><a href = "/warehouses/{{wh_link}}/pallet-locations">Pallet Locations</a></li>
		<li><a href = "/warehouses/{{wh_link}}/pallets">Pallets</a></li>
		<li><a href = "/warehouses/{{wh_link}}/product-status">Product Status</a></li>
		<li><a href = "/warehouses/{{wh_link}}/qc-log">QC Logs</a></li>
		</ul>
	   </div>
	   
      	   <div class="medium-10 columns">
	   </div>      
      </div>

    </div>



  <!-- close wrapper, no more content after this -->

  </div>

</div>

% include('global/end_body.tpl')