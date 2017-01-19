
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path4194(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    difference()
    {
       linear_extrude(height=h)
         polygon([[11.882500,1.802500],[11.847500,1.942500],[11.742500,1.942500],[11.602500,1.907500],[11.462500,1.837500],[11.357500,1.767500],[11.322500,1.697500],[11.357500,1.627500],[11.217500,1.557500],[10.797500,1.312500],[10.167500,0.962500],[10.097500,0.997500],[9.957500,0.997500],[9.852500,0.927500],[9.817500,0.927500],[9.782500,0.787500],[9.747500,0.822500],[9.607500,0.787500],[9.467500,0.647500],[9.467500,0.612500],[9.397500,0.612500],[9.257500,0.577500],[9.152500,0.437500],[9.152500,0.367500],[2.712500,-3.517500],[2.327500,-3.272500],[2.292500,-3.132500],[1.977500,-3.097500],[1.837500,-3.027500],[1.837500,-2.957500],[1.767500,-2.852500],[1.697500,-2.817500],[1.662500,-2.782500],[1.732500,-2.642500],[1.452500,-2.257500],[1.382500,-1.872500],[1.837500,-1.592500],[2.187500,-1.172500],[2.502500,-0.542500],[2.572500,-0.507500],[2.677500,-0.367500],[2.677500,-0.227500],[2.537500,-0.192500],[2.572500,0.297500],[2.537500,0.927500],[2.642500,1.032500],[2.712500,1.067500],[2.782500,1.102500],[2.747500,1.242500],[2.782500,1.242500],[2.957500,1.312500],[3.097500,1.522500],[3.167500,1.592500],[3.132500,1.697500],[3.027500,1.767500],[2.747500,1.697500],[2.607500,1.592500],[2.572500,1.557500],[2.572500,1.452500],[2.467500,1.347500],[2.362500,1.312500],[2.117500,1.697500],[1.872500,2.012500],[1.662500,2.222500],[1.452500,2.362500],[1.137500,2.502500],[0.647500,2.642500],[-0.122500,2.677500],[-0.227500,2.782500],[-0.297500,2.782500],[-0.437500,2.642500],[-0.647500,2.642500],[-0.647500,2.677500],[-0.752500,2.677500],[-0.437500,2.887500],[0.157500,3.237500],[0.962500,3.727500],[3.762500,6.002500],[6.282500,9.047500],[6.667500,9.327500],[6.632500,9.397500],[6.702500,9.432500],[6.807500,9.432500],[6.842500,9.432500],[7.122500,9.747500],[7.087500,9.852500],[6.947500,9.957500],[6.562500,9.747500],[6.562500,9.712500],[6.562500,9.642500],[6.422500,9.537500],[6.142500,9.327500],[5.722500,9.012500],[5.687500,9.012500],[5.547500,9.012500],[5.477500,8.977500],[5.442500,8.942500],[5.407500,8.907500],[5.407500,8.837500],[5.407500,8.767500],[5.337500,8.767500],[5.197500,8.697500],[5.092500,8.557500],[5.127500,8.522500],[5.022500,8.522500],[4.847500,8.417500],[4.812500,8.312500],[4.812500,8.242500],[0.752500,4.847500],[0.542500,4.917500],[0.577500,4.987500],[0.752500,4.987500],[1.032500,5.337500],[0.997500,5.442500],[0.857500,5.547500],[0.647500,5.407500],[0.472500,5.302500],[0.437500,5.162500],[0.262500,5.197500],[0.087500,5.057500],[-1.592500,5.512500],[2.187500,8.977500],[2.257500,8.942500],[2.432500,9.012500],[2.537500,9.152500],[2.572500,9.222500],[2.607500,9.222500],[2.747500,9.257500],[2.852500,9.397500],[2.852500,9.467500],[2.922500,9.432500],[3.027500,9.502500],[3.132500,9.747500],[3.517500,10.062500],[3.902500,10.342500],[4.007500,10.377500],[4.252500,10.692500],[4.252500,10.762500],[4.147500,10.797500],[3.867500,10.727500],[3.727500,10.622500],[3.727500,10.517500],[3.692500,10.517500],[3.622500,10.482500],[3.552500,10.482500],[3.412500,10.447500],[3.377500,10.377500],[3.202500,10.272500],[-4.567500,9.257500],[-7.437500,6.282500],[-6.457500,4.007500],[-8.942500,3.587500],[-11.882500,0.542500],[-9.117500,-2.957500],[-7.822500,-1.942500],[-6.247500,-5.022500],[-7.542500,-6.002500],[-6.667500,-9.607500],[-6.422500,-9.677500],[-3.097500,-7.682500],[-0.262500,-3.272500],[-0.052500,-3.202500],[0.997500,-3.692500],[1.207500,-3.727500],[1.382500,-3.797500],[1.347500,-3.972500],[1.627500,-4.182500],[0.577500,-4.812500],[0.682500,-4.987500],[1.732500,-4.567500],[0.962500,-6.387500],[-0.542500,-7.227500],[1.767500,-10.797500],[2.047500,-10.762500],[5.757500,-9.152500],[10.342500,-1.452500],[10.727500,-1.207500],[10.762500,-1.067500],[10.797500,-1.102500],[10.902500,-1.032500],[11.112500,-0.892500],[11.217500,-0.787500],[11.182500,-0.682500],[11.077500,-0.577500],[10.657500,-0.717500],[10.622500,-0.752500],[10.622500,-0.857500],[10.342500,-0.997500],[9.922500,-1.242500],[9.327500,-1.557500],[9.257500,-1.522500],[9.082500,-1.522500],[9.012500,-1.557500],[8.977500,-1.627500],[8.942500,-1.697500],[8.872500,-1.697500],[8.697500,-1.732500],[8.592500,-1.837500],[8.592500,-1.907500],[8.522500,-1.907500],[8.347500,-1.942500],[8.242500,-2.082500],[8.207500,-2.187500],[4.182500,-4.427500],[4.532500,-3.447500],[5.337500,-3.097500],[8.417500,-1.382500],[11.182500,1.277500],[11.462500,1.452500],[11.532500,1.452500],[11.567500,1.487500],[11.637500,1.487500],[11.777500,1.592500],[11.882500,1.662500],[11.882500,1.802500]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-2.362500,2.432500],[-2.467500,2.012500],[-2.922500,1.592500],[-2.782500,1.452500],[-2.537500,1.627500],[-2.537500,1.452500],[-2.677500,1.382500],[-2.817500,0.262500],[-4.112500,-0.717500],[-4.112500,-0.892500],[-4.567500,-1.242500],[-5.302500,-0.017500],[-2.362500,2.432500]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-3.762500,-2.712500],[-3.132500,-2.677500],[-3.622500,-2.992500],[-3.762500,-2.712500]]);
    }
  }
}

poly_path4194(5);
