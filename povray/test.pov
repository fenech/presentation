#version 3.6;

#include "colors.inc"
#include "functions.inc"
#include "glass.inc"

//-------------------------------------------
global_settings {
	assumed_gamma 1
}

#declare CamLoc = < 15, -15,5>;
#declare MyAngle=clock*360 - 180;
#declare MyX=clock*8-4-sin(pi/180*MyAngle);
#declare MyY=(-1-cos(pi/180*MyAngle))*1.5;



//camera {
//	orthographic
//	location CamLoc
//	look_at < 3, 0, 2>
//	angle 35
//}

#declare Camera_Position = < 0, -35, 5 >;

camera{
	orthographic
	angle 25
  location < 0, 0, 0 >
  direction < 0, 1,0 >
  look_at -Camera_Position
    sky < 0,0,1 >
  up < 0, 0,1 >
  right < 1.333, 0, 0 >
//  rotate <d_ang, 0, 10>
  translate Camera_Position
  rotate <0, 0, 0>
//  translate <7,2,6>
}


light_source {CamLoc color White*0.75}
light_source {<75,150,100> color White*.75}
light_source {<-75,-150,100> color White*.35}
//light_source {<75,150,-100> color White*.35}

background { color rgb < 1, 1, 1 > }

//-------------------------------------------

//#declare IsoFinish =
//finish {
//	ambient 1.0 diffuse 0.5
//	specular 0.2 roughness 0.002
//	brilliance 0.5
//}

#declare IsoFinish =
finish {
	ambient 0 diffuse 1
	specular 1 roughness 0.02
	brilliance 2
}

object {
	sphere{ o, 1 scale<1,1,5>
		rotate <0, 10, 0>
		translate <-6, 0, -0.4>
		pigment{ color Green}
		finish{IsoFinish}
	}
}

object {
	sphere{ o, 1 scale<1,1,5>
		rotate <0, -9, 0>
		translate <-3, 0, 0.6>
		pigment{ color Green}
		finish{IsoFinish}
	}
}

object {
	sphere{ o, 1 scale<1,1,5>
		rotate <0, -2, 0>
		pigment{ color Green}
		finish{IsoFinish}
	}
}

object {
	sphere{ o, 1 scale<1,1,5>
		rotate <0, 6, 0>
		translate <3, 0, -0.4>
		pigment{ color Green}
		finish{IsoFinish}
	}
}

object {
	sphere{ o, 1 scale<1,1,5>
		rotate <0, -5, 0>
		translate <6, 0, 0.3>		
		pigment{ color Green}
		finish{IsoFinish}
	}
}



//object{cylinder { < 0,0,-5 >,< 0,0,5 >, 2.0 texture{pigment{color Silver}finish{IsoFinish}}}}


