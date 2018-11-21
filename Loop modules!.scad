width_1   = 700; //The width from the center of the loop to the outer radius
width_2   = 400; // The width of the ramp
loop_1   = 1; // This how many loops you want the middle loops, bottom loop, and top loop to have within their module
walls_1  = 100; // This is the wall hieght / 2



//The Middle pieces of the loop!

 module loop_middle(){  //These are to be placed as middle loops within the larger loop
    for(count = [0 : (360 * loop_1)]){  //A count of 360 x the amount of loops given as a variable above. This is because each loop has 360°  
        
    //Ramp base     
        translate([ width_1 * cos(count), width_1 * sin(count), count]) //Made parametrically using parametric form of a loop
        rotate([ count, 270, 0]) //rotated with count so that it rotates properly around the center of the loop
        cube(size = [ 20, 30, width_2 ], center = false); //The size of the rectangles that add together to create the ramp of the loop
        
    //Loop outer-wall
        translate([ width_1 * cos(count),width_1 * sin(count),count + walls_1 ]) //Made parametrically using parametric form of a loop
        rotate([ count, 270, 0 ]) //rotated with count so that it rotates properly around the center of the loop
        cube(size = [ 2 * walls_1, 20, 30 ], center = true); //The size of the rectangles that add together to create the outer-wall of the loop
        
    //Loop inner-wall
        translate([ (width_1-width_2) * cos(count) * 1.05,(width_1-width_2) * sin(count) * 1.05,count + walls_1 ]) //Made parametrically using parametric form of a loop
        rotate([ count, 270, 0 ]) //rotated with count so that it rotates properly around the center of the loop
        cube(size = [2 * walls_1, 10, 30], center = true); //The size of the rectangles that add together to create the inner-wall of the loop
    }

//Middle Piece, Lowest Pillar
    for(count= [ 0 : 360 * loop_1 ]){//The hieght of the pillar
       
//Lowest-outer Pillar
        translate([ 0, width_1, count+60 ]) //Moves it upward so that it can connect to the pillar bellow
        cylinder(r=(30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1); //Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
 
//Lowest-inner Pillar       
        translate([ 0, (width_1 - width_2), count + 60 ])//Moves it upward so that it can connect to the pillar bellow
        cylinder(r=(30 * (width_1/600)) + (30 * (width_2 / 300) - 30), h = 1);//Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
    }
    
//Second lowest-outer Pillar
    for(count= [ 0 : 360 * loop_1 ]){//The hieght of the pillar
        translate([ -(width_1), 0, count + 150 ])//Moves it upward so that it can connect to the pillar bellow
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
        
//Second lowest-inner Pillar
        translate([ -(width_1 - width_2), 0, count + 150 ])//Moves it upward so that it can connect to the pillar bellow
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2

//Tallest outer Pillar
    }
    for(count= [ 0 : 360 * loop_1 ]){//The hieght of the pillar
        translate([ 0, -(width_1), count + 240 ])//Moves it upward so that it can connect to the pillar bellow
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
        
//Tallest inner Pillar
        translate([ 0, -(width_1 - width_2), count + 240 ])//Moves it upward so that it can connect to the pillar bellow
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
    }
}


//The bottom portion of the loop!

 module loop_bottom(){//These are to be placed at the bottom
    for(count = [ 0 : (360 * loop_1) ]){//A count of 360 x the amount of loops given as a variable above. This is because each loop has 360°. In a parametrically defined loop 360° is one revolution 
        
    //Ramp base
        translate([ width_1 * cos(count), width_1 * sin(count), count ])//Parametrically defines a spiral
        rotate([ count, 270, 0 ])//rotated with count so that it rotates properly around the center of the loop
        cube(size = [20, 30, width_2], center = false);//Creates small cubes with the width defined by the width_2
        
    //Loop outer-wall
        translate([ width_1 * cos(count), width_1 * sin(count), count + walls_1 ])//Parametrically defines another spiral
        rotate([ count, 270, 0 ])//rotated with count so that it rotates properly around the center of the loop
        cube(size = [ 2 * walls_1, 20, 30 ], center = true);//Creates small rectangles that touch the ramp on the outside of the ramp to create an outer wall

    //Loop inner-wall
        translate([ (width_1 - width_2) * cos(count) * 1.05, (width_1 - width_2) * sin(count) * 1.05, count + walls_1 ])//Parametrically defines another spiral
        rotate([ count, 270, 0 ])//rotated with count so that it rotates properly around the center of the loop
        cube(size = [ 2 * walls_1, 20, 30], center = true);//Creates small rectangles that touch the ramp on the inside of the ramp to create an inner wall
    }


//Smallest Pillar
    
    for(count = [ 0 : 360 * loop_1 + 60 ]){//The hieght of the pillar. Variable to follow the hieght of the loop. Adds 60 to the hieght so that it matches up better with the middle loop

    //Outer Pillar
        translate([ 0, width_1, count ])//Translates it over to the edge of the loop. Says that it could translate each piece with count
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Creates pieces of hieght 1 that can build on eachother
   
    //Inner Pillar
        translate([ 0, (width_1 - width_2), count ])//Translates it over to the inside of the loop. Says that it could translate each piece with count
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Creates pieces of hieght 1 that can build on eachother
    }
    
    
//Second-Smallest Pillar
    for(count = [ 0 : 360 * loop_1 + 150 ]){//The hieght of the pillar. Variable to follow the hieght of the loop. Adds 60 to the hieght so that it matches up better with the middle loop
        
    //Outer Pillar
        translate([ -(width_1), 0, count ])//Translates it over to the outside of the loop. Says that it could translate each piece with count
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Creates pieces of hieght 1 that can build on eachother
    //Inner Pillar
        translate([ -(width_1 - width_2), 0, count ])//Translates it over to the inside of the loop. Says that it could translate each piece with count
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Creates pieces of hieght 1 that can build on eachother
    }


//Tallest Pillar
    for(count = [ 0 : 360 * loop_1 + 240 ]){//The hieght of the pillar. Variable to follow the hieght of the loop. Adds 60 to the hieght so that it matches up better with the middle loop
    //Outer Pillar
        translate([ 0, -(width_1), count ])//Translates it over to the outside of the loop. Says that it could translate each piece with count
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Creates pieces of hieght 1 that can build on eachother
    //Inner Pillar
        translate([ 0, -(width_1 - width_2), count ])//Translates it over to the outside of the loop. Says that it could translate each piece with count
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Creates pieces of hieght 1 that can build on eachother
    }
}


//Top portion of the loop!
 module loop_top(){ //To be placed at the top of the highest middle loop
    for(count = [ 0 : (360 * loop_1) ]){//A count of 360 x the amount of loops given as a variable above. This is because each loop has 360°. In a parametrically defined loop 360° is one revolution

//Ramp        
        translate([ width_1 * cos(count), width_1 * sin(count), count ])//Parametrically defines a spiral
        rotate([ count, 270, 0 ])//rotated with count so that it rotates properly around the center of the loop
        cube(size = [ 20, 30, width_2 ], center = false);//Creates small cubes with the width defined by the width_2
        
//Loop-Outer Wall
        translate([ width_1 * cos(count), width_1 * sin(count), count + walls_1 ])//Parametrically defines another spiral
        rotate([ count, 270, 0 ])//rotated with count so that it rotates properly around the center of the loop
        cube(size = [2 * walls_1, 20, 30], center = true);//Creates small rectangles that touch the ramp on the outside of the ramp to create an outer wall

//Loop-Inner Wall
        translate([ (width_1 - width_2) * cos(count) * 1.05, (width_1 - width_2) * sin(count) * 1.05,count + walls_1 ])//Parametrically defines another spiral
        rotate([ count, 270, 0])//rotated with count so that it rotates properly around the center of the loop
        cube(size = [2 * walls_1, 10, 30], center = true);//Creates small rectangles that touch the ramp on the inside of the ramp to create an inner wall
}

//Tallest loop Pillar
    for(count = [ 0 : 360 * loop_1 - 120 ]){//The hieght of the pillar
    //Outer Pillar
        translate([ 0, width_1, count + 60 ]) //Moves it upward so that it can connect to the pillar bellow
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1); //Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
        
    //Inner Pillar
        translate([ 0, (width_1 - width_2), count + 60 ]) //Moves it upward so that it can connect to the pillar bellow
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) -30), h = 1);//Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
    }

//Second-Tallest loop Pillar
    for(count = [ 0 : 360 * loop_1 - 120 ]){//The hieght of the pillar
        
    //Outer Pillar
        translate([ -(width_1), 0, count + 150])//Moves it upward so that it can connect to the pillar bellow
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300)-30), h = 1);//Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
        
    //Inner Pillar
        translate([ -(width_1 - width_2), 0, count + 150 ])//Moves it upward so that it can connect to the pillar bellow
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
    }
    
//Tallest loop Pillar
    for(count = [ 0 : 360 * loop_1 - 120 ]){//The hieght of the pillar
        
    //Outer Pillar
        translate([ 0, -(width_1), count + 240 ])//Moves it upward so that it can connect to the pillar bellow
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
        
    //Inner Pillar
        translate([ 0, -(width_1 - width_2), count + 240 ])//Moves it upward so that it can connect to the pillar bellow
        cylinder(r = (30 * (width_1 / 600)) + (30 * (width_2 / 300) - 30), h = 1);//Each block has a hieght of 1. These are stacked on eachother. The radius is varibale with the width_1 and width_2
    }
}
loop_bottom();
translate([0,0,360])loop_middle();
translate([0,0,720])loop_middle();
translate([0,0,1080])loop_middle();
translate([0,0,1440])loop_middle();
translate([0,0,1440+360])loop_top();