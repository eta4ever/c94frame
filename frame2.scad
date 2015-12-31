$fa=5; $fs=0.1;

W=95;
H=58;
R=1;


difference(){
    
    union(){
    
        hull(){ //основа
            translate([R,R,0]) cylinder(r=R, h=3, center=true);
            translate([W-R,R,0]) cylinder(r=R, h=3, center=true);
            translate([W-R,H-R,0]) cylinder(r=R, h=3, center=true);
            translate([R,H-R,0]) cylinder(r=R, h=3, center=true);
        }
    }
    
    union(){
        
         hull(){ //вырез
            translate([R+2,R+2,0]) cylinder(r=R, h=3, center=true);
            translate([W-R-2,R+2,0]) cylinder(r=R, h=3, center=true);
            translate([W-R-2,H-R-2,0]) cylinder(r=R, h=3, center=true);
            translate([R+2,H-R-2,0]) cylinder(r=R, h=3, center=true);
        }
       
    }
    
}