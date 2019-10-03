
module gps_down(){
rotate(270,[0,0,1])translate([-145,-78,0])import("/Users/nino/Desktop/prggetti\ freecad/vtx_holder_gps_merge/beitian_bn_880_sotto.stl", convexity = 15);
}
module vtx(){
import("/Users/nino/Desktop/prggetti\ freecad/vtx_holder_gps_merge/vtx_antenna_mount_universal_30.5_.stl", convexity = 15);
}




//difference(){
//union () {
    gps_down();
    vtx();
//}
//union(){
//intersection(){
//difference(){
//    gps_down();
//    vtx();
//}
//translate([16,0,0])cube([7,7,40],center=true);
//}
//
//
//intersection(){
//difference(){
//    gps_down();
//    vtx();
//}
//translate([-16,0,0])cube([7,7,40],center=true);
//}
//}
//}