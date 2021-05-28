package {
	import flash.events.Event;

	public class BossManager {
		private var main
		private var tick
		private var level
		private var part
		private var l10: Level10
		private var l13: Level13
		private var bm: BuildingManager
		private var bosses

		public function BossManager(m) {
			main = m
			tick = 0
			part = 0
			l10 = main.getL10()
			l13 = main.getL13()
			bm = main.getBm()
			bosses = 0
		}

		public function updateBosses(e: Event) {
			tick += main.elapsedSeconds * main.getFrameRate()
			if (level == 10) {
				updateLevel10Boss()
			} else if (level == 13) {
				updateLevel13Boss()
			}
		}

		public function setLevel(levelNum: int) {
			level = levelNum
		}

		// LEVEL 10 BOSS

		private function updateLevel10Boss() {
			if (part == 0) {
				var tmpMonster = new Boss10(main);
				tmpMonster.x = 315
				tmpMonster.y = 240
				main.addChild(tmpMonster);
				main.monsters.push(tmpMonster); //add the current monster to the list of monsters
				main.waypointData.push(3); //add the current monster to the list of monsters
				part++
				tick = 0
			} else if (part > 0 && tick >= (5 * main.getFrameRate())) {
				tick = 0
				var rand
				rand = Math.floor(Math.random() * 25)
				for (var i = 0; i < main.monsters.length; i++) {
					if (main.monsters[i] == "[object Boss10]") {
						bosses++
					}

				}
				if (part % 5 == 0) {
					var boss
					for (var j = 0; j < main.monsters.length; j++) {
						if (main.monsters[j] == "[object Boss10]") {
							boss = main.monsters[j]
							if (part == 5 && bosses > 0) {
								boss.x = 315
								boss.y = 90
								boss.bodyB10.gotoAndPlay(1)
							} else if (part == 10 && bosses > 0) {
								boss.x = 315
								boss.y = 390
								boss.bodyB10.gotoAndPlay(1)
							} else if (part == 15 && bosses > 0) {
								boss.x = 105
								boss.y = 90
								boss.bodyB10.gotoAndPlay(1)
							} else if (part == 20 && bosses > 0) {
								boss.x = 6.5 * 30
								boss.y = 7.5 * 30
								boss.bodyB10.gotoAndPlay(1)
								boss.movementSpeed = 0.25
								boss.nextWayPoint = 1
							}
							trace(boss.movementSpeed)
						}

					}


				} else if (part % 5 != 0 && bosses > 0) {
					if (rand == 0 || rand == 1) {
						main.levelWave = l10.getT1()
						main.pinpoint = 0
						main.tick = 0
					} else if (rand == 2 || rand == 3) {
						main.levelWave = l10.getT2()
						main.pinpoint = 0
						main.tick = 0
					} else if (rand == 4 || rand == 5) {
						main.levelWave = l10.getT3()
						main.pinpoint = 0
						main.tick = 0
					} else if (rand == 6 || rand == 7) {
						main.levelWave = l10.getT4()
						main.pinpoint = 0
						main.tick = 0
					} else if (rand == 8 || rand == 9) {
						main.levelWave = l10.getT5()
						main.pinpoint = 0
						main.tick = 0
					} else if (rand == 10 || rand == 11 || rand == 12 || rand == 13 || rand == 24 || rand == 25) {
						bm.destroyTower(1, Math.floor(Math.random() * (main.getTowers().length)))
					} else if (rand == 14 || rand == 15) {
						main.levelWave = l10.getT6()
						main.pinpoint = 0
						main.tick = 0
					} else if (rand == 16 || rand == 17) {
						main.levelWave = l10.getT7()
						main.pinpoint = 0
						main.tick = 0
					} else if (rand == 18 || rand == 19 || rand == 20) {
						main.levelWave = l10.getT8()
						main.pinpoint = 0
						main.tick = 0
					}

				}
				part++
				bosses = 0



			}
		}

		// LEVEL 13 BOSS

		private function updateLevel13Boss() {
			var count = 0;
			if (part == 0) {
				part++;
			} else if(part < 100){
				for (var i = 0; i < main.monsters.length; i++) {
					if (main.monsters[i] == "[object MonsterMagmaTower]") {
						count++
					}
				}
				if (main.levelWave[main.pinpoint][1] == -3 && count > 0) {
					main.levelWave = l13.getBoss()
					main.pinpoint = 0;
					part++;
				}
			}

		}

	}

}