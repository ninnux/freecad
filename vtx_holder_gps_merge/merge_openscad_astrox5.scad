
module gps_down(){
rotate(270,[0,0,1])translate([-145,-78,0])import("/Users/nino/Desktop/prggetti\ freecad/vtx_holder_gps_merge/beitian_bn_880_sotto.stl", convexity = 15);
}
module vtx(){
import("/Users/nino/Desktop/prggetti\ freecad/vtx_holder_gps_merge/vtx_antenna_mount_universal_30.5_.stl", convexity = 15);
}

module vtx2(){
    difference(){
translate([0,-2,13.2])rotate([-90,0,0])translate([-112.5,0,0])import("/Users/nino/Downloads/ImpulseRC_Alien_Antenna_Mount/files/steele_antenna_mount.stl", convexity = 15);
    translate([-20,3,-15])cube([40,40,40]);
    }
}



difference(){
union () {
    gps_down();
    //vtx2();
}
union(){
translate([8.5,0,-10])cylinder(r=2.5,h=40);
translate([-8.5,0,-10])cylinder(r=2.5,h=40);
}
}
//union(){
//intersection(){
//difference(){
//    gps_down();
//    vtx2();
//}
//translate([16,0,0])cube([7,7,40],center=true);
//}
//
//
//intersection(){
//difference(){
//    gps_down();
//    vtx2();
//}
//translate([-16,0,0])cube([7,7,40],center=true);
//}
//}
//}