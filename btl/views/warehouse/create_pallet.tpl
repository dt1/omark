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
	   <h4 color = >{{wh_info[0][1]}}</h4>
	   % include('warehouse/side_nav_menu.tpl', wh_id = wh_info[0][0])
	   </div>

      	   <div class="medium-10 columns">
	   <h4>Pallet ID {{pid}}</h4>

	   <form action="/warehouses/{{wh}}/update-pallet-{{pid}}" method="POST">

	   <table id="table_id" class="display">
	   <thead>
		<tr>
		<th></th>
		<th width="100px">Case ID</th>
		<th>UPC</th>
		<th width="140px">Boxes / Case</th>
		<th width="140px">PCS / Box</th>
		</tr>
	    </thead>
	    </tbody>
		% for item in case_boxes:
		<tr>
		<td><input type="radio" value="{{item[0]}}"
		name="case-id"></td>
		<td>{{item[0]}}</td>
		<td>{{item[1]}}</td>
		<td>{{item[2]}}</td>
		<td>{{item[3]}}</td>
		</tr>
		% end
	   </tbody>
	   </table>

	   <div class="row">
	   <div class="medium-3 columns">
	   </label>QTY:
	   <input type="number" min="1" name="qty">
	   </label>
	   </div>
	   </div>

	   <div class="row">
	   <div class="medium-3 columns">
	   <input type="submit" class="button" name="add-case"
	   value="Add Case">
	   </div>
	   </div>

	   </form>
      </div>

      	   <div class="medium-5 columns" style="margin-left:-1000px">
	   <h4>Boxes</h4>
	   % if pallet_info:
	   
	   <table>
	   <thead>
		<tr>
		<th width="100px">Case ID</th>
		<th>UPC</th>
		<th width="140px">Boxes / Case</th>
		<th width="140px">PCS / Box</th>
		<th width="140px">Cases</th>
		</tr>
	    </thead>
	    </tbody>
		% for item in pallet_info:
		<tr>
		<td>{{item[0]}}</td>
		<td>{{item[1]}}</td>
		<td>{{item[2]}}</td>
		<td>{{item[3]}}</td>
		<td>{{item[4]}}</td>
		</tr>
		% end
	   </tbody>
	   </table>
	   % end


    </div>

    </div>



  <!-- close wrapper, no more content after this -->

  </div>

</div>

<script>
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>

<style>

.dataTables_length{
width: 5em;
}

.dataTables_filter{
width:15em;
margin-left:-27em;
}

.dataTables_paginate{
margin-left:-22em;
}
</style>


% include('global/end_body.tpl')