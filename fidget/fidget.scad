outerBearings = 3;
bearingDistance = 30;
thickness = 8;
bearingRadius = 8.5;
bearingHeight = 5;

difference(){
union(){
    
    for(i=[1:outerBearings]){
        hull(){
            rotate([0,0,(360/outerBearings)*i]){
                translate([bearingDistance,0,0]){
                    cylinder(bearingHeight, r=bearingRadius+thickness,true);
                }
                cylinder(bearingHeight, r=bearingRadius+thickness,true);
            }
        }

    }
}

union(){
    for(i=[1:outerBearings]){
        rotate([0,0,(360/outerBearings)*i]){
            translate([bearingDistance,0,0]){
                cylinder(bearingHeight, r=bearingRadius,true);
            }
        }
    }

    cylinder(bearingHeight, r=bearingRadius,true);
}}