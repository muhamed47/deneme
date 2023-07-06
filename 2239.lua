local gameCheck = gg.getTargetPackage()
if gameCheck ~= "com.criticalforceentertainment.criticalops" then
gg.alert("Please Select Critical Ops!", "Exit")
print("Select Critical Ops And Try Again")
gg.setVisible(true)
os.exit()
end

version = "1.39.0.a2239"

local v = gg.getTargetInfo()
if v.versionName ~= version then
gg.alert(" Cheat İs Valid For Version "..version.."")
print("  Game Version İs Not Valid  ")
return os.exit()
end

function setvalue(address, flags, value)
    local tt = {}
    tt[1] = {}
    tt[1].address = address
    tt[1].flags = flags
    tt[1].value = value
    gg.setValues(tt)
end

hidenames = false
denemecheck = false 

gg.setVisible(true)
function func()
local menu = gg.choice({
"Bypass",
"Radars" ,
"Weapons",
"Character",
},nil,"Critical Ops Hack "..version.." X64")
if menu == nil then else
if menu == 1 then bypass() end
if menu == 2 then radars() end
if menu == 3 then weapon() end
if menu == 4 then character() end
end
end

function bypass()
gg.setVisible(false)
so=gg.getRangesList('libil2cpp.so')[1].start
byps1 = 0x17533e8
byps2 = 0x17533ec
byps3 = 0x17533f0
byps4 = 0x17533f4
byps5 = 0x17533f8
byps6 = 0x17533fc
byps7 = 0x1753400
byps8 = 0x1753404
byps9 = 0x1753408
setvalue(so+byps1,16,"hC0035FD6")
setvalue(so+byps2,16,"hC0035FD6")
setvalue(so+byps3,16,"hC0035FD6")
setvalue(so+byps4,16,"hC0035FD6")
setvalue(so+byps5,16,"hC0035FD6")
setvalue(so+byps6,16,"hC0035FD6")
setvalue(so+byps7,16,"hC0035FD6")
setvalue(so+byps8,16,"hC0035FD6")
setvalue(so+byps9,16,"hC0035FD6")
gg.toast("Bypass On")
gg.setVisible(true)
end






nospec = false
noesp = false
nored = false
noteam = false
noextented = false

function radars()
gg.setVisible(false)
local radars1 = gg.prompt({
"Spectator Radar","Esp","Red Radar","Team Radar","Extented Radar"},
{nospec,noesp,nored,noteam,noextented},
{"checkbox","checkbox","checkbox","checkbox","checkbox"})
    
if radars1 == nil then else
if radars1[1] == true then spec() end
if radars1[1] == false then specfalse() end
if radars1[2] == true then esp() end
if radars1[2] == false then espfalse() end
if radars1[3] == true then red() end
if radars1[3] == false then redfalse() end
if radars1[4] == true then team() end
if radars1[4] == false then teamfalse() end
if radars1[5] == true then extented() end
if radars1[5] == false then extentedfalse() end
gg.setVisible(true)
end
end

function spec()
if nospec == true then
else
nospec = true
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x18A0100
setvalue(so+py,16,"h1F2003D5")
gg.toast("Spectator Radar On")
end
end

function specfalse()
if nospec == false then
else
nospec = false
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x18A0100
setvalue(so+py,16,"h60000036")
gg.toast("Spectator Radar Off")
end
end
    
function esp()
if noesp == true then
else
noesp = true
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x1d75910
setvalue(so+py,16,"h1F2003D5")
gg.toast("Esp On")
end
end    

function espfalse()
if noesp == false then
else
noesp = false
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x1d75910
setvalue(so+py,16,"h3F03086B")
gg.toast("Esp Off")
end
end

function red()
if nored == true then
else
nored = true
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x14ebe10
setvalue(so+py,16,"h1F2003D5")
gg.toast("Red Radar On")
end
end

function redfalse()
if nored == false then
else
nored = false
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x14ebe10
setvalue(so+py,16,"h7F631594")
gg.toast("Red Radar Off")
end
end

function team()
if noteam == true then
else
noteam = true
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x16bc02c
py2 = 0x1acbd20
setvalue(so+py,16,"h1F01086B")
setvalue(so+py2,32,"h000080D2C0035FD6")
gg.toast("Team Radar On")
end
end

function teamfalse()
if noteam == false then
else
noteam = false
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x16bc02c
py2 = 0x1acbd20
setvalue(so+py,16,"h1F090071")
setvalue(so+py2,32,"hE1031F2ABAFFFF17")
gg.toast("Team Radar Off")
end
end
    
function extented()
if noextented == true then
else
noextented = true
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("4575657222512050176", gg.TYPE_QWORD)
gg.setVisible(false)
gg.getResults(10000)
gg.editAll("4575657222520473833", gg.TYPE_QWORD)
gg.setVisible(false)
gg.getResultsCount()
gg.clearResults()
gg.toast("Extented Radar On")
end
end

function extentedfalse()
if noextented == false then
else
noextented = false
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("4575657222520473833", gg.TYPE_QWORD)
gg.setVisible(false)
gg.getResults(10000)
gg.editAll("4575657222512050176", gg.TYPE_QWORD)
gg.setVisible(false)
gg.getResultsCount()
gg.clearResults()
gg.toast("Extented Radar Off")
end
end


norec = false
nosprd = false
nowall = false
noback = false
nolong = false


function weapon()
gg.setVisible(false)
local multi2 = gg.prompt({
"No Recoil","No Spread","Wall Shot","Back Stab","Long Knife","Head Rain [0 ;10]","Body Rain [0; 10]"},
{norec,nosprd,nowall,noback,nolong,0,0},
{"checkbox","checkbox","checkbox","checkbox","checkbox","number","number"})
if multi2 == nil then else
if multi2[1] == true then recoil() end
if multi2[1] == false then recoilfalse() end
if multi2[2] == true then Spread() end
if multi2[2] == false then Spreadfalse() end
if multi2[3] == true then wall() end
if multi2[3] == false then wallfalse() end
if multi2[4] == true then back() end
if multi2[4] == false then backfalse() end
if multi2[5] == true then long() end
if multi2[5] == false then longfalse() end
gg.setVisible(true)
end
end


function recoil()
if norec == true then
else
norec = true
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x15d4e00
setvalue(so+py,16,"hC0035FD6")
gg.toast("No Recoil On") 
end
end

function recoilfalse()
if norec == false then
else
norec = false
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x15d4e00
setvalue(so+py,16,"hF40F1EF8")
gg.toast("No Recoil Off")
end
end


function Spread()
if nosprd == true then
else
nosprd = true
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x15d4d64
py2 = 0x16c3260
setvalue(so+py,32,"hE003271EC0035FD6")
setvalue(so+py2,16,"hC0035FD6")
gg.toast("No Spread On")
end
end

function Spreadfalse()
if nosprd == false then
else
nosprd = false
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x15d4d64
py2 = 0x16c3260
setvalue(so+py,32,"hE80F1EFCF37B01A9")
setvalue(so+py2,16,"hE923BD6D")
gg.toast("No Spread Off")
end
end


function wall()
if nowall == true then
else
nowall = true
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x10690d8
setvalue(so+py,16,"h1F2003D5")
gg.toast("Wall Shot On")
end
end

function wallfalse()
if nowall == false then
else
nowall = false
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x10690d8
setvalue(so+py,16,"hBF03156B")
gg.toast("Wall Shot Off")
end
end


function back()
if noback == true then
else
noback = true
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x10678e4
setvalue(so+py,16,"h1F2003D5")
gg.toast("Back Stab On")
end
end

function backfalse()
if noback == false then
else
noback = false
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x10678e4
setvalue(so+py,16,"h2FE14CBD")
gg.toast("Back Stab Off")
end
end


function long()
if nolong == true then
else
nolong = true
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x1067814
setvalue(so+py,16,"h0890221E")
gg.toast("Long Knife On")
end
end

function longfalse()
if nolong == false then
else
nolong = false
so=gg.getRangesList('libil2cpp.so')[1].start
py = 0x1067814
setvalue(so+py,16,"hE86240BD")
gg.toast("Long Knife Off")
end
end








while true do
if gg.isVisible(true) then
gg.setVisible(false)
func()
end
end