s=2;
difference(){
union(){
    difference(){
        difference(){
            cylinder(s,10,10,center=true);
            translate([4.5,0,0])cylinder(s+1,5,5, center = true);
        }
        translate([0,10,0])cube([20,20,s+1],center=true);
    }
    translate([-5,5,0])cube([20,10,s],center=true);
}
union(){
translate([-10,5,0])cylinder(s+1,2.5,2.5,center=true);
translate([0,5,0])cylinder(s+1,2.5,2.5,center=true);
}
}