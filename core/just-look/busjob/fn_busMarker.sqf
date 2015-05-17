	
	//1-26
	
	
	
	
	
	
	
	for [{ x=1 },{ x < 26 },{ x = x + 1; }] do {
		_name = format["tank_%1",_x select 0];
		_marker = createMarkerLocal [_name, _Pos]; 
		_markers set[count _markers,_name];
		_axeBusRouteWaypoints set [(count _axeBusRouteWaypoints),getMarkerPos (format["%1_%2",_busMarkerTxt,x])];
	};