package {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;

	public class GameMenuHandler {
		private var main
		public function GameMenuHandler(m) {
			main = m
		}

		public function update(t) {
			if (main.currLevel == 1 - 1) {
				main.BtnTower2.x = 10000
				main.BtnTower3.x = 10000
				main.BtnSlopDispenser2.x = 10000
				main.BtnSlopDispenser3.x = 10000
				main.BtnLobber.x = 10000
				main.BtnLobber2.x = 10000
				main.BtnLobber3.x = 10000
				main.BtnGoldHarvester.x = 10000
				main.BtnGoldHarvester2.x = 10000
				main.BtnGoldHarvester3.x = 10000
				main.BtnHydrojetter.x = 10000
				main.BtnHydrojetter2.x = 10000
				main.BtnHydrojetter3.x = 10000
				main.BtnExplosiveMine.x = 10000
				main.BtnRevealMine.x = 10000
				main.BtnTeleporterMine.x = 10000
				main.BtnRepairBot.x = 10000
				main.BtnBarricade.x = 10000
				main.BtnManualExplosive.x = 10000
				main.MenuText.lobberTxt.x = 10000
				main.MenuText.harvesterTxt.x = 10000
				main.MenuText.hydrojetterTxt.x = 10000
				main.MenuText.mineTxt.x = 10000
			} else if (main.currLevel == 2 - 1) {
				main.BtnTower2.x = 10000
				main.BtnTower3.x = 10000
				main.BtnSlopDispenser2.x = 10000
				main.BtnSlopDispenser3.x = 10000
				main.BtnLobber2.x = 10000
				main.BtnLobber3.x = 10000
				main.BtnGoldHarvester2.x = 10000
				main.BtnGoldHarvester3.x = 10000
				main.BtnHydrojetter.x = 10000
				main.BtnHydrojetter2.x = 10000
				main.BtnHydrojetter3.x = 10000
				main.BtnExplosiveMine.x = 10000
				main.BtnRevealMine.x = 10000
				main.BtnTeleporterMine.x = 10000
				main.BtnRepairBot.x = 10000
				main.BtnBarricade.x = 10000
				main.BtnManualExplosive.x = 10000
				main.MenuText.hydrojetterTxt.x = 10000
				main.MenuText.mineTxt.x = 10000
			} else if (main.currLevel == 3 - 1) {
				main.BtnTower3.x = 10000
				main.BtnSlopDispenser3.x = 10000
				main.BtnLobber3.x = 10000
				main.BtnGoldHarvester3.x = 10000
				main.BtnHydrojetter.x = 10000
				main.BtnHydrojetter2.x = 10000
				main.BtnHydrojetter3.x = 10000
				main.BtnExplosiveMine.x = 10000
				main.BtnRevealMine.x = 10000
				main.BtnTeleporterMine.x = 10000
				main.BtnRepairBot.x = 10000
				main.BtnBarricade.x = 10000
				main.BtnManualExplosive.x = 10000
				main.MenuText.hydrojetterTxt.x = 10000
				main.MenuText.mineTxt.x = 10000
			} else if (main.currLevel == 4 - 1) {
				main.BtnTower3.x = 10000
				main.BtnSlopDispenser3.x = 10000
				main.BtnLobber3.x = 10000
				main.BtnGoldHarvester3.x = 10000
				main.BtnHydrojetter.x = 10000
				main.BtnHydrojetter2.x = 10000
				main.BtnHydrojetter3.x = 10000
				main.BtnExplosiveMine.x = 10000
				main.BtnRevealMine.x = 10000
				main.BtnTeleporterMine.x = 10000
				main.BtnRepairBot.x = 10000
				main.BtnBarricade.x = 10000
				main.BtnManualExplosive.x = 10000
				main.MenuText.hydrojetterTxt.x = 10000
				main.MenuText.mineTxt.x = 10000
			} else if (main.currLevel == 5 - 1) {
				main.BtnTower3.x = 10000
				main.BtnSlopDispenser3.x = 10000
				main.BtnLobber3.x = 10000
				main.BtnGoldHarvester3.x = 10000
				main.BtnHydrojetter2.x = 10000
				main.BtnHydrojetter3.x = 10000
				main.BtnExplosiveMine.x = 10000
				main.BtnRevealMine.x = 10000
				main.BtnTeleporterMine.x = 10000
				main.BtnRepairBot.x = 10000
				main.BtnBarricade.x = 10000
				main.BtnManualExplosive.x = 10000
				main.MenuText.mineTxt.x = 10000
			} else if (main.currLevel == 6 - 1) {
				main.BtnTower3.x = 10000
				main.BtnSlopDispenser3.x = 10000
				main.BtnLobber3.x = 10000
				main.BtnGoldHarvester3.x = 10000
				main.BtnHydrojetter3.x = 10000
				main.BtnRepairBot.x = 10000
				main.BtnBarricade.x = 10000
				main.BtnManualExplosive.x = 10000
				main.MenuText.mineTxt.x = 10000
				main.BtnExplosiveMine.x = 10000
				main.BtnRevealMine.x = 10000
				main.BtnTeleporterMine.x = 10000
			} else if (main.currLevel == 7 - 1) {
				main.BtnExplosiveMine.x = 10000
				main.BtnRevealMine.x = 10000
				main.BtnTeleporterMine.x = 10000
				main.BtnRepairBot.x = 10000
				main.BtnBarricade.x = 10000
				main.BtnManualExplosive.x = 10000
				main.MenuText.mineTxt.x = 10000
			} else if (main.currLevel >= 8 - 1 && main.currLevel <= 10 - 1){
				main.BtnRepairBot.x = 10000
				main.BtnBarricade.x = 10000
				main.BtnManualExplosive.x = 10000
			} else if (main.currLevel >= 11 - 1 && main.currLevel <= 13 - 1){
				main.BtnHydrojetter.x = 10000
				main.BtnHydrojetter2.x = 10000
				main.BtnHydrojetter3.x = 10000
				main.BtnRepairBot.x = 10000
				main.BtnBarricade.x = 10000
				main.BtnManualExplosive.x = 10000
				main.MenuText.hydrojetterTxt.x = 10000
			} else if (main.currLevel >= 14 - 1){
				main.BtnHydrojetter.x = 10000
				main.BtnHydrojetter2.x = 10000
				main.BtnHydrojetter3.x = 10000
				main.MenuText.hydrojetterTxt.x = 10000
			}

			//trace(mudTileList.length)
			for (var i = 0; i < main.mudTileList.length; i++) {
				var tile = main.mudTileList[i]
				var xpos = tile.x
				var ypos = tile.y

				main.mudTiles[i]--

				if (tile.x <= 9000) {
					if (main.mudTileBefore[i] == 2) {
						main.level[Math.round(xpos / 30)][Math.round(ypos / 30)] = 3
						main.stageObjects[Math.round((tile.y - 15) / 30)][Math.round((tile.x - 15) / 30)].gotoAndStop(4)
					} else if (main.mudTileBefore[i] == 96) {
						main.level[Math.round(xpos / 30)][Math.round(ypos / 30)] = 152
						main.stageObjects[Math.round((tile.y - 15) / 30)][Math.round((tile.x - 15) / 30)].gotoAndStop(151)
					}
				}
				if (main.mudTiles[i] == 0) {
					main.level[Math.round(xpos / 30)][Math.round(ypos / 30)] = main.mudTileBefore[i] - 1
					if (main.stageObjects[Math.round(ypos / 30)][Math.round(xpos / 30)].tile != null) {
						var frame = main.stageObjects[Math.round(ypos / 30)][Math.round(xpos / 30)].tile.currentFrame
						main.stageObjects[Math.round(ypos / 30)][Math.round(xpos / 30)].gotoAndStop(main.mudTileBefore[i])
						main.stageObjects[Math.round(ypos / 30)][Math.round(xpos / 30)].tile.gotoAndStop(frame)
					} else {
						main.stageObjects[Math.round(ypos / 30)][Math.round(xpos / 30)].gotoAndStop(main.mudTileBefore[i])
					}
					main.mudTileList.splice(i, 1)
					main.mudTiles.splice(i, 1)
					main.mudTileBefore.splice(i, 1)
					main.removeChild(tile)
				}

			}

			for (var i2 = 0; i2 < main.goldTiles.length; i2++) {
				main.goldTiles[i2]--
				if (main.goldTiles[i2] == 0) {
					var tile2 = main.goldTileList[i2]
					var xpos2 = tile2.x
					var ypos2 = tile2.y
					//trace(Math.round(xpos / 30) + ", " + Math.round(ypos / 30) + ", (" + xpos + "," + ypos + ")")
					if (main.goldTileBefore[i2] == 2) {
						main.level[Math.round(xpos2 / 30)][Math.round(ypos2 / 30)] = 1
						main.stageObjects[Math.round(ypos2 / 30)][Math.round(xpos2 / 30)].gotoAndStop(2)
					} else if (main.goldTileBefore[i2] == 96) {
						main.level[Math.round(xpos2 / 30)][Math.round(ypos2 / 30)] = 95
						var frame1 = main.stageObjects[Math.round(ypos2 / 30)][Math.round(xpos2 / 30)].tile.currentFrame;
						main.stageObjects[Math.round(ypos2 / 30)][Math.round(xpos2 / 30)].gotoAndStop(96)
						main.stageObjects[Math.round(ypos2 / 30)][Math.round(xpos2 / 30)].tile.gotoAndStop(frame1)
					}

					main.goldTileList.splice(i2, 1)
					main.goldTiles.splice(i2, 1)
					main.goldTileBonus.splice(i2, 1)
					main.goldTileDamage.splice(i2, 1)
					main.removeChild(tile2)
				}
			}
			main.MenuText.txtWave.text = "Wave " + main.wave;
			//Detect if the next wave starts
			var count = 0;
			for (var i3 = 0; i3 < main.monsters.length; i3++) {
				if (main.monsters[i3] != "[object MonsterMagmaTower]") {
					count++;
				}
			}
			if (count <= 0 && main.levelWave[main.pinpoint][1] == -1) {
				main.countdown -= t * main.getFrameRate()
				main.MenuText.statusTxt.text = "NEXT WAVE: " + String(Math.ceil(main.countdown / main.getFrameRate()))
				if (main.countdown <= 0) {
					main.pinpoint++
					main.wave++
					main.tick = 0
					main.countdown = 5 * main.getFrameRate();
					main.MenuText.statusTxt.text = ""
				}
				for (var j = 0; j < main.monsters.length; j++) {
					if (main.monsters[j] == "[object MonsterMagmaTower]") {
						main.monsters[j].removeMonster(main.monsters[j], j, j, false);
					}
				}

			} else if (count <= 0 && main.levelWave[main.pinpoint][1] == -2) {
				main.countdown2 -= t * main.getFrameRate()
				main.MenuText.statusTxt.text = "STARTING: " + String(Math.ceil(main.countdown2 / main.getFrameRate()))
				if (main.countdown2 <= 0) {
					main.pinpoint++
					main.wave++
					main.tick = 0
					main.countdown2 = 10 * main.getFrameRate();
					main.MenuText.statusTxt.text = ""
				}
				for (var k = 0; k < main.monsters.length; k++) {
					if (main.monsters[k] == "[object MonsterMagmaTower]") {
						main.monsters[k].removeMonster(main.monsters[k], k, k, false);
					}
				}
			} else if (count <= 0 && main.levelWave[main.pinpoint][1] == -3) {
				main.countdown -= t * main.getFrameRate()
				if (main.countdown <= 0) {
					main.isEnd = true;
					main.endScreen.x = 120
					main.endScreen.y = 120
					main.addChild(main.endScreen)
					main.endScreen.statusText.text = "VICTORY!"
					main.endScreen.gemsText.text = "Gems earned: " + ((main.currLevel + 1) * main.lives)
					main.gems.data.amount += ((main.currLevel + 1) * main.lives)
					if (main.highestLevel.data.number == main.currLevel) {
						main.highestLevel.data.number = main.currLevel + 1;
					}

					main.endScreen.backBtn.addEventListener(MouseEvent.MOUSE_UP, main.endGame)
					main.stage.removeEventListener(Event.ENTER_FRAME, main.onEnterFrameHandler);

				}

				for (var l = 0; l < main.monsters.length; l++) {
					if (main.monsters[l] == "[object MonsterMagmaTower]") {
						main.monsters[l].removeMonster(main.monsters[l], l, l, false);
					}
				}
			}

		}
	}



}