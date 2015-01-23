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
  marker-allow-overlap:false;
  marker-ignore-placement:true;
  
  [gas="meter"]
    {
    	[zoom<=16] { point-transform:"scale(.01)";}
    	[zoom=17] { point-transform:"scale(.03)";}
    	[zoom=18] { point-transform:"scale(.04)";}
    	[zoom>18] { point-transform:"scale(.05)";}
    	point-file: url(icons/bulb13.svg);
    	marker-width:0;
  		marker-fill:#f45;
  		marker-line-color:#813;
    }
}


#lines {
  line-width:6;
  line-color:#168;
  [position="underground"]
    {
    line-width:6;
    line-dasharray: 8,6;
    }
}

#lines::outline {
  [position="underground"]
    {
    line-color:white;
    line-width:4;
    }
}