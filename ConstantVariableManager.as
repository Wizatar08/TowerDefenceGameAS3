package {
	import flash.display.MovieClip;

	public class ConstantVariableManager {
		private var main: Main
		public function ConstantVariableManager(m){
			main = m
		}
		
		public function update(t){
			for(var i = 0; i < main.stageObjects.length; i++){
				for(var j = 0; j < main.stageObjects[i].length; j++){
					main.stageObjects[i][j].update(t);
				}
			}
			
			for (var j1 = 0; j1 < main.bm.explosions.length; j1++) {
				main.bm.explosions[j1].update()
				if (main.bm.explosions[j1].currentFrame == main.bm.explosions[j1].totalFrames) {
					main.projLayer.removeChild(main.bm.explosions[j1])
					main.bm.explosions.splice(j1, 1)
				}
			}


			for (var l: int = 0; l < main.bombs.length; l++) {
				for (var l1: int = 0; l1 < main.monsters.length; l1++) {
					if (main.bombs[l].hitBox != null) {
						if (main.bombs[l].hitBox.hitTestObject(main.monsters[l1]) && main.monsters[l1].robotType != "drone") {
							main.monsters[l1].hp -= main.bombs[l].damageSpread * (1 - main.monsters[l1].resistance)
							main.monsters[l1].hit(main.monsters[l1]);
						}
					}
				}
				if (!main.bombs[l].remove) {
					main.bombs[l].update(t)
				} else {
					main.projLayer.removeChild(main.bombs[l])
					main.bombs.splice(l, 1)
				}

			}
			
			for(var m = 0; m < main.scorchedTilesTime.length; m++){
				main.scorchedTilesTime[m] -= t * main.getFrameRate()
				if(main.scorchedTilesTime[m] < 0){
					if(main.stageObjects[main.scorchedTilesPos[m][1] / 30][main.scorchedTilesPos[m][0] / 30].currentFrame == 234){
						var frame = main.stageObjects[main.scorchedTilesPos[m][1] / 30][main.scorchedTilesPos[m][0] / 30].tile.currentFrame;
						main.stageObjects[main.scorchedTilesPos[m][1] / 30][main.scorchedTilesPos[m][0] / 30].gotoAndStop(96);
						main.stageObjects[main.scorchedTilesPos[m][1] / 30][main.scorchedTilesPos[m][0] / 30].tile.gotoAndStop(frame)
						main.stageObjects[main.scorchedTilesPos[m][1] / 30][main.scorchedTilesPos[m][0] / 30].damage = 0;
						main.scorchedTilesPos.splice(m,1)
						main.scorchedTilesTime.splice(m,1)
					}
				}
			}
			
			for(var n = 0; n < main.robotProjectiles.length; n++){
				main.robotProjectiles[n].update(t, n);
			}
			
			
			
			if (main.currTower != null) { // set position of the tower to that of mouse
				main.currTower.x = main.mouseX + 1 + main.currTower.width / 2;
				main.currTower.y = main.mouseY + 1 + main.currTower.height / 2;
				if (main.currTower == "[object Tower]") {
					main.MenuText.info1.text = "Cost: 60"
					main.MenuText.info2.text = "Damage: 10"
					main.MenuText.info3.text = "Range: 80"
					main.MenuText.info4.text = "Speed: 1.5 seconds"
				} else if (main.currTower == "[object Tower2]") {
					main.MenuText.info1.text = "Cost: 150"
					main.MenuText.info2.text = "Damage: 15"
					main.MenuText.info3.text = "Range: 100"
					main.MenuText.info4.text = "Speed: 1 second"
				} else if (main.currTower == "[object Tower3]") {
					main.MenuText.info1.text = "Cost: 375"
					main.MenuText.info2.text = "Damage: 20"
					main.MenuText.info3.text = "Range: 125"
					main.MenuText.info4.text = "Speed: 0.5 seconds"
				} else if (main.currTower == "[object SlopDispenser]") {
					main.MenuText.info1.text = "Cost: 40"
					main.MenuText.info2.text = "Range: 1 tile"
					main.MenuText.info3.text = "Recharge: 8 seconds"
					main.MenuText.info4.text = "Rate: 3.5 seconds"
				} else if (main.currTower == "[object SlopDispenser2]") {
					main.MenuText.info1.text = "Cost: 300"
					main.MenuText.info2.text = "Range: 1 tile"
					main.MenuText.info3.text = "Recharge: 5.5 seconds"
					main.MenuText.info4.text = "Rate: 5 seconds"
				} else if (main.currTower == "[object SlopDispenser3]") {
					main.MenuText.info1.text = "Cost: 550"
					main.MenuText.info2.text = "Range: 1 tile"
					main.MenuText.info3.text = "Recharge: 3 seconds"
					main.MenuText.info4.text = "Rate: 6 seconds"
				} else if (main.currTower == "[object Lobber]") {
					main.MenuText.info1.text = "Cost: 50"
					main.MenuText.info2.text = "Range: 80"
					main.MenuText.info3.text = "Recharge: 4 seconds"
					main.MenuText.info4.text = "Damage: 3-15"
				} else if (main.currTower == "[object Lobber2]") {
					main.MenuText.info1.text = "Cost: 470"
					main.MenuText.info2.text = "Range: 90"
					main.MenuText.info3.text = "Recharge: 3.5 seconds"
					main.MenuText.info4.text = "Damage: 5-25"
				} else if (main.currTower == "[object Lobber3]") {
					main.MenuText.info1.text = "Cost: 855"
					main.MenuText.info2.text = "Range: 110"
					main.MenuText.info3.text = "Recharge: 3 seconds"
					main.MenuText.info4.text = "Damage: 8-40"
				} else if (main.currTower == "[object GoldHarvester]") {
					main.MenuText.info1.text = "Cost: 50"
					main.MenuText.info2.text = "Recharge: 4 seconds"
					main.MenuText.info3.text = "Tile Rate: 2 seconds"
					main.MenuText.info4.text = "Gold Multiplier: 1.5x"
				} else if (main.currTower == "[object GoldHarvester2]") {
					main.MenuText.info1.text = "Cost: 495"
					main.MenuText.info2.text = "Recharge: 2.5 seconds"
					main.MenuText.info3.text = "Tile Rate: 2.5 seconds"
					main.MenuText.info4.text = "Gold Multiplier: 2x"
				} else if (main.currTower == "[object GoldHarvester3]") {
					main.MenuText.info1.text = "Cost: 1025"
					main.MenuText.info2.text = "Recharge: 1 second"
					main.MenuText.info3.text = "Tile Rate: 3 seconds"
					main.MenuText.info4.text = "Gold Multiplier: 1.5"
				} else if (main.currTower == "[object Hydrojetter]") {
					main.MenuText.info1.text = "Cost: 160"
					main.MenuText.info2.text = "Damage: 30"
					main.MenuText.info3.text = "Range: 150"
					main.MenuText.info4.text = "Speed: 4 seconds"
				} else if (main.currTower == "[object Hydrojetter2]") {
					main.MenuText.info1.text = "Cost: 420"
					main.MenuText.info2.text = "Damage: 45"
					main.MenuText.info3.text = "Range: 175"
					main.MenuText.info4.text = "Speed: 3 seconds"
				} else if (main.currTower == "[object Hydrojetter3]") {
					main.MenuText.info1.text = "Cost: 930"
					main.MenuText.info2.text = "Damage: 65"
					main.MenuText.info3.text = "Range: 200"
					main.MenuText.info4.text = "Speed: 2 seconds"
				} else if (main.currTower == "[object Mine_explosive]") {
					main.MenuText.info1.text = "Cost: 120"
					main.MenuText.info2.text = "Type: Explosive"
					main.MenuText.info3.text = ""
					main.MenuText.info4.text = ""
					for(var o = 0; o < main.towers.length; o++){
						if(main.currTower.hitTestObject(main.towers[o]) && main.towers[o] == String("[object GoldHarvester3]")){
							main.MenuText.info1.text = "Mine Factory"
							main.MenuText.info2.text = "Cost: 1100"
						}
					}
				} else if (main.currTower == "[object Mine_reveal]") {
					main.MenuText.info1.text = "Cost: 150"
					main.MenuText.info2.text = "Type: Reveal"
					main.MenuText.info3.text = ""
					main.MenuText.info4.text = ""
					for(var p = 0; p < main.towers.length; p++){
						if(main.currTower.hitTestObject(main.towers[p]) && main.towers[p] == String("[object GoldHarvester3]")){
							main.MenuText.info1.text = "Mine Factory"
							main.MenuText.info2.text = "Cost: 900"
						}
					}
				} else if (main.currTower == "[object Mine_teleporter]") {
					main.MenuText.info1.text = ""
					main.MenuText.info2.text = "Type: Teleporter"
					main.MenuText.info3.text = ""
					main.MenuText.info4.text = ""
					for(var k = 0; k < main.towers.length; k++){
						if(main.currTower.hitTestObject(main.towers[k]) && main.towers[k] == String("[object GoldHarvester3]")){
							main.MenuText.info1.text = "Mine Factory"
							main.MenuText.info2.text = "Cost: 2500"
						}
					}
				} else if (main.currTower == "[object RepairBot]") {
					main.MenuText.info1.text = "Repair Bot"
					main.MenuText.info2.text = "Cost: 120"
					main.MenuText.info3.text = "Time: 15 seconds"
					main.MenuText.info4.text = ""
				} else if (main.currTower == "[object Barricade]") {
					main.MenuText.info1.text = "Barricade"
					main.MenuText.info2.text = "Cost: 100"
					main.MenuText.info3.text = ""
					main.MenuText.info4.text = ""
				} else if (main.currTower == "[object ManualExplosive]") {
					main.MenuText.info1.text = "Manual Explosive"
					main.MenuText.info2.text = "Cost: 150"
					main.MenuText.info3.text = ""
					main.MenuText.info4.text = ""
				}
				main.statusTextDelay = 120
			} else if (main.haveInfo == false) {
				main.MenuText.info1.text = ""
				main.MenuText.info2.text = ""
				main.MenuText.info3.text = ""
				main.MenuText.info4.text = ""
			}
			main.MenuText.txtGold.text = String(main.currGold);

			main.MenuText.txtLives.text = String(main.lives);
		}
			
	}
	
	
	
}