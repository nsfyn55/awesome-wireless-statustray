## Description
  If you are an Awesome WM user(and if you aren't you should be) you can drop this in your rc.lua and it will 
  generate a widget that notes your wireless status in the format of (Connected: <Network-Name>). This could be
  easily extended to include whatever wireless network data in pertinent to you that can be retrieved by calling
  executables on the path.
## Dependencies
  iwconfig must be on your path
##Installation
  Copy the widget defintions and status function for lua-main.lua into your main awesome configuration. Also ensure
that the trim function defined in utility-functions.lua is in scope somewhere when your main lua script is interpreted.n
##Credit
  This is based largely on a battery status widget I've had in my conf forever. I'm not sure where I got it from, 
  but if you recognize the work let me know and I'll glady give credit.