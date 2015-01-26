var map;

$(document).ready( function init(){
		
		map = L.map('map').setView([47.01772, 28.87207], 8);
		
		var basemap = L.tileLayer('http://bts{s}.hartamd.com/tiles/{z}/{x}/{y}.png', {
			minZoom:0,
			maxZoom: 18,
			attribution: '&copy; <a href="http://hartamd.com/">HartaMD.com</a>',
			subdomains: [1,2,3,4]
		});
		
		var beta = L.tileLayer('http://ots1.hartamd.com/tiles.php?z={z}&x={x}&y={y}', {
			minZoom:0,
			maxZoom: 17,
			attribution: '&copy; <a href="http://hartamd.com/">HartaMD.com</a>',
			//subdomains: [1,2,3,4]
			tms: true
		});

		var ung = L.tileLayer('http://ots1.hartamd.com/tiles.php?z={z}&x={x}&y={y}&db=ung', {
			minZoom:0,
			maxZoom: 17,
			attribution: '&copy; Dvelopment use only',
			//subdomains: [1,2,3,4]
			tms: true
		}).addTo(map);

		var gas = L.tileLayer('http://ots1.hartamd.com/tms.php?z={z}&x={x}&y={y}&db=gas', {
			minZoom:0,
			maxZoom: 22,
			attribution: '&copy;',
			tms: true
		}).addTo(map);
		
		var baseLayers = {
			"Parcele": ung,
			"New": beta,
			"Old": basemap
		};

		var overlays = {
			"gas": gas
		};

		//add controls
		var hash = new L.Hash(map);
		L.control.locate().addTo(map);
		L.control.layers(baseLayers, overlays).addTo(map);

	})