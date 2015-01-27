@truba: 6;

Map {
  background-color: transparent;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}

 
#points {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  
  [gas="meter"]
    {
    	//[zoom<=16] { point-transform:"scale(.01)";}
    	//[zoom=17] { point-transform:"scale(.03)";}
    	//[zoom=18] { point-transform:"scale(.04)";}
    	//[zoom>18] { point-transform:"scale(.05)";}
    	//point-file: url(icons/bulb13.svg);
    	//marker-width:0;
  		//marker-fill:#f45;
  		//marker-line-color:#813;
    
    	text-name: "'M'";
    	text-placement: interior;
  		text-fill: black;
  		text-face-name: 'Arial Bold';
  		text-size: 10;
  		marker-width:14;
  		marker-fill:#fff;
  		marker-line-color:#333;
  		marker-allow-overlap: true;
  		marker-placement: point;
  		marker-opacity: 0.75;
    }
  
  
  [manhole="yes"]
    {
    	text-name: "'H'";
    	text-placement: interior;
  		text-fill: black;
  		text-face-name: 'Arial Bold';
  		text-size: 10;
  		marker-width:14;
  		marker-fill:#fff;
  		marker-line-color:#333;
  		marker-allow-overlap: true;
  		marker-placement: point;
  		marker-opacity: 0.75;
    }
  
  [fitting="reducer"]
    {
    	point-file: url(icons/reducer-01.svg);
        [zoom<=16] { point-transform:"scale(.05)";}
    	[zoom=17] { point-transform:"scale(.1)";}
    	[zoom=18] { point-transform:"scale(.15)";}
    	[zoom>18] { point-transform:"scale(.20)";}
        text-name: "'Ø '+[large]+ ' Ø ' +[small]";
  		//text-placement: point;
        text-placement: interior;
    	text-dy: -20;
  		text-fill: black;
  		text-face-name: 'Arial Bold';
  		text-size: 12;
  		marker-width:10;
  		marker-fill:#fff;
  		marker-line-color:#333;
  		marker-allow-overlap: true;
  		marker-placement: point;
  		marker-opacity: 0.75;
    }

    [fitting="endcap"]
    {
    	point-file: url(icons/endcap-01.svg);
        [zoom<=16] { point-transform:"scale(.05)";}
    	[zoom=17] { point-transform:"scale(.1)";}
    	[zoom=18] { point-transform:"scale(.15)";}
    	[zoom>18] { point-transform:"scale(.20)";}
        text-name: "[ref]+' Ø'+[diameter]";
  		//text-placement: point;
        text-placement: interior;
    	text-dy: -20;
  		text-fill: black;
  		text-face-name: 'Arial Bold';
  		text-size: 12;
  		marker-width:10;
  		marker-fill:#fff;
  		marker-line-color:#333;
  		marker-allow-overlap: true;
  		marker-placement: point;
  		marker-opacity: 0.75;
    }

     [fitting="tee"]
    {
    	point-file: url(icons/tee-01.svg);
        [zoom<=16] { point-transform:"scale(.05)";}
    	[zoom=17] { point-transform:"scale(.1)";}
    	[zoom=18] { point-transform:"scale(.15)";}
    	[zoom>18] { point-transform:"scale(.20)";}
        text-name: "[ref]";
  		//text-placement: point;
        text-placement: interior;
    	text-dy: -20;
  		text-fill: black;
  		text-face-name: 'Arial Bold';
  		text-size: 12;
  		marker-width:10;
  		marker-fill:#fff;
  		marker-line-color:#333;
  		marker-allow-overlap: true;
  		marker-placement: point;
  		marker-opacity: 0.75;
    } 
  
 [fitting="valve"]
    {
    	point-file: url(icons/robinet-01.svg);
        [zoom<=16] { point-transform:"scale(.05)";}
    	[zoom=17] { point-transform:"scale(.1)";}
    	[zoom=18] { point-transform:"scale(.15)";}
    	[zoom>18] { point-transform:"scale(.20)";}
        text-name: "[ref]";
  		//text-placement: point;
    	text-placement: interior;
    	text-dy: -20;
  		text-fill: black;
  		text-face-name: 'Arial Bold';
  		text-size: 12;
  		marker-width:10;
  		marker-fill:#fff;
  		marker-line-color:#333;
  		marker-allow-overlap: true;
  		marker-placement: point;
  		marker-opacity: 0.75;
    }
  
  [fitting="coupling"]
    {
    	point-file: url(icons/coupling.svg);
        [zoom<=16] { point-transform:"scale(.05)";}
    	[zoom=17] { point-transform:"scale(.1)";}
    	[zoom=18] { point-transform:"scale(.15)";}
    	[zoom>18] { point-transform:"scale(.20)";}
        text-name: "[ref]+' Ø'+[diameter]";
  		//text-placement: point; 
    	text-placement: interior;
    	text-dy: -20;
  		text-fill: black;
  		text-face-name: 'Arial Bold';
  		text-size: 10;
  		//marker-width:10;
  		//marker-fill:#fff;
  		//marker-line-color:#333;
  		marker-allow-overlap: true;
  		marker-placement: point;
  		marker-opacity: 0.75;
    }
}


#lines {
  line-width:6;
  line-color:#168;
  
  //[diameter <= "40"] { line-width:@truba - 3;}
  //[diameter >= "40"] { line-width:@truba - 1;}
  //[diameter > "99"] { line-width:@truba + 1;}
  
  [position="underground"]
    {
    line-width:6;
    }

  [presure="low"]
    {
  		//line-width:6;
  		line-color:#2C8924;
    }
  [presure="medium"]
    {
  		//line-width:6;
  		line-color:#D67D12;
    }
  [presure="high"]
    {
  		//line-width:6;
  		line-color:#CC0505;
    }
}

#lines::outline {
    [position="underground"]
    {
    	line-color:white;
    	line-width:6;
    	line-dasharray: 4,8;
    }
}