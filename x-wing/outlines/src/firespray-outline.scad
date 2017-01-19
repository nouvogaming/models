
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path4208(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[5.197500,-5.302500],[5.477500,-5.302500],[5.757500,-5.302500],[6.107500,-5.337500],[7.332500,-5.337500],[8.277500,-5.372500],[8.487500,-5.372500],[8.662500,-5.267500],[8.907500,-4.987500],[8.872500,-4.952500],[8.837500,-4.917500],[8.977500,-4.777500],[9.152500,-4.462500],[9.222500,-4.287500],[9.292500,-4.077500],[9.327500,-3.972500],[9.362500,-3.797500],[9.327500,-3.552500],[9.082500,-3.377500],[8.137500,-3.202500],[7.612500,-3.132500],[7.507500,-3.307500],[7.332500,-3.272500],[7.367500,-3.167500],[7.227500,-3.132500],[7.122500,-3.307500],[6.912500,-3.272500],[6.947500,-3.132500],[6.842500,-3.132500],[6.807500,-3.202500],[6.772500,-3.132500],[6.667500,-3.097500],[6.597500,-3.237500],[6.457500,-3.342500],[6.317500,-3.377500],[6.177500,-3.447500],[6.142500,-3.517500],[6.107500,-3.552500],[6.107500,-3.692500],[5.827500,-3.797500],[5.792500,-3.657500],[5.547500,-3.447500],[5.442500,-3.132500],[5.267500,-2.432500],[4.882500,-1.662500],[4.287500,-1.137500],[4.252500,-0.927500],[4.217500,-0.717500],[4.217500,-0.577500],[4.217500,-0.402500],[4.147500,-0.262500],[4.112500,-0.157500],[4.077500,0.052500],[4.042500,0.367500],[4.112500,0.682500],[4.042500,1.557500],[4.007500,1.592500],[3.972500,1.627500],[3.972500,1.662500],[3.902500,1.802500],[3.272500,7.927500],[3.342500,8.032500],[3.412500,8.172500],[3.517500,8.347500],[3.657500,8.312500],[4.077500,8.697500],[4.427500,8.872500],[4.567500,8.872500],[4.742500,9.047500],[4.742500,9.222500],[4.637500,9.362500],[4.462500,9.257500],[4.427500,9.152500],[4.147500,9.047500],[4.042500,9.117500],[3.692500,9.082500],[3.552500,9.397500],[3.027500,9.957500],[3.027500,10.132500],[3.027500,10.587500],[2.992500,11.182500],[2.747500,11.497500],[2.362500,11.567500],[1.802500,11.357500],[0.997500,10.552500],[0.507500,9.992500],[0.507500,9.887500],[0.577500,9.712500],[0.472500,9.677500],[0.262500,9.607500],[0.157500,9.362500],[0.332500,8.907500],[0.262500,8.872500],[0.227500,8.837500],[0.227500,8.802500],[0.297500,8.557500],[0.157500,7.787500],[0.052500,7.052500],[-0.017500,7.017500],[-0.052500,6.947500],[-0.052500,6.877500],[-0.052500,6.842500],[-0.087500,6.807500],[-0.052500,6.702500],[-0.017500,6.632500],[-0.157500,5.967500],[-0.927500,5.967500],[-1.662500,5.652500],[-2.362500,4.847500],[-3.132500,3.482500],[-3.867500,1.767500],[-4.427500,-0.122500],[-4.637500,-2.012500],[-4.672500,-2.607500],[-5.932500,-2.572500],[-6.877500,-2.572500],[-7.437500,-2.677500],[-7.542500,-2.642500],[-7.647500,-2.642500],[-8.347500,-2.957500],[-8.662500,-2.887500],[-8.802500,-3.167500],[-8.907500,-3.202500],[-9.047500,-3.272500],[-9.082500,-3.307500],[-9.222500,-3.447500],[-9.327500,-3.832500],[-9.362500,-4.007500],[-9.362500,-4.077500],[-9.292500,-4.252500],[-9.362500,-4.392500],[-9.222500,-4.532500],[-9.257500,-4.672500],[-8.942500,-4.812500],[-8.137500,-4.812500],[-6.772500,-4.882500],[-4.917500,-4.952500],[-4.777500,-4.847500],[-4.637500,-4.567500],[-4.497500,-4.532500],[-4.147500,-4.567500],[-3.657500,-4.602500],[-3.517500,-4.672500],[-3.272500,-4.532500],[-3.237500,-4.462500],[-2.712500,-4.462500],[-2.712500,-4.497500],[-2.607500,-4.532500],[-2.642500,-4.602500],[-2.677500,-4.672500],[-2.817500,-4.742500],[-2.817500,-4.847500],[-2.747500,-5.162500],[-2.677500,-5.582500],[-2.817500,-5.722500],[-3.797500,-5.232500],[-4.252500,-5.442500],[-4.287500,-5.337500],[-4.602500,-5.442500],[-4.462500,-6.317500],[-4.287500,-7.052500],[-3.902500,-7.682500],[-3.237500,-8.942500],[-2.397500,-10.027500],[-1.102500,-11.042500],[-1.067500,-11.042500],[-0.542500,-11.322500],[0.402500,-11.567500],[1.277500,-11.357500],[2.082500,-10.972500],[2.117500,-10.937500],[2.187500,-10.902500],[3.377500,-9.747500],[4.217500,-8.207500],[4.777500,-5.967500],[4.952500,-5.827500],[5.197500,-5.302500]]);
  }
}

poly_path4208(5);
