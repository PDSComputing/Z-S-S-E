module cube_eli(width, length, height){
    cube(size = [width, length, height], center = true);
}
translate([0,0,10]) cube_eli(3,9,1);
