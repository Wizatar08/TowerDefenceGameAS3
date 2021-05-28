package {
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextFormat;

	public class Index {
		var main
		var index
		var screen
		var side
		var underline: TextFormat = new TextFormat()

			public function Index(m) {
				main = m
				index = main.getIndexMenu()
				index.stop()
				screen = "index"
				side = "index"
				index.backBtn.addEventListener(MouseEvent.MOUSE_UP, exit)
				index.buildings.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings)
				index.monsters.addEventListener(MouseEvent.MOUSE_UP, go_index_monsters)


			}

		public function update(e: Event) {

		}

		private function exit(e: MouseEvent) {
			if (screen == "index") {
				main.indexOut()
			} else if (screen == "index_buildings" || screen == "index_monsters") {
				index.gotoAndStop("index")
				screen = "index"
				index.buildings.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings)
				index.monsters.addEventListener(MouseEvent.MOUSE_UP, go_index_monsters)
			} else if (side == "buildings") {
				screen = "index_buildings"
				index.gotoAndStop("index_buildings")
				index.towersBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_towers)
				index.mudDispensersBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_mudDispensers)
				index.lobbersBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_lobbers)
				index.goldHarvestersBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_goldHarvesters)
				index.specialtysBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_specialty)
				index.minesBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_mines)
			} else if (side == "monsters") {

			}

		}

		private function go_index_buildings(e: MouseEvent) { // WHEN BUILDING BUTTON IS PRESSED:
			screen = "index_buildings"
			side = "buildings"
			index.gotoAndStop("index_buildings")
			index.towersBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_towers)
			index.mudDispensersBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_mudDispensers)
			index.lobbersBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_lobbers)
			index.goldHarvestersBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_goldHarvesters)
			index.specialtysBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_specialty)
			index.minesBtn.addEventListener(MouseEvent.MOUSE_UP, go_index_buildings_mines)
		}
		private function go_index_buildings_towers(e: MouseEvent) {
			screen = "index_buildings_towers"
			index.gotoAndStop("index_buildings_towers")
			index.tower1.addEventListener(MouseEvent.MOUSE_UP, towerPress1)
			index.tower2.addEventListener(MouseEvent.MOUSE_UP, towerPress2)
			index.tower3.addEventListener(MouseEvent.MOUSE_UP, towerPress3)
			index.towerMachineGun.addEventListener(MouseEvent.MOUSE_UP, towerPressMachineGun)
			clearText()
		}
		private function go_index_buildings_mudDispensers(e: MouseEvent) {
			screen = "index_buildings_mudDispensers"
			index.gotoAndStop("index_buildings_mudDispensers")
			index.mudDispenser1.addEventListener(MouseEvent.MOUSE_UP, mudDispenserPress1)
			index.mudDispenser2.addEventListener(MouseEvent.MOUSE_UP, mudDispenserPress2)
			index.mudDispenser3.addEventListener(MouseEvent.MOUSE_UP, mudDispenserPress3)
			clearText()
		}
		private function go_index_buildings_lobbers(e: MouseEvent) {
			screen = "index_buildings_lobbers"
			index.gotoAndStop("index_buildings_lobbers")
			index.lobber1.addEventListener(MouseEvent.MOUSE_UP, lobberPress1)
			index.lobber2.addEventListener(MouseEvent.MOUSE_UP, lobberPress2)
			index.lobber3.addEventListener(MouseEvent.MOUSE_UP, lobberPress3)
			clearText()
		}
		private function go_index_buildings_goldHarvesters(e: MouseEvent) {
			screen = "index_buildings_goldHarvesters"
			index.gotoAndStop("index_buildings_goldHarvesters")
			index.goldHarvester1.addEventListener(MouseEvent.MOUSE_UP, goldHarvesterPress1)
			index.goldHarvester2.addEventListener(MouseEvent.MOUSE_UP, goldHarvesterPress2)
			index.goldHarvester3.addEventListener(MouseEvent.MOUSE_UP, goldHarvesterPress3)
			clearText()
		}
		private function go_index_buildings_specialty(e: MouseEvent) {
			screen = "index_buildings_specialty"
			index.gotoAndStop("index_buildings_specialty")
			index.hydrojetter1.addEventListener(MouseEvent.MOUSE_UP, hydrojetterPress1)
			index.hydrojetter2.addEventListener(MouseEvent.MOUSE_UP, hydrojetterPress2)
			index.hydrojetter3.addEventListener(MouseEvent.MOUSE_UP, hydrojetterPress3)
			clearText()
		}
		private function go_index_buildings_mines(e: MouseEvent) {
			screen = "index_buildings_mines"
			index.gotoAndStop("index_buildings_mines")
			index.mineExplosive.addEventListener(MouseEvent.MOUSE_UP, mineExplosivePress)
			index.mineReveal.addEventListener(MouseEvent.MOUSE_UP, mineRevealPress)
			index.mineTeleport.addEventListener(MouseEvent.MOUSE_UP, mineTeleportPress)
			clearText()
		}


		private function clearText() {
			index.textArea.t1.text = ""
			index.textArea.t2.text = ""
			index.textArea.t3.text = ""
			index.textArea.t4.text = ""
			index.textArea.t5.text = ""
			index.textArea.t6.text = ""
			index.textArea.t7.text = ""
			index.textArea.t8.text = ""
			index.textArea.t9.text = ""
			index.textArea.t10.text = ""
			index.textArea.t11.text = ""
			index.textArea.t12.text = ""
			index.textArea.t13.text = ""
			index.textArea.t14.text = ""
			index.textArea.t15.text = ""
			index.textArea.t16.text = ""
			index.textArea.t17.text = ""
			index.textArea.t18.text = ""
		}


		private function pressBtn(object) {
			clearText()
			underline.underline = true

			// TOWERS
			if (object == "tower1") {
				index.textArea.t1.text = "Tower Tier 1"
				index.textArea.t2.text = "Type: Shooter"
				index.textArea.t3.text = "Damage per bullet: 10"
				index.textArea.t4.text = "Building range: 80"
				index.textArea.t5.text = "Reload time: 1.5 seconds"
				index.textArea.t6.text = "Direct build cost: 60"
				index.textArea.t7.text = ""
			} else if (object == "tower2") {
				index.textArea.t1.text = "Tower Tier 2"
				index.textArea.t2.text = "Type: Shooter"
				index.textArea.t3.text = "Damage per bullet: 15"
				index.textArea.t4.text = "Building range: 100"
				index.textArea.t5.text = "Reload time: 1 second"
				index.textArea.t6.text = "Direct build cost: 150"
				index.textArea.t7.text = "Upgrade (from Tower Tier 1) cost: 100"
			} else if (object == "tower3") {
				index.textArea.t1.text = "Tower Tier 3"
				index.textArea.t2.text = "Type: Shooter"
				index.textArea.t3.text = "Damage per bullet: 20"
				index.textArea.t4.text = "Building range: 125"
				index.textArea.t5.text = "Reload time: 0.5 seconds"
				index.textArea.t6.text = "Direct build cost: 375"
				index.textArea.t7.text = "Upgrade (from Tower Tier 2) cost: 250"
			} else if (object == "towerMachineGun") {
				index.textArea.t1.text = "Machine Gun (Tower Tier 4)"
				index.textArea.t2.text = "Type: Shooter"
				index.textArea.t3.text = "Damage per bullet (default): 7"
				index.textArea.t4.text = "Building range (default): 90"
				index.textArea.t5.text = "Reload time (default): 8 shots per second"
				index.textArea.t6.text = "Upgrade (from Tower Tier 3) cost: 900"
				index.textArea.t7.text = "Tiered upgrades:"
				index.textArea.t8.text = "Damage (3 tiers, 700 each): Increases damage from each bullet."
				index.textArea.t9.text = "Tier 1: 10     Tier 2: 12      Tier 3: 15"
				index.textArea.t10.text = "Rapidfire (2 tiers, 1050 each): Increases this tower's reload time."
				index.textArea.t11.text = "Tier 1: 12 shots per second     Tier 2: 24 shots per second"
				index.textArea.t12.text = "Damage (3 tiers, 450 each): Increases building range for this tower."
				index.textArea.t13.text = "Tier 1: 100     Tier 2: 115      Tier 3: 130      Tier 4: 150      Tier 5: 180"
				index.textArea.t7.setTextFormat(underline);
			} else if (object == "mudDispenser1") {
				index.textArea.t1.text = "Mud Dispenser Tier 1"
				index.textArea.t2.text = "Type: N/A"
				index.textArea.t3.text = "Reload time: 8s"
				index.textArea.t4.text = "Range: 1 tile (beside)"
				index.textArea.t5.text = "Mud stay rate: 3.5s"
				index.textArea.t6.text = "Direct build cost: 40"
				index.textArea.t7.text = ""
			} else if (object == "mudDispenser2") {
				index.textArea.t1.text = "Mud Dispenser Tier 2"
				index.textArea.t2.text = "Type: N/A"
				index.textArea.t3.text = "Reload time: 5.5s"
				index.textArea.t4.text = "Range: 1 tile (beside)"
				index.textArea.t5.text = "Mud stay rate: 5s"
				index.textArea.t6.text = "Direct build cost: 300"
				index.textArea.t7.text = "Upgrade (from Mud Dispenser Tier 1) cost: 200"
			} else if (object == "mudDispenser3") {
				index.textArea.t1.text = "Mud Dispenser Tier 3"
				index.textArea.t2.text = "Type: N/A"
				index.textArea.t3.text = "Reload time: 3s"
				index.textArea.t4.text = "Range: 1 tile (beside)"
				index.textArea.t5.text = "Mud stay rate: 6s"
				index.textArea.t6.text = "Direct build cost: 550"
				index.textArea.t7.text = "Upgrade (from Mud Dispenser Tier 2) cost: 367"
			} else if (object == "lobber1") {
				index.textArea.t1.text = "Bomb Lobber Tier 1"
				index.textArea.t2.text = "Type: Explosive"
				index.textArea.t3.text = "Reload time: 4s"
				index.textArea.t4.text = "Range: 80"
				index.textArea.t5.text = "Damage (bombs): 3-15"
				index.textArea.t6.text = "Bomb fuze conditions: Time (1s)"
				index.textArea.t7.text = "Direct build cost: 50"
				index.textArea.t8.text = ""
			} else if (object == "lobber2") {
				index.textArea.t1.text = "Bomb Lobber Tier 2"
				index.textArea.t2.text = "Type: Explosive"
				index.textArea.t3.text = "Reload time: 3.5s"
				index.textArea.t4.text = "Range: 90"
				index.textArea.t5.text = "Damage (bombs): 5-25"
				index.textArea.t6.text = "Bomb fuze conditions: Time (0.75s)"
				index.textArea.t7.text = "Direct build cost: 470"
				index.textArea.t8.text = "Upgrade (from Bomb Lobber Tier 1) cost: 313"
			} else if (object == "lobber3") {
				index.textArea.t1.text = "Bomb Lobber Tier 3"
				index.textArea.t2.text = "Type: Explosive"
				index.textArea.t3.text = "Reload time: 3s"
				index.textArea.t4.text = "Range: 110"
				index.textArea.t5.text = "Damage (bombs): 8-40"
				index.textArea.t6.text = "Bomb fuze conditions: Impact with robot"
				index.textArea.t7.text = "Direct build cost: 855"
				index.textArea.t8.text = "Upgrade (from Bomb Lobber Tier 2) cost: 570"
			} else if (object == "goldHarvester1") {
				index.textArea.t1.text = "Gold Harvester Tier 1"
				index.textArea.t2.text = "Type: Magic"
				index.textArea.t3.text = "Reload time: 4s"
				index.textArea.t4.text = "Range: 1 tile (beside)"
				index.textArea.t5.text = "Magic stay rate: 2s"
				index.textArea.t6.text = "Magic gold multiplyer: 2x"
				index.textArea.t7.text = "Magic damage (when robot is on/hovering over tile): 2 per second"
				index.textArea.t8.text = "Direct build cost: 50"
				index.textArea.t9.text = ""
			} else if (object == "goldHarvester2") {
				index.textArea.t1.text = "Gold Harvester Tier 2"
				index.textArea.t2.text = "Type: Magic"
				index.textArea.t3.text = "Reload time: 2.5s"
				index.textArea.t4.text = "Range: 1 tile (beside)"
				index.textArea.t5.text = "Magic stay rate: 2.5s"
				index.textArea.t6.text = "Magic gold multiplyer: 2.5x"
				index.textArea.t7.text = "Magic damage (when robot is on/hovering over tile): 6 per second"
				index.textArea.t8.text = "Direct build cost: 495"
				index.textArea.t9.text = "Upgrade (from Gold Harvester Tier 1) cost: 330"
			} else if (object == "goldHarvester3") {
				index.textArea.t1.text = "Gold Harvester Tier 3"
				index.textArea.t2.text = "Type: Magic"
				index.textArea.t3.text = "Reload time: 1s"
				index.textArea.t4.text = "Range: 1 tile (beside)"
				index.textArea.t5.text = "Magic stay rate: 3s"
				index.textArea.t6.text = "Magic gold multiplyer: 3x"
				index.textArea.t7.text = "Magic damage (when robot is on/hovering over tile): 12 per second"
				index.textArea.t8.text = "Direct build cost: 1025"
				index.textArea.t9.text = "Upgrade (from Gold Harvester Tier 2) cost: 683"
			} else if (object == "hydrojetter1") {
				index.textArea.t1.text = "Hydrojetter Tier 1"
				index.textArea.t2.text = "Type: Shooter"
				index.textArea.t3.text = "Damage per shot: 30"
				index.textArea.t4.text = "Building range: 150"
				index.textArea.t5.text = "Reload time: 4 seconds"
				index.textArea.t6.text = "Direct build cost: 160"
				index.textArea.t7.text = "Notes:"
				index.textArea.t8.text = "This building only shoots at robots touching water tiles. This will not damage those on"
				index.textArea.t9.text = "land or drone robots. Also, this will not damage Armored Hydro Rovers, in or out of"
				index.textArea.t10.text = "water."
				index.textArea.t7.setTextFormat(underline);
			} else if (object == "hydrojetter2") {
				index.textArea.t1.text = "Hydrojetter Tier 2"
				index.textArea.t2.text = "Type: Shooter"
				index.textArea.t3.text = "Damage per shot: 45"
				index.textArea.t4.text = "Building range: 175"
				index.textArea.t5.text = "Reload time: 3 seconds"
				index.textArea.t6.text = "Direct build cost: 420"
				index.textArea.t7.text = "Upgrade (from Hydrojetter Tier 1) cost: 280"
				index.textArea.t8.text = "Notes:"
				index.textArea.t9.text = "This building only shoots at robots touching water tiles. This will not damage those on"
				index.textArea.t10.text = "land or drone robots."
				index.textArea.t8.setTextFormat(underline);
			} else if (object == "hydrojetter3") {
				index.textArea.t1.text = "Hydrojetter Tier 3"
				index.textArea.t2.text = "Type: Shooter"
				index.textArea.t3.text = "Damage per shot: 65"
				index.textArea.t4.text = "Building range: 200"
				index.textArea.t5.text = "Reload time: 2 seconds"
				index.textArea.t6.text = "Direct build cost: 930"
				index.textArea.t7.text = "Upgrade (from Hydrojetter Tier 2) cost: 620"
				index.textArea.t8.text = "Notes:"
				index.textArea.t9.text = "This building only shoots at robots touching water tiles. This will not damage those on"
				index.textArea.t10.text = "land or drone robots."
				index.textArea.t8.setTextFormat(underline);
			} else if (object == "mineExplosive") {
				index.textArea.t1.text = "Explosive Mine"
				index.textArea.t2.text = "Type: Explosive"
				index.textArea.t3.text = "Cost: 120"
				index.textArea.t4.text = "Upon contact with a robot (not a drone), this mine/plate will explode, dealing 10-50"
				index.textArea.t5.text = "damage to all robots except drones."
			} else if (object == "mineReveal") {
				index.textArea.t1.text = "Revealing Plate"
				index.textArea.t2.text = "Type: Energy"
				index.textArea.t3.text = "Cost: 150"
				index.textArea.t4.text = "Upon contact with a robot (not a drone), this mine/plate will create an energy field."
				index.textArea.t5.text = "Any hidden robots in that field will be revealed for 3 seconds, as well as slowing."
				index.textArea.t6.text = "them too."
			} else if (object == "mineTeleport") {
				index.textArea.t1.text = "Wormhole Plate"
				index.textArea.t2.text = "Type: Magic"
				index.textArea.t3.text = "Cost: 185"
				index.textArea.t4.text = "Upon contact with a robot (not a drone), this mine/plate will create a wormhole. When"
				index.textArea.t5.text = "a robot (except a drone) touches that wormhole, they will be teleported back to where"
				index.textArea.t6.text = "they began."
			}

			// MONSTERS
			if (object == "m1") {
				index.textArea.t1.text = "Basic rover"
				index.textArea.t2.text = "Health: 30"
				index.textArea.t3.text = "Speed: 0.5"
				index.textArea.t4.text = "Gold reward: 4"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 0%"
				index.textArea.t7.text = "Magic resistance: 0%"
			} else if (object == "m2") {
				index.textArea.t1.text = "Guard rover"
				index.textArea.t2.text = "Health: 50"
				index.textArea.t3.text = "Speed: 0.5"
				index.textArea.t4.text = "Gold reward: 7"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 0%"
				index.textArea.t7.text = "Magic resistance: 0%"
			} else if (object == "m3") {
				index.textArea.t1.text = "Coated rover"
				index.textArea.t2.text = "Health: 100"
				index.textArea.t3.text = "Speed: 0.4"
				index.textArea.t4.text = "Gold reward: 10"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 20%"
				index.textArea.t7.text = "Magic resistance: 10%"
			} else if (object == "m4") {
				index.textArea.t1.text = "Energy rover"
				index.textArea.t2.text = "Health: 100"
				index.textArea.t3.text = "Speed: 0.4"
				index.textArea.t4.text = "Gold reward: 10"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 20%"
				index.textArea.t7.text = "Magic resistance: 10%"
			} else if (object == "m5") {
				index.textArea.t1.text = "Hydro rover"
				index.textArea.t2.text = "Health: 40"
				index.textArea.t3.text = "Speed: 0.5"
				index.textArea.t4.text = "Gold reward: 6"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 0%"
				index.textArea.t7.text = "Magic resistance: 0%"
				index.textArea.t8.text = "This rover will hide when in water. It will be undetectable by all buildings except the"
				index.textArea.t9.text = "hydrojetters. They can still be blown up by stray bombs though."
			} else if (object == "m6") {
				index.textArea.t1.text = "Steel rover"
				index.textArea.t2.text = "Health: 600"
				index.textArea.t3.text = "Speed: 0.2"
				index.textArea.t4.text = "Gold reward: 150"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 50%"
				index.textArea.t7.text = "Magic resistance: 50%"
			} else if (object == "m7") {
				index.textArea.t1.text = "Armored hydro rover"
				index.textArea.t2.text = "Health: 70"
				index.textArea.t3.text = "Speed: 0.6"
				index.textArea.t4.text = "Gold reward: 10"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 30%"
				index.textArea.t7.text = "Magic resistance: 20%"
				index.textArea.t8.text = "This rover will hide when in water. It will be undetectable by all buildings except the"
				index.textArea.t9.text = "hydrojetters. They can still be blown up by stray bombs though."
			} else if (object == "m8") {
				index.textArea.t1.text = "Hardened rover"
				index.textArea.t2.text = "Health: 150"
				index.textArea.t3.text = "Speed: 0.6"
				index.textArea.t4.text = "Gold reward: 13"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 40%"
				index.textArea.t7.text = "Magic resistance: 30%"
			} else if (object == "m9") {
				index.textArea.t1.text = "Basic drone"
				index.textArea.t2.text = "Health: 180"
				index.textArea.t3.text = "Speed: 0.4"
				index.textArea.t4.text = "Gold reward: 7"
				index.textArea.t5.text = "Type: Drone"
				index.textArea.t6.text = "Armor resistance: 0%"
				index.textArea.t7.text = "Magic resistance: 0%"
			} else if (object == "m10") {
				index.textArea.t1.text = "Tunneling rover"
				index.textArea.t2.text = "Health: 65"
				index.textArea.t3.text = "Speed: 0.4"
				index.textArea.t4.text = "Gold reward: 7"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 0%"
				index.textArea.t7.text = "Magic resistance: 0%"
				index.textArea.t8.text = "This rover will hide when on pathways. It will be undetectable by all buildings unless it"
				index.textArea.t9.text = "passes through a mud tile from a mud dispenser or when it is not near a pathway. They can"
				index.textArea.t10.text = "still be blown up by stray bombs though."
			} else if (object == "m11") {
				index.textArea.t1.text = "Titanium-plated energy orb"
				index.textArea.t2.text = "Health: 65"
				index.textArea.t3.text = "Speed: 0.4"
				index.textArea.t4.text = "Gold reward: 9"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 90%"
				index.textArea.t7.text = "Magic vulnerability: 5x"
				index.textArea.t8.text = "This rover has heavy resistance against towers. However, if they are hovering over a magic"
				index.textArea.t9.text = "tile from a gold harvester or another magic building, they will take 5 times the damage."
			} else if (object == "m12") {
				index.textArea.t1.text = "Airship"
				index.textArea.t2.text = "Health: 1000"
				index.textArea.t3.text = "Speed: 0.25"
				index.textArea.t4.text = "Gold reward: 350"
				index.textArea.t5.text = "Type: Rover"
				index.textArea.t6.text = "Armor resistance: 10%"
				index.textArea.t7.text = "Magic resistance: 30%"
				index.textArea.t8.text = "Every 5 seconds, this robot will spawn an energy rover, which will follow the same path"
				index.textArea.t9.text = "as the airship."
			}
			/*
		1  - Basic rover
		2  - Guard rover
		3  - Coated rover
		4  - Energy rover
		5  - Hydro rover
		6  - Steel rover
		7  - Armored hydro rover
		8  - Hardened rover
		9  - Basic drone
		10 - Tunneling rover
		11 - Titanium-plated energy orb
		12 - Airship
		*/
			index.textArea.t1.setTextFormat(underline);
		}

		// TOWER BUTTONS PRESS


		private function towerPress1(e: MouseEvent) {
			pressBtn("tower1")
		}
		private function towerPress2(e: MouseEvent) {
			pressBtn("tower2")
		}
		private function towerPress3(e: MouseEvent) {
			pressBtn("tower3")
		}
		private function towerPressMachineGun(e: MouseEvent) {
			pressBtn("towerMachineGun")
		}

		// MUD DISPENSER BUTTONS PRESS
		private function mudDispenserPress1(e: MouseEvent) {
			pressBtn("mudDispenser1")
		}
		private function mudDispenserPress2(e: MouseEvent) {
			pressBtn("mudDispenser2")
		}
		private function mudDispenserPress3(e: MouseEvent) {
			pressBtn("mudDispenser3")
		}

		// BOMB LOBBERS BUTTONS PRESS
		private function lobberPress1(e: MouseEvent) {
			pressBtn("lobber1")
		}
		private function lobberPress2(e: MouseEvent) {
			pressBtn("lobber2")
		}
		private function lobberPress3(e: MouseEvent) {
			pressBtn("lobber3")
		}

		// GOLD HARVESTERS BUTTONS PRESS
		private function goldHarvesterPress1(e: MouseEvent) {
			pressBtn("goldHarvester1")
		}
		private function goldHarvesterPress2(e: MouseEvent) {
			pressBtn("goldHarvester2")
		}
		private function goldHarvesterPress3(e: MouseEvent) {
			pressBtn("goldHarvester3")
		}

		// GOLD HARVESTERS BUTTONS PRESS
		private function hydrojetterPress1(e: MouseEvent) {
			pressBtn("hydrojetter1")
		}
		private function hydrojetterPress2(e: MouseEvent) {
			pressBtn("hydrojetter2")
		}
		private function hydrojetterPress3(e: MouseEvent) {
			pressBtn("hydrojetter3")
		}

		// MINES/PLATES BUTTONS PRESS
		private function mineExplosivePress(e: MouseEvent) {
			pressBtn("mineExplosive")
		}
		private function mineRevealPress(e: MouseEvent) {
			pressBtn("mineReveal")
		}
		private function mineTeleportPress(e: MouseEvent) {
			pressBtn("mineTeleport")
		}





		private function go_index_monsters(e: MouseEvent) { // WHEN MONSTER BUTTON IS PRESSED
			screen = "index_monsters"
			side = "monsters"
			index.gotoAndStop("index_monsters")
			index.m1.addEventListener(MouseEvent.MOUSE_UP, m1Press)
			index.m2.addEventListener(MouseEvent.MOUSE_UP, m2Press)
			index.m3.addEventListener(MouseEvent.MOUSE_UP, m3Press)
			index.m4.addEventListener(MouseEvent.MOUSE_UP, m4Press)
			index.m5.addEventListener(MouseEvent.MOUSE_UP, m5Press)
			index.m6.addEventListener(MouseEvent.MOUSE_UP, m6Press)
			index.m7.addEventListener(MouseEvent.MOUSE_UP, m7Press)
			index.m8.addEventListener(MouseEvent.MOUSE_UP, m8Press)
			index.m9.addEventListener(MouseEvent.MOUSE_UP, m9Press)
			index.m10.addEventListener(MouseEvent.MOUSE_UP, m10Press)
			index.m11.addEventListener(MouseEvent.MOUSE_UP, m11Press)
			index.m12.addEventListener(MouseEvent.MOUSE_UP, m12Press)
		}
		private function m1Press(e: MouseEvent) {
			pressBtn("m1")
		}
		private function m2Press(e: MouseEvent) {
			pressBtn("m2")
		}
		private function m3Press(e: MouseEvent) {
			pressBtn("m3")
		}
		private function m4Press(e: MouseEvent) {
			pressBtn("m4")
		}
		private function m5Press(e: MouseEvent) {
			pressBtn("m5")
		}
		private function m6Press(e: MouseEvent) {
			pressBtn("m6")
		}
		private function m7Press(e: MouseEvent) {
			pressBtn("m7")
		}
		private function m8Press(e: MouseEvent) {
			pressBtn("m8")
		}
		private function m9Press(e: MouseEvent) {
			pressBtn("m9")
		}
		private function m10Press(e: MouseEvent) {
			pressBtn("m10")
		}
		private function m11Press(e: MouseEvent) {
			pressBtn("m11")
		}
		private function m12Press(e: MouseEvent) {
			pressBtn("m12")
		}
	}

}