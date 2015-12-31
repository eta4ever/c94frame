$fa=5; $fs=0.1;

W=95;
H=58;
R=1;


difference(){
    
    union(){
    
        hull(){ //основа
            translate([R,R,-1]) cylinder(r=R, h=2, center=true);
            translate([W-R,R,-1]) cylinder(r=R, h=2, center=true);
            translate([W-R,H-R,-1]) cylinder(r=R, h=2, center=true);
            translate([R,H-R,-1]) cylinder(r=R, h=2, center=true);
        }
        
        hull(){ //рамка
            translate([9.6-R,3.5-R,5]) {
                cylinder(r=R, h=10, center=true);
                translate([62+R, 0,0]) cylinder(r=R, h=10, center=true);
                translate([62+R, 51+R,0]) cylinder(r=R, h=10, center=true);
                translate([0, 51+R,0]) cylinder(r=R, h=10, center=true);
            }
        }
            
         hull(){ //подрамка
            translate([9.6-R,3.5-R,1]) {
                cylinder(r=R+1, h=2, center=true);
                translate([62+R, 0,0]) cylinder(r=R+1, h=2, center=true);
                translate([62+R, 51+R,0]) cylinder(r=R+1, h=2, center=true);
                translate([0, 51+R,0]) cylinder(r=R+1, h=2, center=true);
            }
        }
      
        
    }
    
    union(){
       
       hull(){ //рамка
              translate([9.6+1,3.5+1,5]) {
                cylinder(r=R, h=15, center=true);
                translate([62-R-2, 0,0]) cylinder(r=R, h=15, center=true);
                translate([62-R-2, 51-R-2,0]) cylinder(r=R, h=15, center=true);
                translate([0, 51-R-2,0]) cylinder(r=R, h=15, center=true);
            }
       } 
       
       translate([W-11.3, 22, -1]){ // под ручки
           cylinder(r=2.5, h=3, center=true);
           translate([0, 18, 0]) cylinder(r=2.5, h=3, center=true);
       }
    }
    
}