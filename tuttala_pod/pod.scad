
k=0.7;
re=35;
ri=31;
l=130;
kx_tail=0.7;
ky_tail=1.5/k;


module pod(){
difference(){
union(){
union(){
    linear_extrude(height=l/2, scale=[k,k], $fn = 100, twist=0) 
    difference(){
        circle(re);
        circle(ri);
    }
    difference(){
        difference(){
            sphere(re,$fn = 100);
            sphere(ri,$fn = 100);
        }
        translate([0,0,re])cube([re*2,re*2,re*2],center=true);
    }
}

translate([0,0,l/2])linear_extrude(height=l/2, scale=[kx_tail,ky_tail], $fn = 100, twist=0) 
    difference(){
        circle(re*k);
        circle(ri*k);
    }
}

translate([0,-re,re])cube([l*2,re*2,l*3],center=true);
}
}




module pod_fill(){
difference(){
union(){
union(){
    linear_extrude(height=l/2, scale=[k,k], $fn = 100, twist=0) 
        circle(re);
    
  
    difference(){
            sphere(re,$fn = 100);
        translate([0,0,re])cube([re*2,re*2,re*2],center=true);
    }
}

translate([0,0,l/2])linear_extrude(height=l/2, scale=[kx_tail,ky_tail], $fn = 100, twist=0)  
        circle(re*k);
   
}

translate([0,-re,re])cube([l*2,re*2,l*3],center=true);
}
}


module incavo(){
    //translate([0,25,-10])sphere(ri*0.8);
    translate([0,25,-20])cube(32,center=true);
}


module camera(){
    intersection(){
    difference(){
            //translate([0,25,-10])sphere(re*0.8);
            translate([0,25,-20])cube(35,center=true);
            incavo();
    }
    translate([0,0,0])pod_fill();
    }
}
difference(){
union(){
union(){
    difference(){
        pod();
        incavo();
    }
    camera();
}
//porta gps

difference(){
    rotate(90,[1,0,0])translate([0,50,-26])cylinder(7,15,15,center=true);
    pod_fill();
}

}

rotate(90,[1,0,0])translate([0,50,-26])cylinder(50,5,5,center=true);
}