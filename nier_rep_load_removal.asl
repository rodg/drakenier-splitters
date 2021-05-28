// Splitter by Wscheng with help from Alo, Rod, and Jeff

state("NieR Replicant ver.1.22474487139")
{
	byte Loading: 0x00EE29B0, 0xD4;
	string32 Event: 0x15C3163;
}

startup
{
	vars.Events = new string[] {
	
	//Prologue
	//"eid_0050_a0010",			//start
	"eid_0050_a0020",			//first wave
	"eid_0050_a0032",			//magic get
	"eid_0050_a0050",			//prologue end
	
	//First half
	
	//Hänsel und Gretel
	//"eid_0100_a0010",		
	"eid_0100_a0030",			//village discovery
	"eid_0200_a0010",			//lost shrine discovery
	"eid_0200_a0012",			//lost shrine inside
	"eid_0200_a0017",			//lost shrine top
	"eid_0200_a0032",			//weiss
	"eid_0200_a0050",			//hänsel und gretel start
	"eid_0200_a0060",			//phase 1 end
	"eid_0200_a0070",			//phase 2 end
	"eid_0200_a0080",			//hänsel und gretel end
	
	//Hook 1
	//"eid_0200_a0100",			//back at protagonist's house
	"eid_0300_a0035",			//popola explains magazines
	"eid_1000_a0010",			//the aerie discovery
	"eid_1000_a0030",			//kainé start
	"eid_1000_a0040",			//kainé phase 1 end
	"eid_1000_a0050",			//Hook 1 start
	"eid_1000_a0070",			//Hook 1 end
	
	//Geppetto
	"eid_1320_a0010",			//seafront discovery
	"eid_1200_a0005",			//junk heap discovery
	"eid_1270_a0030",			//geppetto start
	"eid_1270_a0040",			//geppetto end
	
	//Hook 2
	"eid_1050_a0020",			//hook 2 start
	"eid_1050_a0030",			//phase 1 end
	"eid_1050_a0040",			//phase 2 end
	"eid_1050_a0050",			//sidescroller
	"eid_1050_a0060",			//phase 3 end
	"eid_1050_a0070",			//hook 2 end
	
	//Shariyar
	"eid_1050_a0082",			//help kainé
	"eid_1410_a0060",			//facade discovery
	//"eid_1410_a0062",			//facade discovery
	"eid_1450_a0060",			//prince
	"eid_1450_a0070",			//room 3 start
	"eid_1450_a0080",			//shariyar start
	"eid_1450_a0085",			//phase 1 end
	"eid_1450_a0090",			//shariyar end
	
	//Grimoire Rubrum
	"eid_1100_a0010",			//emil mansion
	"eid_1100_a0050",			//emil
	"eid_1100_a0075",			//grimoire rubrum start
	"eid_1100_a0080",			//phase 1 end
	"eid_1100_a0090",			//grimoire rubrum end
	
	//Jack of Hearts
	//"eid_1100_a0105",			//mansion end
	//"eid_2000_a0010",			//village discovery 2
	//"eid_2000_a0012",			//yonah sleep
	"eid_2000_a0042",			//jack of hearts start
	"eid_2000_a0060",			//phase 1 end
	"eid_2000_a0070",			//phase 2 end
	"eid_2000_a0080",			//jack of hearts end
	//"eid_2000_a0082",			//???
	
	//Grimoire Noir
	"eid_2000_a0100",			//library boss start
	"eid_2000_a0110",			//library boss end
	"eid_2000_a0120",			//grimoire noir start
	"eid_2000_a0130",			//grimoire noir end
	
	//Second half
	
	//Halua
	//"eid_3000_a0012",			//Second half start
	"eid_3000_a0030",			//village shades
	"eid_3000_a0038",			//enter library
	"eid_3100_a0050",			//enter halua room
	"eid_3100_a0058",			//halua start
	"eid_3100_a0070",			//halua end
	
	//Gretel
	"eid_3100_a0090",			//look at him
	"eid_3200_a0010",			//library boss 2 start
	"eid_3200_a0040",			//library boss 2 end
	//"eid_3200_a0050",			//kainé alive
	//"eid_9800_a0040",			//
	//"eid_3200_a0070",			//
	"eid_4100_a0007",			//lost shrine rear path discovery
	"eid_4100_a0070",			//gretel start
	"eid_4100_a0080",			//phase 1 end
	"eid_4100_a0090",			//phase 2 end
	"eid_4100_a0100",			//gretel end/kainé start
	
	//P-33
	"eid_4030_a0040",			//junk heap 2nd part
	"eid_4030_a0090",			//P-33 start
	"eid_4030_a0100",			//phase 1 end
	"eid_4030_a0110",			//P-33 end
	
	//Wendy
	"eid_4430_a0070",			//kainé down
	"eid_4430_a0080",			//wendy start
	"eid_4430_a0082",			//phase 1 end
	"eid_4430_a0084",			//wendy end
	//"eid_4430_a0100",			//
	
	//Louise
	"eid_9320_a0240",			//ship escape
	"eid_9320_a0270",			//Louise start
	"eid_9320_a0290",			//phase 1 end
	"eid_9320_a0310",			//phase 2 end
	"eid_9320_a0350",			//phase 3 end
	"eid_9320_a0370",			//Louise end
	
	//Roc
	"eid_4230_a0082",			//roc 1 start
	"eid_4230_a0090",			//roc 1 end
	"eid_4230_a0105",			//roc 2 start
	"eid_4230_a0140",			//roc 2 end
	
	//Devola & Popola
	"eid_6000_a0010",			//enter pigeon room
	"eid_6000_a0024",			//dev&pop start
	"eid_6000_a0030",			//dev&pop phase 1 end
	"eid_6000_a0040",			//dev&pop leave
	"eid_6000_a0060",			//walz start
	"eid_6000_a0065",			//door kick
	"eid_6000_a0066",			//kainé help
	"eid_6000_a0068",			//goose
	"eid_6000_a0090",			//goose
	"eid_6000_a0100",			//goose
	"eid_6000_a0110",			//dev&pop 2 room
	"eid_6000_a0114",			//dev&pop 2 start
	"eid_6000_a0120",			//dev dead
	"eid_6000_a0140",			//pop dead
	
	//Shadowlord
	"eid_6000_a0150",			//yes pls
	"eid_6000_a0160",			//shadowlord start
	"eid_6000_a0180",			//shadowlord phase 1 end
	"eid_6000_a0190",			//shadowlord phase 2 end
	"eid_6000_a0200",			//shadowlord dead
	"eid_7000_a0012",			//that's me
	"eid_7000_a0020"			//credits
	};
}

start
{
//return current.Event == "eid_0050_a0010";
return current.Loading > 4;
}

split
{
	foreach (string events in vars.Events)
	{
		if (current.Event == events && current.Event != old.Event)
		{
			return true;
		}
	}
}

isLoading
{
	return current.Loading > 4;
}
