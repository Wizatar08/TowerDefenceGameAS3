package {
	import flash.events.Event;

	public class RobotManager {
		private var main
		private var magmaTowerSpeedBoost;

		public function RobotManager(m) {
			main = m
			magmaTowerSpeedBoost = false;
		}

		public function update(t) {
			var count = 0;
			for (var i1: int = 0; i1 < main.monsters.length; ++i1) { //update all monsters
				var m = main.monsters[i1]
				m.moveMonster(main.monsters[i1], i1, main.waypointData[i1], t);
				if (main.monsters[i1] == String("[object MonsterMagmaTower]")) {
					count++
				}
				if (magmaTowerSpeedBoost == true) {
					m.magmaTowerSpeedBoost = 1.5;
				} else {
					m.magmaTowerSpeedBoost = 1;
				}
				if (main.monsters[i1] != null) {
					if (main.monsters[i1].reprogramMode > 2) {
						for (var i = 0; i < main.monsters.length; i++) {
							if (main.monsters[i1] != main.monsters[i] && main.monsters[i1].hitTestObject(main.monsters[i])) {
								main.monsters[i].hp -= 5 / main.elapsedSeconds;
							}
						}
					}
				}
			}
			if (count > 0) {
				if (main.redScreenAlpha < 0.3) {
					main.redScreenAlpha += 1 / 24 * main.elapsedSeconds;
				}
				magmaTowerSpeedBoost = true;
			} else {
				if (main.redScreenAlpha >= 0) {
					main.redScreenAlpha -= 1 / 24 * main.elapsedSeconds;
				}
				magmaTowerSpeedBoost = false;
			}
			summonMonsters();

		}

		//main function creates a monster
		public function createMonster(monster, commandArray, xpos: int, ypos: int, waydata: int, point: int, followWaypoints: Boolean = true, start = null, goto = null): void {
			var startX = 0;
			var startY = 0;
			if (start != null) {
				startX = start[1];
				startY = start[0];
			}
			var gotoX = 0;
			var gotoY = 0;
			if (goto != null) {
				gotoX = goto[1];
				gotoY = goto[0];
			}
			var tmpMonster = createNewMonsterGets(monster);
			if (followWaypoints = true) {
				tmpMonster.x = xpos;
				tmpMonster.y = ypos;
			} else {
				tmpMonster.x = startX;
				tmpMonster.y = startY;
			}

			if (tmpMonster.thisLayer == 1) {
				main.monsterLayer1.addChild(tmpMonster);
			} else if (tmpMonster.thisLayer == 2) {
				main.monsterLayer2.addChild(tmpMonster);
			} else if (tmpMonster.thisLayer == 3) {
				main.monsterLayer3.addChild(tmpMonster);
			} else if (tmpMonster.thisLayer == 4) {
				main.monsterLayer4.addChild(tmpMonster);
			} else if (tmpMonster.thisLayer == 5) {
				main.monsterLayer5.addChild(tmpMonster);
			} else if (tmpMonster.thisLayer == 6) {
				main.monsterLayer6.addChild(tmpMonster);
			} else if (tmpMonster.thisLayer == 7) {
				main.monsterLayer7.addChild(tmpMonster);
			} else if (tmpMonster.thisLayer == 8) {
				main.monsterLayer8.addChild(tmpMonster);
			}


			main.monsters.push(tmpMonster); //add the current monster to the list of monsters
			main.waypointData.push(waydata); //add the current monster to the list of monsters

			if (point != undefined) {
				if (waydata == 1) {
					tmpMonster.xWpoints = tmpMonster.waypoints_x
					tmpMonster.yWpoints = tmpMonster.waypoints_y
				} else if (waydata == 2) {
					tmpMonster.xWpoints = tmpMonster.waypoints_x_2
					tmpMonster.yWpoints = tmpMonster.waypoints_y_2
				} else if (waydata == 3) {
					tmpMonster.xWpoints = tmpMonster.waypoints_x_3
					tmpMonster.yWpoints = tmpMonster.waypoints_y_3
				} else if (waydata == 4) {
					tmpMonster.xWpoints = tmpMonster.waypoints_x_4
					tmpMonster.yWpoints = tmpMonster.waypoints_y_4
				} else if (waydata == 5) {
					tmpMonster.xWpoints = tmpMonster.waypoints_x_5
					tmpMonster.yWpoints = tmpMonster.waypoints_y_5
				} else if (waydata == 6) {
					tmpMonster.xWpoints = tmpMonster.waypoints_x_6
					tmpMonster.yWpoints = tmpMonster.waypoints_y_6
				} else if (waydata == 7) {
					tmpMonster.xWpoints = tmpMonster.waypoints_x_7
					tmpMonster.yWpoints = tmpMonster.waypoints_y_7
				} else if (waydata == 8) {
					tmpMonster.xWpoints = tmpMonster.waypoints_x_8
					tmpMonster.yWpoints = tmpMonster.waypoints_y_8
				}
				if (startX == 0 && startY == 0) {
					if (waydata == 1) {
						tmpMonster.x = (tmpMonster.waypoints_x[point])
						tmpMonster.y = (tmpMonster.waypoints_y[point])
					} else if (waydata == 2) {
						tmpMonster.x = (tmpMonster.waypoints_x_2[point])
						tmpMonster.y = (tmpMonster.waypoints_y_2[point])
					} else if (waydata == 3) {
						tmpMonster.x = (tmpMonster.waypoints_x_3[point])
						tmpMonster.y = (tmpMonster.waypoints_y_3[point])
					} else if (waydata == 4) {
						tmpMonster.x = (tmpMonster.waypoints_x_4[point])
						tmpMonster.y = (tmpMonster.waypoints_y_4[point])
					} else if (waydata == 5) {
						tmpMonster.x = (tmpMonster.waypoints_x_5[point])
						tmpMonster.y = (tmpMonster.waypoints_y_5[point])
					} else if (waydata == 6) {
						tmpMonster.x = (tmpMonster.waypoints_x_6[point])
						tmpMonster.y = (tmpMonster.waypoints_y_6[point])
					} else if (waydata == 7) {
						tmpMonster.x = (tmpMonster.waypoints_x_7[point])
						tmpMonster.y = (tmpMonster.waypoints_y_7[point])
					} else if (waydata == 8) {
						tmpMonster.x = (tmpMonster.waypoints_x_8[point])
						tmpMonster.y = (tmpMonster.waypoints_y_8[point])
					}
					tmpMonster.nextWayPoint = point
					tmpMonster.gotoBool = false;
				} else {
					tmpMonster.x = startX
					tmpMonster.y = startY
					if (gotoX != 0 && gotoY != 0) {
						tmpMonster.gotoX = gotoX; // <--- PROBLEM CODE
						tmpMonster.gotoY = gotoY;
						tmpMonster.gotoBool = true;
						tmpMonster.nextWayPoint = point - 1
						//trace("GIVESPAWNAREA: " + tmpMonster + ", [" + tmpMonster.x + ", " + tmpMonster.y + "], [" + tmpMonster.gotoX + ", " + tmpMonster.gotoY + "]")
					} else {
						tmpMonster.nextWayPoint = point
						tmpMonster.gotoBool = false;
					}

				}

			}
			//tmpMonster.giveSpawnArea(main.monsters[main.monsters.length - 1], point, waydata, startX, startY, gotoX, gotoY)
			tmpMonster.stop()
			main.updates.updateBarrier();

			if (commandArray != null && commandArray[4] != undefined && tmpMonster == "[object MonsterMagmaTower]") {
				tmpMonster.effectTime = main.getMinMaxRand(commandArray[4], commandArray[5]) * main.getFrameRate();
				tmpMonster.minTime = commandArray[4]
				tmpMonster.maxTime = commandArray[5]
				tmpMonster.chp = commandArray[6]
				tmpMonster.hp = commandArray[6]
			}
		}

		public function createNewMonsterGets(monster) {
			var m;
			if (monster == 1) {
				m = new Monster(main);
			}
			if (monster == 2) {
				m = new Monster2(main);
			}
			if (monster == 3) {
				m = new Monster3(main);
			}
			if (monster == 4) {
				m = new Monster4(main);
			}
			if (monster == 5) {
				m = new Monster5(main);
			}
			if (monster == 6) {
				m = new Monster6(main);
			}
			if (monster == 7) {
				m = new Monster7(main);
			}
			if (monster == 8) {
				m = new Monster8(main);
			}
			if (monster == 9) {
				m = new Monster9(main);
			}
			if (monster == 10) {
				m = new Monster10(main);
			}
			if (monster == 11) {
				m = new Monster11(main);
			}
			if (monster == 12) {
				m = new Monster12(main);
			}
			if (monster == 13) {
				m = new Monster13(main);
			}
			if (monster == 14) {
				m = new Monster14(main);
			}
			if (monster == 15) {
				m = new Monster15(main);
			}
			if (monster == 16) {
				m = new Monster16(main);
			}
			if (monster == 17) {
				m = new Monster17(main);
			}
			if (monster == 18) {
				m = new Monster18(main);
			}
			if (monster == 19) {
				m = new Monster19(main);
			}
			if (monster == 20) {
				m = new Monster20(main);
			}
			if (monster == 21) {
				m = new Monster21(main);
			}
			if (monster == 22) {
				m = new Monster22(main);
			}
			if (monster == "magmaTower") {
				m = new MonsterMagmaTower(main);
			}
			return m;
		}




		function summonMonsters() {
			//tile.alpha = 0
			/*
			MONSTER SPAWNING ARGUMENTS (In level array)
			Spawn robot: [<Monster ID>,<Time (In framerate per seconds)>, <Waypoint data>, <Use default starting waypoints = true>, [<Custom starting x pos>, <Custom starting y pos>] = null, [<Custom goto x pos>, <Custom goto y pos>] = null]
			Boss wave: ["boss", <Time>, <Level>]
			Addtime boolean: ["addTime", <Time>, <True/false>]
			Destroy a tower: ["destroyTower", <Time>]
			Spawn magma tower: ["magmaTower", <Time>, <x position>, <y position>]
			*/
			if (main.levelWave[main.pinpoint][1] <= main.tick) { // Checks to see if a monster should spawn at the correct time.
				if (main.levelWave[main.pinpoint][0] > 0) {
					// createMonster(monster, commandArray, xpos: int, ypos: int, waydata: int, point: int, followWaypoints: Boolean = true, start = null, goto = null)
					createMonster(main.levelWave[main.pinpoint][0], main.levelWave[main.pinpoint], main.waypoints_x[0], main.waypoints_y[0], main.levelWave[main.pinpoint][2], main.levelWave[main.pinpoint][3], main.levelWave[main.pinpoint][4], main.levelWave[main.pinpoint][5], main.levelWave[main.pinpoint][6])
					main.pinpoint++
				} else if (main.levelWave[main.pinpoint][0] == -1) {
					main.stageObjects[main.levelWave[main.pinpoint][3]][main.levelWave[main.pinpoint][2]].gotoAndStop(main.levelWave[main.pinpoint][4] + 1)
					main.nonPlacableTiles.push(main.stageObjects[main.levelWave[main.pinpoint][3]][main.levelWave[main.pinpoint][2]])
					for (var i = 0; i < main.decorationList.length; i++) {
						if (main.decorationList[i].hitTestObject(main.stageObjects[main.levelWave[main.pinpoint][3]][main.levelWave[main.pinpoint][2]])) {
							main.decorationList.splice(i, 0)
							main.decorationList[i].x = 100000
						}
					}
					for (var j = 0; j < main.towers.length; j++) {
						if (main.towers[j].center.hitTestObject(main.stageObjects[main.levelWave[main.pinpoint][3]][main.levelWave[main.pinpoint][2]])) {
							main.towers.splice(j, 0)
							main.towers[j].x = 1000000
						}
					}
					main.pinpoint++
				} else if (main.levelWave[main.pinpoint][0] == "boss") {
					main.addEventListener(Event.ENTER_FRAME, main.bosses.updateBosses)
					if (main.levelWave[main.pinpoint][2] == 10) {
						main.bosses.setLevel(10)
					} else if (main.levelWave[main.pinpoint][2] == 13) {
						main.bosses.setLevel(13)
					}
					main.pinpoint++
				} else if (main.levelWave[main.pinpoint][0] == "addTime") {
					if (main.levelWave[main.pinpoint][2] == true) {
						main.addTime = true
					} else if (main.levelWave[main.pinpoint][2] == false) {
						main.addTime = false
					}
					main.pinpoint++
				} else if (main.levelWave[main.pinpoint][0] == "destroyTower") {
					main.pinpoint++
					var applicableTowers: Array = new Array();
					var count = 0;
					for (var k = 0; k < main.towers.length; k++) {
						if (main.towers[k].buildingType != "mine") {
							applicableTowers.push(main.towers[k]);
							count++;
						}
					}
					if (count > 0) {
						var chosenTower = applicableTowers[Math.floor(Math.random() * count)]
						main.bm.destroyTowerCoor(2, chosenTower.x, chosenTower.y);
					}

				} else if (main.levelWave[main.pinpoint][0] == "magmaTower") {
					createMonster("magmaTower", main.levelWave[main.pinpoint], main.levelWave[main.pinpoint][2], main.levelWave[main.pinpoint][3], null, null)
					main.pinpoint++
				}
				if (main.addTime == false) {
					main.tick = 0
				}

			}
		}

	}

}