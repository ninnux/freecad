rc=11;
r=rc+1.5;
rh=rc-2;
h=40;
hs=h-10;
hboard=60;
lboard=26;
wboard=26;

module cuscinetto608ZZ(){
    cylinder(7+2,11.15,11.15,center);
}

difference(){
    difference(){
    difference(){
        cylinder(h,r,r,center);
        translate([0,0,h-8])cuscinetto608ZZ();
    }
    translate([0,0,-1])cylinder(h,rh,rh,center);
}


translate([9,0,(hs/2)-5])cube([3,5,hs+1], true);
}
difference(){
difference(){
translate([0,0,-hboard/2])cube([wboard+4,lboard+4,hboard+4], true);
translate([0,0,-(hboard/2)-2])cube([wboard+2,lboard+2,hboard+2], true);
}
union(){
translate([0,0,-2])cylinder(h+hboard,rh,rh,center);
translate([9,0,(hs/2)-5])cube([3,5,hs+1], true);
}
}