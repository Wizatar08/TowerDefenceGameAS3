package {
	import flash.errors.IllegalOperationError;
	import flash.errors.EOFError;

	public class BuildingManager {
		var main: Main
		var isEnd
		var level
		var stageObjects
		var goldTiles
		var goldTileList
		var goldTileBonus
		var goldTileDamage
		var monsters
		var bombs
		var mudTiles
		var mudTileList
		var bullets
		var undetectableTiles
		var selectedTower
		var currLevel
		var MenuText
		var towers
		var currGold
		var explosions: Array
		private var selTowerChange;

		public function BuildingManager(m) {
			main = m
			selTowerChange = 0;
			explosions = new Array()
		}

		function updateTowers(tmpTower, index, t): void {
			isEnd = main.getIsEnd()
			level = main.getLevelArray()
			stageObjects = main.getStageObjects()
			goldTiles = main.getGoldTiles()
			goldTileList = main.getGoldTileList()
			goldTileBonus = main.getGoldTileBonus()
			monsters = main.getMonsters()
			bombs = main.getBombs()
			mudTiles = main.getMudTiles()
			mudTileList = main.getMudTileList()
			bullets = main.getBullets()
			undetectableTiles = main.getUndetectableTiles()
			currLevel = main.getCurrLevel()
			MenuText = main.getMenuText()
			towers = main.getTowers()
			currGold = main.getCurrGold()
			goldTileDamage = main.getGoldTileDamage()
			if (isEnd == false) {
				var ranx
				var rany
				var ran: int = Math.round(Math.random() * 4)
				if (tmpTower.reloadTime <= 0 && (tmpTower == "[object GoldHarvester]" || tmpTower == "[object GoldHarvester2]" || tmpTower == "[object GoldHarvester3]")) {
					var goldTile = new Tile1(main);
					goldTile.gotoAndStop(12)
					try {
						if (ran == 0) {
							if (level[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)] == 1 && stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 2) {
								stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].gotoAndStop(11)
								goldTile.x = tmpTower.x - 15
								goldTile.y = tmpTower.y - 15 - 30
								goldTiles.push(tmpTower.tileRate)
								goldTileList.push(goldTile)
								goldTileBonus.push(tmpTower.goldBonus)
								goldTileDamage.push(tmpTower.goldDamage)
								main.goldTileBefore.push(2)
								main.addGoldTile(goldTile)
							}
						} else if (ran == 1) {
							if (level[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)] == 1 && stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 2) {
								stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].gotoAndStop(11)
								goldTile.x = tmpTower.x - 15
								goldTile.y = tmpTower.y - 15 + 30
								goldTiles.push(tmpTower.tileRate)
								goldTileList.push(goldTile)
								goldTileBonus.push(tmpTower.goldBonus)
								goldTileDamage.push(tmpTower.goldDamage)
								main.goldTileBefore.push(2)
								main.addGoldTile(goldTile)
							}
						} else if (ran == 2) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1] == 1 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].currentFrame == 2) {
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].gotoAndStop(11)
								goldTile.x = tmpTower.x - 15 - 30
								goldTile.y = tmpTower.y - 15
								goldTiles.push(tmpTower.tileRate)
								goldTileBonus.push(tmpTower.goldBonus)
								goldTileList.push(goldTile)
								goldTileDamage.push(tmpTower.goldDamage)
								main.goldTileBefore.push(2)
								main.addGoldTile(goldTile)
							}
						} else if (ran == 3) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1] == 1 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].currentFrame == 2) {
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].gotoAndStop(11)
								goldTile.x = tmpTower.x - 15 + 30
								goldTile.y = tmpTower.y - 15
								goldTiles.push(tmpTower.tileRate)
								goldTileList.push(goldTile)
								goldTileBonus.push(tmpTower.goldBonus)
								goldTileDamage.push(tmpTower.goldDamage)
								main.goldTileBefore.push(2)
								main.addGoldTile(goldTile)
							}
						}
						goldTile.gotoAndStop(154)
						if (ran == 0) {
							if (level[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 96) {
								var frame = stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].tile.currentFrame
								stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].gotoAndStop(153)
								stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].tile.gotoAndStop(frame)
								goldTile.x = tmpTower.x - 15
								goldTile.y = tmpTower.y - 15 - 30
								goldTiles.push(tmpTower.tileRate)
								goldTileList.push(goldTile)
								goldTileBonus.push(tmpTower.goldBonus)
								goldTileDamage.push(tmpTower.goldDamage)
								main.goldTileBefore.push(96)
								main.addGoldTile(goldTile)
							}
						} else if (ran == 1) {
							if (level[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 96) {
								var frame1 = stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].tile.currentFrame;
								stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].gotoAndStop(153)
								stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].tile.gotoAndStop(frame1)
								goldTile.x = tmpTower.x - 15
								goldTile.y = tmpTower.y - 15 + 30
								goldTiles.push(tmpTower.tileRate)
								goldTileList.push(goldTile)
								goldTileBonus.push(tmpTower.goldBonus)
								goldTileDamage.push(tmpTower.goldDamage)
								main.goldTileBefore.push(96)
								main.addGoldTile(goldTile)
							}
						} else if (ran == 2) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].currentFrame == 96) {
								var frame2 = stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].tile.currentFrame()
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].gotoAndStop(153)
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].tile.gotoAndStop(frame2)
								goldTile.x = tmpTower.x - 15 - 30
								goldTile.y = tmpTower.y - 15
								goldTiles.push(tmpTower.tileRate)
								goldTileBonus.push(tmpTower.goldBonus)
								goldTileList.push(goldTile)
								goldTileDamage.push(tmpTower.goldDamage)
								main.goldTileBefore.push(96)
								main.addGoldTile(goldTile)
							}
						} else if (ran == 3) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].currentFrame == 96) {
								var frame3 = stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].tile.currentFrame;
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].gotoAndStop(153)
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].tile.gotoAndStop(frame3)
								goldTile.x = tmpTower.x - 15 + 30
								goldTile.y = tmpTower.y - 15
								goldTiles.push(tmpTower.tileRate)
								goldTileList.push(goldTile)
								goldTileBonus.push(tmpTower.goldBonus)
								goldTileDamage.push(tmpTower.goldDamage)
								main.goldTileBefore.push(96)
								main.addGoldTile(goldTile)
							}
						}
					} catch (er: Error) {}

					tmpTower.reloadTime = tmpTower.c_reloadTime
				} else if (tmpTower.reloadTime <= 0 && (tmpTower == "[object Lobber]" || tmpTower == "[object Lobber2]" || tmpTower == "[object Lobber3]")) {
					for (var i1: int = 0; i1 < monsters.length; ++i1) { //loop through all the monster
						if (main.getDistance(tmpTower, monsters[i1]) < tmpTower.range && monsters[i1].isDetectableNow == true && monsters[i1].robotType != "drone" && monsters[i1].reprogramMode <= 3) { //check if monster is in the range of the tower
							var angle: Number = Math.atan2(monsters[i1].y - tmpTower.y, monsters[i1].x - tmpTower.x); //compute angle of the bullet
							var tmpBomb: Bomb = new Bomb(main, angle, monsters[i1], (tmpTower.damage), (tmpTower.bombFuze)); // create a bullet
							tmpBomb.x = tmpTower.x;
							tmpBomb.y = tmpTower.y;
							main.projLayer.addChild(tmpBomb);
							tmpBomb.gotoAndStop(1)
							//stageObjects.push(tmpBullet);
							bombs.push(tmpBomb); //add tmpBullet to the list of bullets fired
							tmpTower.reloadTime = tmpTower.c_reloadTime;
							break;
						}
					}
				} else if (tmpTower.reloadTime <= 0 && (tmpTower == "[object SlopDispenser]" || tmpTower == "[object SlopDispenser2]" || tmpTower == "[object SlopDispenser3]")) {
					var mudTile = new Tile1(main);
					try {
						mudTile.gotoAndStop(5)
						if (ran == 0) {
							if (level[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)] == 1 && stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 2) {
								stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].gotoAndStop(4) // 4
								mudTile.x = tmpTower.x - 15
								mudTile.y = tmpTower.y - 15 - 30
								main.mudTiles.push(tmpTower.tileRate)
								main.mudTileList.push(mudTile)
								main.mudTileBefore.push(2)
								main.addMudTile(mudTile)
							}
						} else if (ran == 1) {
							if (level[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)] == 1 && stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 2) {
								stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].gotoAndStop(4)
								mudTile.x = tmpTower.x - 15
								mudTile.y = tmpTower.y - 15 + 30
								main.mudTiles.push(tmpTower.tileRate)
								main.mudTileList.push(mudTile)
								main.mudTileBefore.push(2)
								main.addMudTile(mudTile)
							}
						} else if (ran == 2) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1] == 1 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].currentFrame == 2) {
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].gotoAndStop(4)
								mudTile.x = tmpTower.x - 15 - 30
								mudTile.y = tmpTower.y - 15
								main.mudTiles.push(tmpTower.tileRate)
								main.mudTileList.push(mudTile)
								main.mudTileBefore.push(2)
								main.addMudTile(mudTile)
							}
						} else if (ran == 3) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1] == 1 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].currentFrame == 2) {
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].gotoAndStop(4)
								mudTile.x = tmpTower.x - 15 + 30
								mudTile.y = tmpTower.y - 15
								main.mudTiles.push(tmpTower.tileRate)
								main.mudTileList.push(mudTile)
								main.mudTileBefore.push(2)
								main.addMudTile(mudTile)
							}
						}
						mudTile.gotoAndStop(152)
						if (ran == 0) {
							if (level[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 96) {
								var sframe = stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].tile.currentFrame;
								stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].gotoAndStop(151) // 151
								stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].tile.gotoAndStop(sframe)
								mudTile.x = tmpTower.x - 15
								mudTile.y = tmpTower.y - 15 - 30
								main.mudTiles.push(tmpTower.tileRate)
								main.mudTileList.push(mudTile)
								main.mudTileBefore.push(96)
								main.addMudTile(mudTile)
							}
						} else if (ran == 1) {
							if (level[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 96) {
								var sframe1 = stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].tile.currentFrame;
								stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].gotoAndStop(151)
								stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].tile.gotoAndStop(sframe1)
								mudTile.x = tmpTower.x - 15
								mudTile.y = tmpTower.y - 15 + 30
								main.mudTiles.push(tmpTower.tileRate)
								main.mudTileList.push(mudTile)
								main.mudTileBefore.push(96)
								main.addMudTile(mudTile)
							}
						} else if (ran == 2) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].currentFrame == 96) {
								var sframe2 = stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].tile.currentFrame;
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].gotoAndStop(151)
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].tile.gotoAndStop(sframe2)
								mudTile.x = tmpTower.x - 15 - 30
								mudTile.y = tmpTower.y - 15
								main.mudTiles.push(tmpTower.tileRate)
								main.mudTileList.push(mudTile)
								main.mudTileBefore.push(96)
								main.addMudTile(mudTile)
							}
						} else if (ran == 3) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].currentFrame == 96) {
								var sframe3 = stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].tile.currentFrame;
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].gotoAndStop(151)
								stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].tile.gotoAndStop(sframe3)
								mudTile.x = tmpTower.x - 15 + 30
								mudTile.y = tmpTower.y - 15
								main.mudTiles.push(tmpTower.tileRate)
								main.mudTileList.push(mudTile)
								main.mudTileBefore.push(96)
								main.addMudTile(mudTile)
							}
						}

					} catch (er: Error) {}
					tmpTower.reloadTime = tmpTower.c_reloadTime

				} else if (tmpTower.reloadTime <= 0 &&
					(tmpTower == "[object Tower]" || tmpTower == "[object Tower2]" || tmpTower == "[object Tower3]" ||
						tmpTower == "[object TowerMachineGun]")) {
					for (var i2: int = 0; i2 < monsters.length; ++i2) { //loop through all the monster
						if (main.getDistance(tmpTower, monsters[i2]) < tmpTower.range && monsters[i2].isDetectableNow == true && monsters[i2].reprogramMode <= 3) { //check if monster is in the range of the tower
							var angle1: Number = Math.atan2(monsters[i2].y - tmpTower.y, monsters[i2].x - tmpTower.x); //compute angle of the bullet
							var tmpBullet: Bullet = new Bullet(main, angle1, monsters[i2], tmpTower.damage, tmpTower.bSpeed); // create a bullet
							tmpTower.gun.rotation = (angle1 / Math.PI * 180) + 90;
							tmpBullet.x = tmpTower.x;
							tmpBullet.y = tmpTower.y;
							main.projLayer.addChild(tmpBullet);
							//stageObjects.push(tmpBullet);
							bullets.push(tmpBullet); //add tmpBullet to the list of bullets fired
							tmpTower.reloadTime = tmpTower.c_reloadTime;
							try {
								if (tmpTower.rapidTier != null && tmpTower.rapidTier == 2) {
									tmpTower.reloadTime = 1 / 24 * main.getFrameRate()
								} else if (tmpTower.rapidTier != null && tmpTower.rapidTier == 1) {
									tmpTower.reloadTime = 2 / 24 * main.getFrameRate()
								}
							} catch (er: Error) {}

							break;
						}
					}
				} else if (tmpTower.reloadTime <= 0 && (tmpTower == "[object Hydrojetter]" || tmpTower == "[object Hydrojetter2]" || tmpTower == "[object Hydrojetter3]")) {
					var count = 0
					for (var i3: int = 0; i3 < monsters.length; ++i3) { //loop through all the monster
						for (var j2: int = 0; j2 < undetectableTiles.length; j2++) {
							var waterTile
							if (undetectableTiles[j2].currentFrame == 18) {
								waterTile = undetectableTiles[j2]
							}
							if (waterTile != null && main.getDistance(tmpTower, monsters[i3]) < tmpTower.range && monsters[i3].hitTestObject(waterTile) && monsters[i3].robotType != "drone" && monsters[i1].reprogramMode <= 3) { //check if monster is in the range of the tower
								if (count == 0) {
									var angle2: Number = Math.atan2(monsters[i3].y - tmpTower.y, monsters[i3].x - tmpTower.x); //compute angle of the bullet
									var tmpWater: MovingWater = new MovingWater(angle2, monsters[i3], tmpTower.damage, tmpTower); // create a bullet
									tmpTower.jet.rotation = (angle2 / Math.PI * 180) + 90;
									tmpWater.x = tmpTower.x;
									tmpWater.y = tmpTower.y;
									main.projLayer.addChild(tmpWater);
									//stageObjects.push(tmpBullet);
									bullets.push(tmpWater); //add tmpBullet to the list of bullets fired
									tmpTower.reloadTime = tmpTower.c_reloadTime;
								}
								count++
								break;
							}
						}

					}
				} else if (tmpTower.reloadTime <= 0 && tmpTower == "[object RepairBot]") {
					for (var i4 = 0; i4 < main.nonPlacableTiles.length; i4++) {
						if (tmpTower.center.hitTestObject(main.nonPlacableTiles[i4])) {
							main.nonPlacableTiles[i4] = null;

						}
					}
					for (var j = 0; j < main.upgradableTiles.length; j++) {
						if (tmpTower.center.hitTestObject(main.upgradableTiles[j])) {
							main.upgradableTiles[j] = null;
						}
					}
					for (var k = 0; k < main.stageObjects.length; k++) {
						for (var l = 0; l < main.stageObjects[k].length; l++) {
							if (tmpTower.center.hitTestObject(main.stageObjects[k][l])) {
								if (main.stageObjects[k][l].currentFrame == 285) {
									main.stageObjects[k][l].gotoAndStop(241);
								} else if (main.stageObjects[k][l].currentFrame == 243) {
									main.stageObjects[k][l].gotoAndStop(97);
									main.stageObjects[k][l].tile.gotoAndStop(main.stageObjects[k][l].subFrame)
								}
							}
						}

					}
					main.towerLayer.removeChild(tmpTower)
					main.towers.splice(index, 1);
				} else if (tmpTower == "[object Barricade]") {
					if (tmpTower.toughness < 0) {
						/*
						for (var i = 0; i < main.nonPlacableTiles.length; i++) {
							if (tmpTower.center.hitTestObject(main.nonPlacableTiles[i])) {
								main.nonPlacableTiles[i] = null;

							}
						}
						for (var j = 0; j < main.upgradableTiles.length; j++) {
							if (tmpTower.center.hitTestObject(main.upgradableTiles[j])) {
								main.upgradableTiles[j] = null;
							}
						}*/
						main.towers.splice(index, 1);
						main.towerLayer.removeChild(tmpTower)
					}
				} else if (tmpTower.reloadTime <= 0 && tmpTower == "[object SlopDispenserAshFog]") {
					var randSulfur = Math.random()
					var fog
					if (randSulfur < tmpTower.burn) {
						fog = new BurningSulfur(main, Math.ceil(Math.random() * 10), tmpTower.diameterTier, tmpTower.x, tmpTower.y, Math.random() * 360, 0.5, tmpTower.concentration)
					} else {
						fog = new Fog(main, Math.ceil(Math.random() * 10), tmpTower.diameterTier, tmpTower.x, tmpTower.y, Math.random() * 360, 0.5, tmpTower.concentration)
					}

					main.projLayer.addChild(fog)
					main.fogList.push(fog)
					tmpTower.reloadTime = tmpTower.c_reloadTime
				} else if (tmpTower.reloadTime <= 0 && (tmpTower == "[object LobberFirelobber]") && tmpTower.towerMode != null && tmpTower.towerMode == "release") {
					for (var i5: int = 0; i5 < monsters.length; ++i5) { //loop through all the monster
						if (main.getDistance(tmpTower, monsters[i5]) < tmpTower.range && monsters[i5].isDetectableNow == true && monsters[i1].reprogramMode <= 3) { //check if monster is in the range of the tower
							var flangle1: Number = Math.atan2(monsters[i5].y - tmpTower.y, monsters[i5].x - tmpTower.x); //compute angle of the bullet
							var tmpFire: Fire = new Fire(main, flangle1, monsters[i5], tmpTower.damage, tmpTower.bSpeed, tmpTower.bTime, tmpTower.scorchDamage); // create a bullet
							tmpFire.gotoAndStop(Math.ceil(Math.random() * 4))
							tmpTower.gun.rotation = (flangle1 / Math.PI * 180) + 90;
							tmpFire.rotation = (flangle1 / Math.PI * 180) + 90
							tmpFire.x = tmpTower.x;
							tmpFire.y = tmpTower.y;
							main.projLayer.addChild(tmpFire);
							//stageObjects.push(tmpBullet);
							bullets.push(tmpFire); //add tmpBullet to the list of bullets fired
							tmpTower.flameTime -= main.elapsedSeconds * main.getFrameRate();
							if (tmpTower.flameTime < 0) {
								tmpTower.reloadTime = tmpTower.c_reloadTime;
								tmpTower.flameTime = tmpTower.c_flameTime;
							}

							break;
						}
					}
				} else if (tmpTower.reloadTime <= 0 && (tmpTower == "[object GoldHarvesterExplosiveMine]")) {
					try {
						if (ran == 0) {
							if (level[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 96) {
								var currTower = new Mine_explosive(main);
								currTower.x = tmpTower.x; //place the tower on the tile
								currTower.y = tmpTower.y - 30;
								var c = 0;
								for (var i6 = 0; i6 < main.towers.length; i6++) {
									if (currTower.x == main.towers[i6].x && currTower.y == main.towers[i6].y && tmpTower.allowStacking == false) {
										c++
									}
								}
								if (c == 0) {
									currTower.gotoAndStop(1);
									main.towers.push(currTower);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower);
								}
							}
						} else if (ran == 1) {
							if (level[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 96) {
								var currTower1 = new Mine_explosive(main);
								currTower1.x = tmpTower.x; //place the tower on the tile
								currTower1.y = tmpTower.y + 30;
								var c1 = 0;
								for (var i7 = 0; i7 < main.towers.length; i7++) {
									if (currTower1.x == main.towers[i7].x && currTower1.y == main.towers[i7].y && tmpTower.allowStacking == false) {
										c1++
									}
								}
								if (c1 == 0) {
									currTower1.gotoAndStop(1);
									main.towers.push(currTower1);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower1);
								}
							}
						} else if (ran == 2) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].currentFrame == 96) {
								var currTower2 = new Mine_explosive(main);
								currTower2.x = tmpTower.x - 30; //place the tower on the tile
								currTower2.y = tmpTower.y;
								var c2 = 0;
								for (var i8 = 0; i8 < main.towers.length; i8++) {
									if (currTower2.x == main.towers[i8].x && currTower2.y == main.towers[i8].y && tmpTower.allowStacking == false) {
										c2++
									}
								}
								if (c2 == 0) {
									currTower2.gotoAndStop(1);
									main.towers.push(currTower2);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower2);
								}
							}
						} else if (ran == 3) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].currentFrame == 96) {
								var currTower3 = new Mine_explosive(main);
								currTower3.x = tmpTower.x + 30; //place the tower on the tile
								currTower3.y = tmpTower.y;
								var c3 = 0;
								for (var i9 = 0; i9 < main.towers.length; i9++) {
									if (currTower3.x == main.towers[i9].x && currTower3.y == main.towers[i9].y && tmpTower.allowStacking == false) {
										c3++
									}
								}
								if (c3 == 0) {
									currTower3.gotoAndStop(1);
									main.towers.push(currTower3);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower3);
								}
							}
						}
					} catch (er: Error) {}
					tmpTower.reloadTime = tmpTower.c_reloadTime;
					try {
						if (tmpTower.reloadTier != null && tmpTower.reloadTier == 1) {
							tmpTower.reloadTime = 4.5 * main.getFrameRate()
						} else if (tmpTower.reloadTier != null && tmpTower.reloadTier == 2) {
							tmpTower.reloadTime = 3.5 * main.getFrameRate()
						} else if (tmpTower.reloadTier != null && tmpTower.reloadTier == 3) {
							tmpTower.reloadTime = 2.5 * main.getFrameRate()
						}
					} catch (er: Error) {}
				} else if (tmpTower.reloadTime <= 0 && (tmpTower == "[object GoldHarvesterRevealMine]")) {
					try {
						if (ran == 0) {
							if (level[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 96) {
								var currTower4 = new Mine_reveal(main);
								currTower4.x = tmpTower.x; //place the tower on the tile
								currTower4.y = tmpTower.y - 30;
								var c4 = 0;
								for (var i10 = 0; i10 < main.towers.length; i10++) {
									if (currTower4.x == main.towers[i10].x && currTower4.y == main.towers[i10].y && tmpTower.allowStacking == false) {
										c4++
									}
								}
								if (c4 == 0) {
									currTower4.gotoAndStop(1);
									main.towers.push(currTower4);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower4);
								}
							}
						} else if (ran == 1) {
							if (level[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 96) {
								var currTower5 = new Mine_reveal(main);
								currTower5.x = tmpTower.x; //place the tower on the tile
								currTower5.y = tmpTower.y + 30;
								var c5 = 0;
								for (var i11 = 0; i11 < main.towers.length; i11++) {
									if (currTower5.x == main.towers[i11].x && currTower5.y == main.towers[i11].y && tmpTower.allowStacking == false) {
										c5++
									}
								}
								if (c5 == 0) {
									currTower5.gotoAndStop(1);
									main.towers.push(currTower5);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower5);
								}
							}
						} else if (ran == 2) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].currentFrame == 96) {
								var currTower6 = new Mine_reveal(main);
								currTower6.x = tmpTower.x - 30; //place the tower on the tile
								currTower6.y = tmpTower.y;
								var c6 = 0;
								for (var i12 = 0; i12 < main.towers.length; i12++) {
									if (currTower6.x == main.towers[i12].x && currTower6.y == main.towers[i12].y && tmpTower.allowStacking == false) {
										c6++
									}
								}
								if (c6 == 0) {
									currTower6.gotoAndStop(1);
									main.towers.push(currTower6);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower6);
								}
							}
						} else if (ran == 3) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].currentFrame == 96) {
								var currTower7 = new Mine_reveal(main);
								currTower7.x = tmpTower.x + 30; //place the tower on the tile
								currTower7.y = tmpTower.y;
								var c7 = 0;
								for (var i13 = 0; i < main.towers.length; i13++) {
									if (currTower7.x == main.towers[i13].x && currTower7.y == main.towers[i13].y && tmpTower.allowStacking == false) {
										c7++
									}
								}
								if (c7 == 0) {
									currTower7.gotoAndStop(1);
									main.towers.push(currTower7);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower7);
								}
							}
						}
					} catch (er: Error) {}
					tmpTower.reloadTime = tmpTower.c_reloadTime;
					try {
						if (tmpTower.reloadTier != null && tmpTower.reloadTier == 1) {
							tmpTower.reloadTime = 4.5 * main.getFrameRate()
						} else if (tmpTower.reloadTier != null && tmpTower.reloadTier == 2) {
							tmpTower.reloadTime = 3.5 * main.getFrameRate()
						} else if (tmpTower.reloadTier != null && tmpTower.reloadTier == 3) {
							tmpTower.reloadTime = 2.5 * main.getFrameRate()
						}
					} catch (er: Error) {}
				} else if (tmpTower.reloadTime <= 0 && (tmpTower == "[object GoldHarvesterTeleporterMine]")) {
					try {
						if (ran == 0) {
							if (level[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 96) {
								var currTower8 = new Mine_teleporter(main);
								currTower8.x = tmpTower.x; //place the tower on the tile
								currTower8.y = tmpTower.y - 30;
								var c8 = 0;
								for (var i14 = 0; i14 < main.towers.length; i14++) {
									if (currTower8.x == main.towers[i14].x && currTower8.y == main.towers[i14].y && tmpTower.allowStacking == false) {
										c8++
									}
								}
								if (c8 == 0) {
									currTower8.gotoAndStop(1);
									main.towers.push(currTower8);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) - 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower8);
								}
							}
						} else if (ran == 1) {
							if (level[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)].currentFrame == 96) {
								var currTower9 = new Mine_teleporter(main);
								currTower9.x = tmpTower.x; //place the tower on the tile
								currTower9.y = tmpTower.y + 30;
								var c9 = 0;
								for (var i15 = 0; i15 < main.towers.length; i15++) {
									if (currTower9.x == main.towers[i15].x && currTower9.y == main.towers[i15].y && tmpTower.allowStacking == false) {
										c9++
									}
								}
								if (c9 == 0) {
									currTower.gotoAndStop(1);
									main.towers.push(currTower9);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30) + 1][Math.round((tmpTower.x - 15) / 30)]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower);
								}
							}
						} else if (ran == 2) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1].currentFrame == 96) {
								var currTower10 = new Mine_teleporter(main);
								currTower10.x = tmpTower.x - 30; //place the tower on the tile
								currTower10.y = tmpTower.y;
								var c10 = 0;
								for (var i16 = 0; i16 < main.towers.length; i16++) {
									if (currTower10.x == main.towers[i16].x && currTower10.y == main.towers[i16].y && tmpTower.allowStacking == false) {
										c10++
									}
								}
								if (c10 == 0) {
									currTower10.gotoAndStop(1);
									main.towers.push(currTower10);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) - 1]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower10);
								}
							}
						} else if (ran == 3) {
							if (level[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1] == 95 && stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1].currentFrame == 96) {
								var currTower11 = new Mine_teleporter(main);
								currTower11.x = tmpTower.x + 30; //place the tower on the tile
								currTower11.y = tmpTower.y;
								var c11 = 0;
								for (var i17 = 0; i17 < main.towers.length; i17++) {
									if (currTower11.x == main.towers[i17].x && currTower11.y == main.towers[i17].y && tmpTower.allowStacking == false) {
										c11++
									}
								}
								if (c11 == 0) {
									currTower11.gotoAndStop(1);
									main.towers.push(currTower11);
									main.nonPlacableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1]); //add the current Tile into nonPlacableTiles
									main.upgradableTiles.push(stageObjects[Math.round((tmpTower.y - 15) / 30)][Math.round((tmpTower.x - 15) / 30) + 1]); //add the current Tile into upgradableTiles
									main.towerLayer.addChild(currTower11);
								}
							}
						}
					} catch (er: Error) {}
					tmpTower.reloadTime = tmpTower.c_reloadTime;
					try {
						if (tmpTower.reloadTier != null && tmpTower.reloadTier == 1) {
							tmpTower.reloadTime = 26 * main.getFrameRate()
						} else if (tmpTower.reloadTier != null && tmpTower.reloadTier == 2) {
							tmpTower.reloadTime = 22 * main.getFrameRate()
						} else if (tmpTower.reloadTier != null && tmpTower.reloadTier == 3) {
							tmpTower.reloadTime = 17 * main.getFrameRate()
						}
					} catch (er: Error) {}
				} else if (tmpTower.reloadTime <= 0 && tmpTower == "[object TowerSniper]") {
					for (var i18: int = 0; i18 < monsters.length; ++i18) { //loop through all the monster
						if (main.getDistance(tmpTower, monsters[i18]) < tmpTower.range && monsters[i18].isDetectableNow == true && monsters[i1].reprogramMode <= 3) { //check if monster is in the range of the tower
							var bangle1: Number = Math.atan2(monsters[i18].y - tmpTower.y, monsters[i18].x - tmpTower.x); //compute angle of the bullet
							var rand = Math.random() * 100
							var tmpShot = null
							var shotType
							if (rand < tmpTower.randExplosion) {
								shotType = "bomb"
								tmpShot = new Bomb(main, bangle1, monsters[i18], 250, -101, 10);
							} else {
								shotType = "bullet"
								tmpShot = new Bullet(main, bangle1, monsters[i18], tmpTower.damage, tmpTower.bSpeed); // create a bullet
								for (i = 0; i < tmpTower.extraBullets; i++) {
									var randAngle = (Math.random() * 0.4) - 0.2
									var anotherShot = new Bullet(main, bangle1 - randAngle, monsters[i18], tmpTower.damage, tmpTower.bSpeed - (Math.random() * 10))
									anotherShot.x = tmpTower.x;
									anotherShot.y = tmpTower.y;
									main.projLayer.addChild(anotherShot);
									bullets.push(anotherShot); //add tmpBullet to the list of bullets fired
								}
							}
							tmpTower.gun.rotation = (angle1 / Math.PI * 180) + 90;
							tmpShot.x = tmpTower.x;
							tmpShot.y = tmpTower.y;
							main.projLayer.addChild(tmpShot);
							//stageObjects.push(tmpBullet);
							if (shotType == "bullet") {
								bullets.push(tmpShot); //add tmpBullet to the list of bullets fired
							} else if (shotType == "bomb") {
								bombs.push(tmpShot)
							}
							if (tmpTower.rapidBullets > 0) {
								tmpTower.reloadTime = 0.25 * main.getFrameRate();
								tmpTower.rapidBullets -= 1;
							} else {
								tmpTower.reloadTime = tmpTower.c_reloadTime;
							}
							break;
						}
					}
				} else if (tmpTower.reloadTime <= 0 && (tmpTower == "[object GoldHarvesterReprogrammingBot]")) {
					tmpTower.reprogram();
					tmpTower.reloadTime = tmpTower.c_reloadTime;
				} else {
					tmpTower.reloadTime -= main.elapsedSeconds * main.getFrameRate();
				}
				if (selectedTower == null) {
					main.towerSpriteHandler.onTowerHoverOut(tmpTower);
					if (tmpTower.cooldown > 0) {
						tmpTower.cooldownTimer.alpha = 0
					}
				}
				if ((main.mouseX > tmpTower.x - 13 && main.mouseX < tmpTower.x + 13) && (main.mouseY > tmpTower.y - 13 && main.mouseY < tmpTower.y + 13) && main.currTower == null) {
					selectedTower = tmpTower;
					main.towerSpriteHandler.onTowerHoverOut(tmpTower);
					if (tmpTower.cooldown > 0) {
						tmpTower.cooldownTimer.alpha = 1
					}
					main.towerSpriteHandler.onTowerHover(tmpTower, tmpTower.x, tmpTower.y, tmpTower.range);
					main.MenuText.info1.text = "Sell (+" + (Math.round(tmpTower.cost / 2)) + ") [S]"
					main.MenuText.info3.text = ""
					main.MenuText.info4.text = ""
					if (tmpTower == "[object Tower]" && currLevel >= 3 - 1) {
						main.MenuText.info2.text = "Upgrade (100) [SPACE]"
					} else if (tmpTower == "[object Tower2]" && currLevel >= 7 - 1) {
						main.MenuText.info2.text = "Upgrade (250) [SPACE]"
					} else if (tmpTower == "[object SlopDispenser]" && currLevel >= 3 - 1) {
						main.MenuText.info2.text = "Upgrade (200) [SPACE]"
					} else if (tmpTower == "[object SlopDispenser2]" && currLevel >= 7 - 1) {
						main.MenuText.info2.text = "Upgrade (367) [SPACE]"
					} else if (tmpTower == "[object Lobber]" && currLevel >= 3 - 1) {
						main.MenuText.info2.text = "Upgrade (313) [SPACE]"
					} else if (tmpTower == "[object Lobber2]" && currLevel >= 7 - 1) {
						main.MenuText.info2.text = "Upgrade (570) [SPACE]"
					} else if (tmpTower == "[object GoldHarvester]" && currLevel >= 3 - 1) {
						main.MenuText.info2.text = "Upgrade (330) [SPACE]"
					} else if (tmpTower == "[object GoldHarvester2]" && currLevel >= 7 - 1) {
						main.MenuText.info2.text = "Upgrade (683) [SPACE]"
					} else if (tmpTower == "[object Hydrojetter]" && currLevel >= 6 - 1) {
						main.MenuText.info2.text = "Upgrade (280) [SPACE]"
					} else if (tmpTower == "[object Hydrojetter2]" && currLevel >= 7 - 1) {
						main.MenuText.info2.text = "Upgrade (620) [SPACE]"
					} else if (tmpTower == "[object ManualExplosive]" && currLevel >= 14 - 1) {
						main.MenuText.info2.text = "Detonate [SPACE]"
					} else if (tmpTower == "[object Tower3]") {
						if (currLevel >= 9 - 1) {
							main.MenuText.info2.text = "Machine Gun [1]: 900"
						}
						if (currLevel >= 15 - 1) {
							main.MenuText.info3.text = "Sniper [2]: 950"
						}
					} else if (tmpTower == "[object SlopDispenser3]") {
						if (currLevel >= 11 - 1) {
							main.MenuText.info2.text = "Sulfur Vent [1]: 1000"
						}
					} else if (tmpTower == "[object Lobber3]") {
						if (currLevel >= 12 - 1) {
							main.MenuText.info2.text = "Firelobber [1]: 1100"
						}
					} else if (tmpTower == "[object GoldHarvester3]") {
						if (currLevel >= 16 - 1) {
							main.MenuText.info2.text = "Reprogramming Bot [1]: 1300"
						}
					} else if (tmpTower == "[object TowerMachineGun]") {
						if (tmpTower.damageTier < 3) {
							main.MenuText.info2.text = "Damage " + main.RomanNumeral(tmpTower.damageTier + 1) + " [1]: 700"
						} else {
							main.MenuText.info2.text = "Damage: Maxed"
						}
						if (tmpTower.rapidTier < 2) {
							main.MenuText.info3.text = "Rapidfire " + main.RomanNumeral(tmpTower.rapidTier + 1) + " [2]: 1050"
						} else {
							main.MenuText.info3.text = "Rapidfire: Maxed"
						}
						if (tmpTower.rangeTier < 5) {
							main.MenuText.info4.text = "Shooting range " + main.RomanNumeral(tmpTower.rangeTier + 1) + " [3]: 450"
						} else {
							main.MenuText.info4.text = "Shooting range: Maxed"
						}

					} else if (tmpTower == "[object SlopDispenserAshFog]") {
						if (tmpTower.concentrationTier < 3) {
							main.MenuText.info2.text = "Concentration " + main.RomanNumeral(tmpTower.concentrationTier + 1) + " [1]: 550"
						} else {
							main.MenuText.info2.text = "Concentration: Maxed"
						}
						if (tmpTower.burningTier < 3) {
							main.MenuText.info3.text = "Burning " + main.RomanNumeral(tmpTower.burningTier + 1) + " [2]: 600"
						} else {
							main.MenuText.info3.text = "Burning: Maxed"
						}
						if (tmpTower.diameterTier < 3) {
							main.MenuText.info4.text = "Diameter " + main.RomanNumeral(tmpTower.diameterTier + 1) + " [3]: 700"
						} else {
							main.MenuText.info4.text = "Diameter: Maxed"
						}

					} else if (tmpTower == "[object LobberFirelobber]") {
						if (tmpTower.reachTier < 5) {
							main.MenuText.info2.text = "Reach " + main.RomanNumeral(tmpTower.reachTier + 1) + " [1]: 600"
						} else {
							main.MenuText.info2.text = "Reach: Maxed"
						}
						if (tmpTower.scorchTier < 5) {
							main.MenuText.info3.text = "Scorch " + main.RomanNumeral(tmpTower.scorchTier + 1) + " [2]: 700"
						} else {
							main.MenuText.info3.text = "Scorch: Maxed"
						}
						main.MenuText.info4.text = "Combustion Ejection [3]: 850"

					} else if (tmpTower == "[object GoldHarvesterExplosiveMine]" || tmpTower == "[object GoldHarvesterRevealMine]" || tmpTower == "[object GoldHarvesterTeleporterMine]") {
						if (tmpTower.reloadTier < 3) {
							main.MenuText.info2.text = "Reload " + main.RomanNumeral(tmpTower.reloadTier + 1) + " [1]: 650"
						} else {
							main.MenuText.info2.text = "Reload: Maxed"
						}
						main.MenuText.info3.text = "Mass Produce [2]: 1300"
						if (tmpTower.allowStacking == false) {
							main.MenuText.info4.text = "Mine Stacking [3]: 1300"
						} else {
							main.MenuText.info4.text = "Mine Stacking Enabled."
						}

					} else if (tmpTower == "[object TowerSniper]") {
						if (tmpTower.explosionTier < 4) {
							main.MenuText.info2.text = "Bomb chance " + main.RomanNumeral(tmpTower.explosionTier + 1) + " [1]: 600"
						} else {
							main.MenuText.info2.text = "Bomb chance: Maxed"
						}
						if (tmpTower.shotgunTier < 3) {
							main.MenuText.info3.text = "Shotgun " + main.RomanNumeral(tmpTower.shotgunTier + 1) + " [2]: 750"
						} else {
							main.MenuText.info3.text = "Shotgun: Maxed"
						}
						main.MenuText.info4.text = "Rapidfire [3]: 750"

					} else if (tmpTower == "[object GoldHarvesterReprogrammingBot]") {
						if (tmpTower.skillsTier < 3) {
							main.MenuText.info2.text = "Skills " + main.RomanNumeral(tmpTower.skillsTier + 1) + " [1]: 600"
						} else {
							main.MenuText.info2.text = "Skills: Maxed"
						}
						if (tmpTower.programTier < 3) {
							main.MenuText.info3.text = "Programming " + main.RomanNumeral(tmpTower.programTier + 1) + " [2]: 550"
						} else {
							main.MenuText.info3.text = "Programming: Maxed"
						}
						/*
						if (tmpTower.shotgunTier < 3) {
							main.MenuText.info3.text = "Shotgun " + (tmpTower.shotgunTier + 1) + " [2]: 750"
						} else {
							main.MenuText.info3.text = "Shotgun: Maxed"
						}
						main.MenuText.info4.text = "Rapidfire [3]: 750"*/

					}
				}

				for (var i = 0; i < monsters.length; i++) {
					if (tmpTower.buildingType == "mine") {
						if (tmpTower.hitTestObject(monsters[i]) && tmpTower.explode == false && monsters[i].robotType != "drone") {
							tmpTower.gotoAndPlay(2)
							tmpTower.explode = true
						}
					}
					if (tmpTower.buildingTypeSpecific == "explode" && tmpTower.hitBox != null && monsters[i].hitTestObject(tmpTower.hitBox) && tmpTower.buildingType == "mine" && monsters[i].robotType != "drone") {
						monsters[i].hp -= tmpTower.damage * (1 - monsters[i].resistance)
						monsters[i].hit(monsters[i]);
					} else if (tmpTower.buildingTypeSpecific == "reveal" && monsters[i].hitTestObject(tmpTower) && tmpTower.buildingType == "mine" && monsters[i].robotType != "drone") {
						monsters[i].revealTime = 72

					} else if (tmpTower.buildingTypeSpecific == "teleporter" && monsters[i].hitTestObject(tmpTower) && tmpTower.buildingType == "mine" && monsters[i].robotType != "drone") {
						monsters[i].nextWayPoint = 0
						if (monsters[i].wPoint == 1) {
							monsters[i].x = monsters[i].waypoints_x[0]
							monsters[i].y = monsters[i].waypoints_y[0]
						} else if (monsters[i].wPoint == 2) {
							monsters[i].x = monsters[i].waypoints_x_2[0]
							monsters[i].y = monsters[i].waypoints_y_2[0]
						} else if (monsters[i].wPoint == 3) {
							monsters[i].x = monsters[i].waypoints_x_3[0]
							monsters[i].y = monsters[i].waypoints_y_3[0]
						} else if (monsters[i].wPoint == 4) {
							monsters[i].x = monsters[i].waypoints_x_4[0]
							monsters[i].y = monsters[i].waypoints_y_4[0]
						} else if (monsters[i].wPoint == 5) {
							monsters[i].x = monsters[i].waypoints_x_5[0]
							monsters[i].y = monsters[i].waypoints_y_5[0]
						} else if (monsters[i].wPoint == 6) {
							monsters[i].x = monsters[i].waypoints_x_6[0]
							monsters[i].y = monsters[i].waypoints_y_6[0]
						} else if (monsters[i].wPoint == 7) {
							monsters[i].x = monsters[i].waypoints_x_7[0]
							monsters[i].y = monsters[i].waypoints_y_7[0]
						} else if (monsters[i].wPoint == 8) {
							monsters[i].x = monsters[i].waypoints_x_8[0]
							monsters[i].y = monsters[i].waypoints_y_8[0]
						}
					}
				}
				tmpTower.mainUpdate(t);
				updateMines(tmpTower, index);


			}


		}

		private function updateMines(tmpTower, index) {
			//trace(main.towers[index] + ", " + index + ", " + main.towerLayer);
			if (main.towers[index].buildingType == "mine" && main.towers[index].currentFrame == 10 && main.towers[index].buildingTypeSpecific == "explode") {
				main.towers[index].removeBuild();
			} else if (main.towers[index].buildingType == "mine" && main.towers[index].currentFrame == 16 && main.towers[index].buildingTypeSpecific == "reveal") {
				main.towers[index].removeBuild();
			} else if (main.towers[index].buildingType == "mine" && main.towers[index].currentFrame == 32 && main.towers[index].buildingTypeSpecific == "teleporter") {
				main.towers[index].removeBuild();
			}

		}

		function upgradeTowerWithLoop(i) {
			var isTower = 0
			var xPos
			var yPos
			var newTile
			if (main.currTower == null) {
				if (towers[i].x == selectedTower.x && towers[i].y == selectedTower.y && selectedTower.cooldown < 0) {
					xPos = towers[i].x
					yPos = towers[i].y
					if (String(selectedTower) == "[object Tower]" && currGold >= 100 && currLevel >= 3 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new Tower2(main, true);
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 100
						isTower++
					} else if (String(selectedTower) == "[object Tower2]" && currGold >= 250 && currLevel >= 7 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new Tower3(main, true)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 250
						isTower++
					} else if (String(selectedTower) == "[object SlopDispenser]" && currGold >= 200 && currLevel >= 3 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new SlopDispenser2(main, true)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 200
						isTower++
					} else if (String(selectedTower) == "[object SlopDispenser2]" && currGold >= 367 && currLevel >= 7 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new SlopDispenser3(main, true)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 367
						isTower++
					} else if (String(selectedTower) == "[object Lobber]" && currGold >= 313 && currLevel >= 3 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new Lobber2(main, true)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 313
						isTower++
					} else if (String(selectedTower) == "[object Lobber2]" && currGold >= 570 && currLevel >= 7 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new Lobber3(main, true)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 570
						isTower++
					} else if (String(selectedTower) == "[object GoldHarvester]" && currGold >= 330 && currLevel >= 3 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new GoldHarvester2(main, true)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 330
						isTower++
					} else if (String(selectedTower) == "[object GoldHarvester2]" && currGold >= 683 && currLevel >= 7 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new GoldHarvester3(main, true)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 683
						isTower++
					} else if (String(selectedTower) == "[object Hydrojetter]" && currGold >= 280 && currLevel >= 6 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new Hydrojetter2(main, true)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 280
						isTower++
					} else if (String(selectedTower) == "[object Hydrojetter2]" && currGold >= 620 && currLevel >= 7 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new Hydrojetter3(main, true)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 620
						isTower++
					} else if (String(selectedTower) == "[object ManualExplosive]") {
						selectedTower.explode()
					}
				}
			}


		}

		function upgradeToLevel4TowerPress1(i) {
			// UPGRADE TO LEVEL 4 TOWERS
			var isTower = 0
			var xPos
			var yPos
			var newTile
			main.MenuText.info1.text = ""
			main.MenuText.info2.text = ""
			main.MenuText.info3.text = ""
			main.MenuText.info4.text = ""
			if (towers[i].x == selectedTower.x && towers[i].y == selectedTower.y) {
				xPos = towers[i].x
				yPos = towers[i].y
				if (String(selectedTower) == "[object Tower3]") {
					if (currGold >= 900 && currLevel >= 9 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new TowerMachineGun(main)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 900
						isTower++

					}
				} else if (String(selectedTower) == "[object SlopDispenser3]") {
					if (currGold >= 1000 && currLevel >= 11 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new SlopDispenserAshFog(main)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 1000
						isTower++

					}
				} else if (String(selectedTower) == "[object Lobber3]") {
					if (currGold >= 1100 && currLevel >= 12 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new LobberFirelobber(main)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 1100
						isTower++
					}
				} else if (String(selectedTower) == "[object GoldHarvester3]") {
					if (currGold >= 1300 && currLevel >= 16 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new GoldHarvesterReprogrammingBot(main)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 1300
						isTower++
					}
				}


				// UPGRADE A LEVEL 4 TOWER
				else if (String(selectedTower) == "[object TowerMachineGun]") {
					if (currGold >= 700 && currLevel >= 9 - 1 && selectedTower.damageTier < 3) {
						main.currGold -= 700
						selectedTower.damageTier++
					}

				} else if (String(selectedTower) == "[object SlopDispenserAshFog]") {
					if (currGold >= 550 && currLevel >= 11 - 1 && selectedTower.concentrationTier < 3) {
						main.currGold -= 550
						selectedTower.concentrationTier++
					}

				} else if (String(selectedTower) == "[object LobberFirelobber]") {
					if (currGold >= 600 && currLevel >= 11 - 1 && selectedTower.reachTier < 5) {
						main.currGold -= 600
						selectedTower.reachTier++
					}

				} else if (String(selectedTower) == "[object GoldHarvesterExplosiveMine]" || String(selectedTower) == "[object GoldHarvesterRevealMine]" || String(selectedTower) == "[object GoldHarvesterTeleporterMine]") {
					if (currGold >= 650 && currLevel >= 14 - 1 && selectedTower.reloadTier < 3) {
						main.currGold -= 650
						selectedTower.reloadTier++
					}
				} else if (String(selectedTower) == "[object TowerSniper]") {
					if (currGold >= 600 && currLevel >= 11 - 1 && selectedTower.explosionTier < 5) {
						main.currGold -= 600
						selectedTower.explosionTier++
					}
				} else if (String(selectedTower) == "[object GoldHarvesterReprogrammingBot]") {
					if (currGold >= 600 && currLevel >= 11 - 1 && selectedTower.skillsTier < 3) {
						main.currGold -= 600
						selectedTower.skillsTier++
					}
				}
			}


		}


		function upgradeToLevel4TowerPress2(i) {
			// UPGRADE TO L4 TOWER
			var isTower = 0
			var xPos
			var yPos
			var newTile
			main.MenuText.info1.text = ""
			main.MenuText.info2.text = ""
			main.MenuText.info3.text = ""
			main.MenuText.info4.text = ""

			if (towers[i].x == selectedTower.x && towers[i].y == selectedTower.y) {
				xPos = towers[i].x
				yPos = towers[i].y
				if (String(selectedTower) == "[object Tower3]") {
					if (currGold >= 950 && currLevel >= 15 - 1) {
						main.towerLayer.removeChild(towers[i])
						newTile = new TowerSniper(main)
						towers[i] = newTile
						newTile.x = xPos
						newTile.y = yPos
						main.towerLayer.addChild(newTile)
						main.currGold -= 950
						isTower++

					}
				}


				// UPGRADE A L4 TOWER
				if (String(selectedTower) == "[object TowerMachineGun]") {
					if (currGold >= 1050 && currLevel >= 9 - 1 && selectedTower.rapidTier < 2) {
						main.currGold -= 1050
						selectedTower.rapidTier++
					}

				} else if (String(selectedTower) == "[object SlopDispenserAshFog]") {
					if (currGold >= 600 && currLevel >= 11 - 1 && selectedTower.burningTier < 3) {
						main.currGold -= 600
						selectedTower.burningTier++
					}

				} else if (String(selectedTower) == "[object LobberFirelobber]") {
					if (currGold >= 700 && currLevel >= 11 - 1 && selectedTower.scorchTier < 5) {
						main.currGold -= 700
						selectedTower.scorchTier++
					}

				} else if (String(selectedTower) == "[object GoldHarvesterExplosiveMine]") {
					if (currGold >= 1300 && currLevel >= 14 - 1) {
						main.currGold -= 1300
						selectedTower.place(main)
					}
				} else if (String(selectedTower) == "[object GoldHarvesterRevealMine]") {
					if (currGold >= 1300 && currLevel >= 14 - 1) {
						main.currGold -= 1300
						selectedTower.place(main)
					}
				} else if (String(selectedTower) == "[object GoldHarvesterTeleporterMine]") {
					if (currGold >= 1300 && currLevel >= 14 - 1) {
						main.currGold -= 1300
						selectedTower.place(main)
					}
				} else if (String(selectedTower) == "[object TowerSniper]") {
					if (currGold >= 750 && currLevel >= 11 - 1 && selectedTower.shotgunTier < 5) {
						main.currGold -= 750
						selectedTower.shotgunTier++
					}

				} else if (String(selectedTower) == "[object GoldHarvesterReprogrammingBot]") {
					if (currGold >= 550 && currLevel >= 16 - 1 && selectedTower.programTier < 3) {
						main.currGold -= 550
						selectedTower.programTier++
					}
				}
			}


		}


		function upgradeToLevel4TowerPress3(i) {
			// UPGRADE TO L4 TOWER
			var isTower = 0
			var xPos
			var yPos
			var newTile
			main.MenuText.info1.text = ""
			main.MenuText.info2.text = ""
			main.MenuText.info3.text = ""
			main.MenuText.info4.text = ""
			if (towers[i].x == selectedTower.x && towers[i].y == selectedTower.y) {



				// UPGRADE A L4 TOWER
				if (String(selectedTower) == "[object TowerMachineGun]") {
					if (currGold >= 450 && currLevel >= 9 - 1 && selectedTower.rangeTier < 5) {
						main.currGold -= 450
						selectedTower.rangeTier++
					}

				} else if (String(selectedTower) == "[object SlopDispenserAshFog]") {
					if (currGold >= 700 && currLevel >= 11 - 1 && selectedTower.diameterTier < 3) {
						main.currGold -= 700
						selectedTower.diameterTier++
					}

				} else if (String(selectedTower) == "[object LobberFirelobber]") {
					if (currGold >= 850 && currLevel >= 12 - 1 && selectedTower.towerMode == "release") {
						main.currGold -= 850
						selectedTower.gotoAndStop(2)
						selectedTower.ejectFire();
					}
				} else if (String(selectedTower) == "[object GoldHarvesterExplosiveMine]" || String(selectedTower) == "[object GoldHarvesterRevealMine]" || String(selectedTower) == "[object GoldHarvesterTeleporterMine]") {
					if (currGold >= 1300 && currLevel >= 14 - 1 && selectedTower.allowStacking == false) {
						main.currGold -= 1300
						selectedTower.allowStacking = true;
					}
				} else if (String(selectedTower) == "[object TowerSniper]" && selectedTower.rapidBullets == 0) {
					if (currGold >= 750 && currLevel >= 15 - 1) {
						main.currGold -= 750
						selectedTower.rapidBullets = 5;
						selectedTower.reloadTime = 1;
					}
				}
			}
		}
		public function destroyTowerCoor(explosionType: int, xPos: Number, yPos: Number) {
			for (var i = 0; i < main.towers.length; i++) {
				if (main.towers[i].x == xPos && main.towers[i].y == yPos) {
					destroyTower(explosionType, i);
				}
			}
		}

		public function destroyTower(explosionType: int, tower: int) {
			var towerType = main.getTowers()[tower]
			/*
			for (var i = 0; i < main.nonPlacableTiles.length; i++) {
				if (towerType.center.hitTestObject(main.nonPlacableTiles[i])) {
					main.nonPlacableTiles[i] = null;

				}
			}
			for (var j = 0; j < main.upgradableTiles.length; j++) {
				if (towerType.center.hitTestObject(main.upgradableTiles[j])) {
					main.upgradableTiles[j] = null;
				}
			}*/
			var explosion
			if (explosionType == 1) {
				explosion = new BuildExplosion1(this, main, towerType, tower)
				if (main.towers.length > 0) {
					explosion.x = towerType.x
					explosion.y = towerType.y
					main.addChild(explosion)
					explosions.push(explosion)
				}
			} else if (explosionType == 2) {
				for (var i = -10; i < 10; i += 4) {
					for (var j = -10; j < 10; j += 4) {
						var tmpFire: Fire = new Fire(main, Math.PI * 1.5, false, 1, 2, 1 + Math.random(), 0); // create a bullet
						tmpFire.gotoAndStop(Math.ceil(Math.random() * 4))
						tmpFire.rotation = 0
						tmpFire.x = towerType.x + i;
						tmpFire.y = towerType.y + j + 10;
						main.projLayer.addChild(tmpFire);
						bullets.push(tmpFire); //add tmpBullet to the list of bullets fired


					}
				}
				main.towerLayer.removeChild(main.getTowers()[tower]);
				main.towers.splice(tower, 1);
				if (main.stageObjects[Math.floor(towerType.y / 30)][Math.floor(towerType.x / 30)].currentFrame == 241) {
					main.stageObjects[Math.floor(towerType.y / 30)][Math.floor(towerType.x / 30)].gotoAndStop(285)
				} else if (main.stageObjects[Math.floor(towerType.y / 30)][Math.floor(towerType.x / 30)].currentFrame == 97) {
					main.stageObjects[Math.floor(towerType.y / 30)][Math.floor(towerType.x / 30)].subFrame = main.stageObjects[Math.floor(towerType.y / 30)][Math.floor(towerType.x / 30)].tile.currentFrame
					main.stageObjects[Math.floor(towerType.y / 30)][Math.floor(towerType.x / 30)].gotoAndStop(243)
				}

			}

		}
		public function update(t) {
			for (var i: int = 0; i < main.towers.length; ++i) {
				updateTowers(main.towers[i], i, t);
				updateMines(main.towers[i], i);
				if (main.towers[i].remove == true) {
					main.towerLayer.removeChild(main.towers[i]);
					main.towers.splice(i, 1);
				}
			}
			selTowerChange = 0;
			//trace(main.currTower.x + ", " + main.currTower.y)
		}
		
		
		public function getNextUpgradable(tower: String, listSpot: int = 0):int{
			if(tower == "[object Tower]" && main.currLevel >= 3 - 1){
				return 100;
			} else if(tower == "[object Tower2]" && main.currLevel >= 7 - 1){
				return 250;
			} else if(tower == "[object SlopDispenser]" && main.currLevel >= 3 - 1){
				return 200;
			} else if(tower == "[object SlopDispenser2]" && main.currLevel >= 7 - 1){
				return 367;
			} else if(tower == "[object Lobber]" && main.currLevel >= 3 - 1){
				return 313;
			} else if(tower == "[object Lobber2]" && main.currLevel >= 7 - 1){
				return 570;
			} else if(tower == "[object GoldHarvester]" && main.currLevel >= 3 - 1){
				return 330;
			} else if(tower == "[object GoldHarvester2]" && main.currLevel >= 7 - 1){
				return 367;
			} else if(tower == "[object Hydrojetter]" && main.currLevel >= 6 - 1){
				return 280;
			} else if(tower == "[object Hydrojetter2]" && main.currLevel >= 7 - 1){
				return 620;
			}
			// LEVEL 3 TOWERS
			if(tower == "[object Tower3]" && main.currLevel >= 9 - 1 && listSpot == 1){
				return 900;
			} else if(tower == "[object Tower3]" && main.currLevel >= 15 - 1 && listSpot == 2){
				return 950;
			}
			if(tower == "[object SlopDispenser3]" && main.currLevel >= 11 - 1 && listSpot == 1){
				return 1000;
			}
			if(tower == "[object Lobber3]" && main.currLevel >= 12 - 1 && listSpot == 1){
				return 1100;
			}
			if(tower == "[object GoldHarvester3]" && main.currLevel >= 14 - 1 && listSpot == 1){
				return -100;
			} else if(tower == "[object GoldHarvester3]" && main.currLevel >= 16 - 1 && listSpot == 2){
				return 1300;
			}
			return 0;
		}



	}

}