width_1   = 700; // Use numbers over 200
width_2   = 400; // Use in at max a 3:1 ratio with width 1
loop_1   = 3; //Whole numbers
walls_1  = 100; // use numbers over 50

 module loop(){   
    for(count= [0:(360*loop_1)]){
        color("red")
        translate([width_1*cos(count),width_1*sin(count),count])rotate([count,270,0])cylinder(r=20*(walls_1/100),h=width_2);
        translate([width_1*cos(count),width_1*sin(count),count+walls_1])rotate([count,270,0])cylinder(r=walls_1,h=10*(1000/width_1)+10*(500/width_2));
        translate([(width_1-width_2)*cos(count)*1.05,(width_1-width_2)*sin(count)*1.05,count+walls_1])rotate([count,270,0])cylinder(r=walls_1,h=10*(1000/width_1)+10*(500/width_2));
    }
    for(count= [0:360*loop_1+(2*walls_1)-265]){
        color("red")
        translate([0,width_1,count])cylinder(r=(30*(width_1/600))+(30*(width_2/300)-30),h=1);
        translate([0,(width_1-width_2),count])cylinder(r=(30*(width_1/600))+(30*(width_2/300)-30),h=1);
    }
    for(count= [0:360*loop_1+(2*walls_1)-175]){
        color("red")
        translate([-(width_1),0,count])cylinder(r=(30*(width_1/600))+(30*(width_2/300)-30),h=1);
        translate([-(width_1-width_2),0,count])cylinder(r=(30*(width_1/600))+(30*(width_2/300)-30),h=1);
    }
    for(count= [0:360*loop_1+(2*walls_1)-85]){
        color("red")
        translate([0,-(width_1),count])cylinder(r=(30*(width_1/600))+(30*(width_2/300)-30),h=1);
        translate([0,-(width_1-width_2),count])cylinder(r=(30*(width_1/600))+(30*(width_2/300)-30),h=1);
    }
    for(count= [0:360*loop_1+(2*walls_1)]){
        color("red")
        translate([(width_1),0,count])cylinder(r=(30*(width_1/600))+(30*(width_2/300)-30),h=1);
        translate([(width_1-width_2),0,count])cylinder(r=(30*(width_1/600))+(30*(width_2/300)-30),h=1);
    }
 
    
    
    
    for(count= [0:(210*loop_1)]){
        translate([width_1,count,360*loop_1]) rotate([0,270,0])cylinder(r=20*(walls_1/100),h=width_2);
         translate([width_1,count,360*loop_1+walls_1])rotate([0,270,0])cylinder(r=walls_1,h=10*(1000/width_1)+10*(500/width_2));
        translate([(width_1-width_2)*1.05,count,360*loop_1+walls_1])rotate([0,270,0])cylinder(r=walls_1,h=10*(1000/width_1)+10*(500/width_2));
    }
    
    for(count= [0:360*loop_1+2*walls_1]){
        color("red")
        translate([(width_1),210*loop_1,count])cylinder(r=(30*(width_1/600))+(30*(width_2/300)-30),h=1);
        translate([(width_1-width_2),210*loop_1,count])cylinder(r=(30*(width_1/600))+(30*(width_2/300)-30),h=1);
    }
    
    module cube_diversity(width, length, height){
    cube(size = [width, length, height], center = true);
}
    module marble_holder(){difference(){
        cube_diversity(width_2*0.5,width_2*0.5,width_2*0.5);
        translate([0,0,width_2/1.3]) sphere(r=width_2);
    }}
    
    translate([(width_1+(width_1-width_2))/2,width_1/2,360*loop_1+115])marble_holder();
}
  
module cube_diversity(width, length, height){
    cube(size = [width, length, height], center = false);
}

module Something(){
        difference(){
            loop();
            translate([-1000,-1000,-30])cube_diversity(3000,3000, 390);
    }
}
   
module Piece_middle(){
        difference(){
            Something();
             translate([-1000,-1000,720])cube_diversity(3000,3000, 750);
     }
}
    
module Piece_top(){
    difference(){
        loop();
         translate([-1000,-1000,-30])cube_diversity(3000,3000, 750);
    }
}

module Piece_bottom(){
    difference(){
        loop();
         translate([-1000,-1000,360])cube_diversity(3000,3000, 1000);
    }
}
Piece_bottom();