
$suppressorChance = 0.5
$suppressors = Cat.new(["Suppressor 1", "Suppressor 2", "Suppressor 3", "Suppressor 4", "Suppressor 5", "Suppressor 6", "Suppressor 7", "Suppressor 8",
	"Gepard Suppressor", "M9A1 Suppressor", "MP5K Suppressor", "PP2000 Suppressor", "Salvo Suppressor"])

$attachmentChance = 0.5
$sightChance = 0.5
$irons = Cat.new(["Backup Iron Sights", "Glow Ring Sights", "Shotgun Iron Sights",])
$sights = Cat.new(["Elevated MR0", "Gamepoint RDS", "Holosight Long", "Holosight Short",
"KDR Red Dot", "DKP7 OSA", "PK23", "Red Dot Compact", "Red Dot Tall"])
$scopes = Cat.new(["1-24x Scope", "3-12x Scope", "ACOG", "8-32x Scope", "Ghost DR", "12-60x Scope"])
$lasers = Cat.new(["Laser", "Tactical Laser"])
$attachements = Cat.new([$lasers, "Tactical Light"])
$magnifiers = Cat.new(["2x Magnifier", "3x Magnifier", "Gamepoint Magnifier"])
$russian = Cat.new(["Kobra Reflex Sight", "PK01VS", "PS01 Scope"])

$assaults = Cat.new([
	Item.new("AK101", true, true, true),
	Item.new("AKM", true, true, true),
	Item.new("G36", true),
	Item.new("Galil", true, true),
	Item.new("IA2", true, true),
	Cat.new([Item.new("L85A2", true), Item.new("L85A2 Susat", true)]),
	Item.new("M16A1", true),
	Item.new("M4A1", true, true),
	Item.new("MK18", true, true),
	Item.new("Scar 16", true, true),
	Item.new("Famas", true)
], "Assault Rifle")

$carbines = Cat.new([
	Item.new("AKS74U", true, true, true),
	Item.new("AUG A3", true, true),
	Cat.new([Item.new("Commando 552", true), Item.new("Commando 552 Tactical", true, true)]),
	Item.new("CX4", true, true),
	Item.new("G3dC", true, true),
	Cat.new([Item.new("Model 8"), Item.new("Model 8 Shoty")]),
	Item.new("SKS Modern", true, true)
], "Carbine")

$battlerifles = Cat.new([
	Item.new("Dragonuv", true, true, true, true),
	Cat.new([Item.new("M4", true), Item.new("M4 DMR", true, true)]),
	Cat.new([Item.new("Mas 49", true), Item.new("Mas 49 w. Sight", true)]),
	Item.new("Scar 17 mod 0", true, true)
], "Battle Rifle")

$snipers = Cat.new([
	Item.new("M107A1 Anti Material", false, true),
	Cat.new([Item.new("Sako 85", false, true), Item.new("Sako 85 Shorty", false, true)]),
	Cat.new([Item.new("Tactical 8400", false, true), Item.new("Tactical 8400 Shorty", false, true)])
], "Sniper")

$smgs = Cat.new([
	Item.new("AEK19", true, true),
	Item.new("Gepard", true),
	Item.new("Mac 11", true),
	Item.new("MP5A2", true, true),
	Item.new("MP5K", true, true),
	Item.new("MP9", false, true),
	Item.new("PP Bizon", false, true, true),
	Item.new("UMP45", true, true),
	Cat.new([Item.new("Vector 45", true, true), Item.new("Vector 45 w. Shroud", false, true)])
], "SMG")

$pdws = Cat.new([
	Item.new("MP7A1", true, true),
	Item.new("P90", true, true),
	Item.new("PP2000", true, true),
	Item.new("PPA1 KODR", true, true),
	Item.new("QC9", true, true)
], "PDW")

$breakactions = Cat.new([
	Cat.new([Item.new("DT11"), Item.new("DT11 Chopped"), Item.new("DT11 Shorty")]),
	Item.new("Cartoon 8 Gauge"),
	Cat.new([Item.new("MTS 255", false, true), Item.new("MTS255 Shorty", false, true)]),
	Cat.new([Item.new("Flare Gun"), Item.new("Flare Gun HP")]),
	Cat.new([Item.new("Break Action"), Item.new("Break Action Super Shorty")]),
], "Break Action Shotgun")

$tubes = Cat.new([
	Item.new("M1014", false, true),
	Item.new("Marshall Ultrashot", true, true),
	Item.new("590A1", false, true),
	Cat.new([Item.new("870"), Item.new("870 Shorty"), Item.new("870 Chopped")]),
	Cat.new([Item.new("SPAS 12", true), Item.new("SPAS 12 Tactical", true, true)]),
	Cat.new([Item.new("Super Shorty"), Item.new("Super Shorty Tactical", false, true)])
], "Tube Fed")

$mags = Cat.new([
	Item.new("KWG 1", true),
	Item.new("Saiga 12", true, true, true)
], "Magazine Shotgun")

$lever = Cat.new([
	Cat.new([Item.new("1887"), Item.new("1887 Shorty"), Item.new("1887 Shorty T2")])
], "Lever Action")

$semiauto = Cat.new([
	Item.new("M9A1", true, true),
	Item.new("P4X", true, true),
	Item.new("Bergmann"),
	Item.new("Browning HP"),
	Item.new("C96 Mauser"),
	Cat.new([Item.new("M911 Classic", true, true), Item.new("M911 Modern", true, true), Item.new("M911 Gold", true, true)]),
	Item.new("CZ75 Shadow", true, true),
	Item.new("Dessert Eagle"),
	Item.new("Frontier Model B"),
	Item.new("G22", true, true),
	Cat.new([Item.new("Jetfire Modern", true), Item.new("Jetfire Pearl", true)]),
	Item.new("PPK", true),
	Item.new("MK3"),
	Item.new("P250", true, true),
	Item.new("Tec 9", true),
	Item.new("TT33")
], "Semiauto Pistol")

$autopistol = Cat.new([
	Item.new("M9 Cleric"),
	Item.new("G22 Auto", true, true),
	Item.new("Tec 9 Auto Mod", true),
	Item.new("Union French"),
	Item.new("VZ64")
], "Auto Pistol")

$revolvers = Cat.new([
	Item.new("LAPD Special"),
	Item.new("M1876"),
	Item.new("R8", false, true),
	Cat.new([Item.new("Rhino 20DS"), Item.new("Rhino 40", false, true), Item.new("Rhino 50", false, true), Item.new("Rhino 60", false, true)]),
	Item.new("Single Action Army"),
	Item.new("SW 686", false, true),
	Item.new("Model10"),
	Item.new("Model29")
], "Revolver")

$shotguns = Cat.new([$breakactions, $tubes, $mags, $lever])
$rifles = Cat.new([$assaults, $carbines, $battlerifles, $snipers, $smgs, $pdws])
$pistols = Cat.new([$semiauto, $autopistol, $revolvers])
$mainWeapons = Cat.new([$rifle, $shotgun])
