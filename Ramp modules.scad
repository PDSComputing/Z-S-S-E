module cube_diversity(width, length, height){
    cube(size = [width, length, height], center = true);
}
//Example: translate([0,0,10]) cube_eli(3,9,1);

module cylinder_diversity(h, r1, r2, $fn){
    center = true;
    cylinder(size = [h,r1,r2,$fn]);
}
//Example: cylinder_eli(10, 10, 10, 30);

module sphere_diversity(r, $fa, $fn){
    center = true;
    sphere(size = [r,$fa,$fn]);
} 
//Example: sphere_eli(r, $fa, $fn);

module bestramp_diversity(){
    module ramp_diversityfinal(){
        module ramp_diversity(){
            rotate([30,0,0]) difference(){
            cube_diversity(2,5,2);
            translate([0,0,0.05])cube_diversity(1.9,5,2);
        }}


        module ramp_diversity1(){difference(){
           ramp_diversity();
           translate([0,-(1+2.5*cos(30)),-1])cube_diversity(2,3,3);
        }}

        difference(){
           ramp_diversity1();
           translate([0,(1+2.5*cos(30)),1])cube_diversity(2,3,3);
        }
    }

    module corner_diversity(){
        difference(){
        cube_diversity(2,2,4/sqrt(3));
        translate([0.05,0.05,0.05])cube_diversity(2,2,4/sqrt(3));
    }}

    module ramppluscorner(){ramp_diversityfinal();
    translate([0,-2.66,-.5*sqrt(3)-0.10])corner_diversity();
    }

    ramppluscorner();
    translate([2.64,-2.66,-sqrt(3)-0.20])rotate([0,0,90])ramppluscorner();

    difference(){
        translate([0,-2.66,-3.6])cube_diversity(2,2,3);
        translate([0,-2.66,-3.6])cube_diversity(1.95,1.95,3);
    }

    translate([0,2.66,.95])
    difference(){
        cube_diversity(2,2,4/sqrt(3));
        translate([0,-0.05,0.05])cube_diversity(1.9,2,4/sqrt(3));
    }

    translate([0,2.66,-2.7])difference(){
        cube_diversity(2,2,5);
        cube_diversity(1.95,1.95,5);
    }
}

difference(){
    bestramp_diversity();
    translate([0,0,-5.52])cube_diversity(100,100,3);
}


