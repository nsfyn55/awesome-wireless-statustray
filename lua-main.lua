-- Define Widget 
mywirelessmon = widget({ type = "textbox",
  name = "mywirelessmon", align = "right" })

--Retrieve Status For Widget
function wireless_status ()
  local output={} --output buffer
  local fd=io.popen("iwconfig wlan0", "r") 
  local line=fd:read()
  local ssid = trim(string.match(line, "ESSID:(.+)"))

  if ssid and ssid ~= "off/any" then
    table.insert(output,"<span color=\"#77CC77\">connected: "..
      ssid.."</span>")
  else
    table.insert(output,"<span color=\"#CC7777\">not connected</span>")
  end

  return table.concat(output," ") 
end

--Bind Timer, status function, and widget 
mywirelessmon.text = " " .. wireless_status() .. " "
my_wireless_timer=timer({timeout=5})
my_wireless_timer:add_signal("timeout", function()
    mywirelessmon.text = " " .. wireless_status() .. " "
  end)
my_wireless_timer:start()
