package {
	import flash.display.MovieClip;

	public class Monster extends MovieClip {
		private var main: Main
		private var stageObjects;
		public var hitBox;

		public var nextWayPoint: int; //next point from which the monster should turn
		public var hp: Number; //HP of the monster
		public var chp: Number; //HP of the monster
		public var gold: int; //reward for killing the monster
		public var movementSpeed: Number
		public var isDetectable: Array // Variable that determines what paths a monster is detectable in. True: 
		public var isDetectableNow: Boolean
		public var isHittableNow: Boolean
		public var healthBarY
		public var robotType: String
		public var resistance
		public var magicResistance
		public var gotoX
		public var gotoY
		public var gotoBool

		private var isEnd
		private var mudTileList
		public var waypoints_x
		public var waypoints_y
		public var waypoints_x_2
		public var waypoints_y_2
		public var waypoints_x_3
		public var waypoints_y_3
		public var waypoints_x_4
		public var waypoints_y_4
		public var waypoints_x_5
		public var waypoints_y_5
		public var waypoints_x_6
		public var waypoints_y_6
		public var waypoints_x_7
		public var waypoints_y_7
		public var waypoints_x_8
		public var waypoints_y_8
		private var hypotenuse: Number
		private var lives
		private var monsters
		private var goldTileList
		private var currGold
		private var undetectableTiles
		private var monster_speed
		private var waypoint_data
		private var goldTileBonus
		private var goldTileDamage
		private var waypointData
		private var mudTileListM
		public var revealTime
		public var wPoint
		private var monsterSpawn
		private var spawnTimeMin
		private var spawnTimeSet
		private var boss
		private var toughness
		public var protTier

		private var isDetectable0
		private var isDetectable1
		public var m20detection
		public var hitMud
		public var removeLives
		public var xWpoints
		public var yWpoints

		private var waitTime

		public var hitEffect
		public var defaultFrame
		public var hiddenByDefault
		public var onDeathBool

		private var gotGold

		public var magmaTowerSpeedBoost
		public var thisLayer

		public var hbEx
		public var reprogramMode

		public var disableSpeed
		public var disabled
		
		private var centerDetection: Hitbox;

		/*
		PROT TIER (FOR HACKING DIFFICULTY):
		1: 1
		2: 1
		3: 2
		4: 1
		5: 1
		6: 4
		7: 2
		8: 2
		9: 1
		10: 1
		11: 2
		12: 4
		13: 3
		14: 1
		15: 2
		16: 3
		17: 2
		18: 3
		19: 1
		20: 2
		21: 4
		22: 3
		*/

		public function Monster(m: Main) {
			stop();
			main = m;
			this.setProperties();
			this.createCenterDetector();
			isEnd = main.getIsEnd()
			mudTileList = main.getMudTileList()
			waypoints_x = main.getWpointX()
			waypoints_y = main.getWpointY()
			waypoints_x_2 = main.getWpointX2()
			waypoints_y_2 = main.getWpointY2()
			waypoints_x_3 = main.getWpointX3()
			waypoints_y_3 = main.getWpointY3()
			waypoints_x_4 = main.getWpointX4()
			waypoints_y_4 = main.getWpointY4()
			waypoints_x_5 = main.getWpointX5()
			waypoints_y_5 = main.getWpointY5()
			waypoints_x_6 = main.getWpointX6()
			waypoints_y_6 = main.getWpointY6()
			waypoints_x_7 = main.getWpointX7()
			waypoints_y_7 = main.getWpointY7()
			waypoints_x_8 = main.getWpointX8()
			waypoints_y_8 = main.getWpointY8()
			stageObjects = main.getStageObjects();
			isDetectableNow = true
			isHittableNow = true
			m20detection = 0;
			waitTime = 0
			magmaTowerSpeedBoost = 1;
			hitBox = new Hitbox();
			reprogramMode = 0;
			if (String(this) == "[object Monster]") {
				hitBox.width = this.body1.width
				hitBox.height = this.body1.height
			}
			hitBox.x = 0
			hitBox.y = 0
			this.addChild(hitBox)
			gotGold = false;
			hbEx = 0;
			reprogramMode = 0;
			disableSpeed = 1;
			disabled = false;
			nextWayPoint = 0;
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
		
		public function createCenterDetector():void{
			centerDetection = new Hitbox();
			centerDetection.x = -0.5;
			centerDetection.y = -0.5;
			this.addChild(centerDetection);
			centerDetection.alpha = 0;
		}
		
		public function moveMonster(tmpMonster, ind: int, wp, t): void {
			wPoint = wp
			lives = main.getLives()
			monsters = main.getMonsters()
			goldTileList = main.getGoldTileList() //
			currGold = main.getCurrGold()
			monster_speed = main.getMonsterSpeed() * 24
			waypointData = main.getWaypointData()
			goldTileBonus = main.getGoldTileBonus()
			mudTileListM = main.getMudTileList()
			undetectableTiles = main.getUndetectableTiles()
			goldTileDamage = main.getGoldTileDamage()

			waitTime -= t * main.getFrameRate()

			waypoints_x = main.getWpointX()
			waypoints_y = main.getWpointY()
			waypoints_x_2 = main.getWpointX2()
			waypoints_y_2 = main.getWpointY2()
			waypoints_x_3 = main.getWpointX3()
			waypoints_y_3 = main.getWpointY3()
			waypoints_x_4 = main.getWpointX4()
			waypoints_y_4 = main.getWpointY4()
			waypoints_x_5 = main.getWpointX5()
			waypoints_y_5 = main.getWpointY5()
			waypoints_x_6 = main.getWpointX6()
			waypoints_y_6 = main.getWpointY6()
			waypoints_x_7 = main.getWpointX7()
			waypoints_y_7 = main.getWpointY7()
			waypoints_x_8 = main.getWpointX8()
			waypoints_y_8 = main.getWpointY8()

			tmpMonster.hitBox.alpha = 0;

			if (tmpMonster == "[object Monster18]") {
				//trace(tmpMonster.xWpoints + ", " + tmpMonster.yWpoints)
			}
			// [75,75,45,45,495], [525,405,230,135,135]

			//trace(tmpMonster.isDetectableNow + ", " + tmpMonster.isDetectable0 + ", " + tmpMonster.isDetectable1 + ", " + undetectableTiles.length)
			if (isEnd == false) {
				var speed: Number = 1
				var counter: int = 0
				for (var i = 0; i < mudTileList.length; i++) {
					var tile = mudTileList[i]
					if ((tmpMonster.hitTestObject(tile) && tmpMonster.robotType != "drone") || revealTime > 0) {
						speed = 0.5
						counter++
					}
				}
				for (var j = 0; j < main.fogList.length; j++) {
					var fog = main.fogList[j]
					if (tmpMonster.hitBox.hitTestObject(fog)) {
						speed = fog.concentration
						if (fog == "[object BurningSulfur]") {
							tmpMonster.hp -= 5 / 24
						}
					}
				}
				if (counter > 0) {
					hitMud = true
				} else {
					hitMud = false
				}

				if (tmpMonster.disabled == false && tmpMonster.reprogramMode == 0) {
					for (var k = 0; k < main.monsters.length; k++) {
						if (main.monsters[k] != tmpMonster) {
							if (tmpMonster.hitTestObject(main.monsters[k]) && main.monsters[k].disabled == true) {
								main.monsters[k].disabled = false
								main.monsters[k].disableSpeed = 1;
							}
						}
					}
				}

				if (tmpMonster.robotType != "stationary") {
					var dist_x: Number //distance between the monster
					var dist_y: Number //and the nextWayPoint
					if (gotoBool == false) {
						dist_x = (xWpoints[tmpMonster.nextWayPoint]) - tmpMonster.x;
						dist_y = (yWpoints[tmpMonster.nextWayPoint]) - tmpMonster.y;
					} else {
						dist_x = gotoX - tmpMonster.x;
						dist_y = gotoY - tmpMonster.y;
					}
					if ((Math.abs(dist_y) + Math.abs(dist_x) <= 1) || hypotenuse <= -10) { //increase the nextWayPoint if monster 
						++tmpMonster.nextWayPoint; //collided with a waypoint
						gotoBool = false
						var a = xWpoints[tmpMonster.nextWayPoint] - tmpMonster.x
						var b = yWpoints[tmpMonster.nextWayPoint] - tmpMonster.y
						hypotenuse = Math.sqrt((a * a) + (b * b))
					}

					if (xWpoints[tmpMonster.nextWayPoint] == "tp") {
						tmpMonster.nextWayPoint++;
						tmpMonster.x = xWpoints[tmpMonster.nextWayPoint];
						tmpMonster.y = yWpoints[tmpMonster.nextWayPoint];
						yWpoints[tmpMonster.nextWayPoint - 1] -= 15;
						yWpoints[tmpMonster.nextWayPoint - 1] *= 1 / 30;
						waitTime = yWpoints[tmpMonster.nextWayPoint - 1] * main.getFrameRate();
						tmpMonster.nextWayPoint++;

					}

					if (tmpMonster.x == 0 && tmpMonster.y == 0) {
						main.lives -= removeLives
						this.removeMonster(tmpMonster, i, ind, false)
					}


					// Move monster
					var angle: Number
					angle = Math.atan2(dist_y, dist_x); //compute the angle of the monster

					if (waitTime < 0) {
						var count = 0;
						for (var l = 0; l < main.towers.length; l++) {
							if (main.towers[l] == "[object Barricade]" && tmpMonster.hitTestObject(main.towers[l])) {
								count++;
								main.towers[l].toughness -= tmpMonster.toughness;
							}
						}
						if (count == 0) {
							var addX = monster_speed * Math.cos(angle) * speed * tmpMonster.movementSpeed * t * magmaTowerSpeedBoost * disableSpeed; //update the x position
							var addY = monster_speed * Math.sin(angle) * speed * tmpMonster.movementSpeed * t * magmaTowerSpeedBoost * disableSpeed; //update the y position
							tmpMonster.x += addX
							tmpMonster.y += addY
							if (addX < 0) {
								addX *= -1
							}
							if (addY < 0) {
								addY *= -1
							}
							hypotenuse -= Math.sqrt((addX * addX) + (addY * addY));
						}
					}
					if (tmpMonster.robotType != "drone" && tmpMonster != "[object Monster13]" && tmpMonster != "[object Boss10]") {
						tmpMonster.rotation = angle / Math.PI * 180; //rotate the monster
					}
				}


				if (tmpMonster == "[object ReprogrammedRobot]") {
					tmpMonster.healthBarRB.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBarRB.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBarRB.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBarRB.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster]") {
					tmpMonster.healthBar.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster2]") {
					tmpMonster.healthBar2.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar2.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar2.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar2.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster3]") {
					tmpMonster.healthBar3.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar3.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar3.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar3.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster4]") {
					tmpMonster.healthBar4.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar4.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar4.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar4.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster5]") {
					tmpMonster.healthBar5.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar5.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar5.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar5.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster6]") {
					tmpMonster.healthBar6.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar6.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar6.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar6.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster7]") {
					tmpMonster.healthBar7.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar7.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar7.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar7.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster8]") {
					tmpMonster.healthBar8.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar8.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar8.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar8.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster9]") {
					tmpMonster.healthBar9.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster10]") {
					tmpMonster.healthBar10.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar10.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar10.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar10.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster11]") {
					tmpMonster.healthBar11.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
					tmpMonster.body11.body.rotation -= 5
				} else if (tmpMonster == "[object Monster12]") {
					tmpMonster.rotateMonster12.rotation = angle / Math.PI * 180
					tmpMonster.healthBar12.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
					var rot: int = Math.round(tmpMonster.rotateMonster12.rotation)
					if (rot > -45 && (rot < 45 || rot >= 315)) {
						tmpMonster.body12.gotoAndStop("Right")
					} else if (rot < 135 && rot >= 45) {
						tmpMonster.body12.gotoAndStop("Down")
					} else if (rot < 225 && rot >= 135) {
						tmpMonster.body12.gotoAndStop("Left")
					} else if ((rot < 315 && rot >= 225) || (rot < -45)) {
						tmpMonster.body12.gotoAndStop("Up")
					}
				} else if (tmpMonster == "[object Monster13]") {
					tmpMonster.healthBar13.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Boss10]") {
					tmpMonster.healthBarBoss10.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster14]") {
					tmpMonster.healthBar14.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar14.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar14.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar14.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster15]") {
					tmpMonster.healthBar15.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar15.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar15.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar15.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster16]") {
					tmpMonster.healthBar16.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar16.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar16.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar16.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster17]") {
					tmpMonster.healthBar17.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar17.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar17.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar17.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object MonsterMagmaTower]") {
					tmpMonster.healthBarMT.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster18]") {
					tmpMonster.healthBar18.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar18.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar18.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar18.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster19]") {
					tmpMonster.healthBar19.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar19.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar19.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar19.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster20]") {
					tmpMonster.healthBar20.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar20.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar20.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar20.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster21]") {
					tmpMonster.healthBar21.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar21.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar21.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar21.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				} else if (tmpMonster == "[object Monster22]") {
					tmpMonster.healthBar22.rotation = -(angle / Math.PI * 180)
					tmpMonster.healthBar22.x = Math.sin(angle / Math.PI * 180) + (Math.sin(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar22.y = Math.cos(angle / Math.PI * 180) + (Math.cos(angle) * tmpMonster.healthBarY)
					tmpMonster.healthBar22.gotoAndStop(Math.round(100 * (tmpMonster.hp / tmpMonster.chp)) + tmpMonster.hbEx)
				}
				//trace(tmpMonster.healthBar.currentFrame + ", (" + tmpMonster.hp + " / " + tmpMonster.chp + "), " + (100 * (tmpMonster.hp / tmpMonster.chp)))



				if (tmpMonster.hp <= 0) { //remove the monster if its hp becomes 0
					this.removeMonster(tmpMonster, i, ind, true)

					//trace(tmpMonster + ", " + monsters[i] + ", " + monsters.length)
				}
				//trace(ind + ", " + monsters[ind] + ", " + monsters.length)

				var countWater = 0
				var countBrick = 0
				var countMud = null
				var countMud1 = 0
				/*
				var test:TestBox = new TestBox
				test.x = 20
				test.y = 150
				main.addChild(test)
				if(tmpMonster.hitTestObject(test)){
					trace("TOUCH")
				}*/
				for (var i2 = 0; i2 < undetectableTiles.length; i2++) {
					var tileWater
					var tileMud
					var tileBrick
					var tile1 = undetectableTiles[i2]
					var mud
					if (undetectableTiles[i2].currentFrame == 4) {
						mud = undetectableTiles[i2]
					}
					if (tile1.currentFrame == 18) {
						tileWater = tile1
					} else if (tile1.currentFrame == 2) {
						tileMud = tile1
					} else {
						tileBrick = tile1
					}

					if (tileWater != null && tmpMonster.centerDetection.hitTestObject(tileWater)) {
						countWater++
					}
					if (tileMud != null && tmpMonster.centerDetection.hitTestObject(tileMud)) {
						countMud++
					}
					if (tileBrick != null && tmpMonster.centerDetection.hitTestObject(tileBrick)) {
						countBrick++
					}
				}

				if (tmpMonster.revealTime > 0) {
					tmpMonster.isDetectableNow = true
					tmpMonster.isHittableNow = true
					tmpMonster.gotoAndStop(1)
					tmpMonster.alpha = 1;
				} else if (countWater > 0 && isDetectable0 == false && revealTime < 0 && tmpMonster.reprogramMode <= 1 && tmpMonster.disabled == false) {
					tmpMonster.isDetectableNow = false
					tmpMonster.isHittableNow = false
					tmpMonster.gotoAndStop(2)
				} else if (countMud > 0 && isDetectable1 == false && hitMud == false && revealTime < 0 && tmpMonster.reprogramMode <= 1 && tmpMonster.disabled == false) {
					tmpMonster.isDetectableNow = false
					tmpMonster.isHittableNow = false
					tmpMonster.gotoAndStop(2)
				} else if (countBrick > 0) {
					tmpMonster.isDetectableNow = false
				} else if (tmpMonster.hiddenByDefault == true && tmpMonster.reprogramMode <= 1 && tmpMonster.disabled == false) {
					tmpMonster.isDetectableNow = false
					tmpMonster.isHittableNow = true
				} else if (tmpMonster.m20detection > 0) {
					tmpMonster.isDetectableNow = false
					tmpMonster.isHittableNow = true
					tmpMonster.alpha = 0.3;
				} else {
					tmpMonster.isDetectableNow = true
					tmpMonster.isHittableNow = true
					isDetectableNow = true
					tmpMonster.gotoAndStop(defaultFrame)
					tmpMonster.alpha = 1;
				}
				//trace(tmpMonster + ", " + tmpMonster.m20detection)



				for (var i3 = 0; i3 < goldTileList.length; i3++) {
					if (tmpMonster.hitTestObject(goldTileList[i3])) {
						tmpMonster.hp -= goldTileDamage[i3] * (1 - tmpMonster.magicResistance)
					}
				}

				for (var i4 = 0; i4 < stageObjects.length; i4++) {
					for (var i5 = 0; i5 < stageObjects[14].length; i5++) {
						if (stageObjects[i4][i5] != null && tmpMonster.hitTestObject(stageObjects[i4][i5])) {
							tmpMonster.hp -= stageObjects[i4][i5].damage;
						}
					}
				}

				//trace((spawnTimeMin % spawnTimeSet) + ", " + spawnTimeMin + ", " + spawnTimeSet)
				if (monsterSpawn != null && monsterSpawn != -1 && tmpMonster.reprogramMode <= 1 && tmpMonster.disabled == false) {
					spawnTimeMin += t * main.getFrameRate();
					if (spawnTimeMin > spawnTimeSet) {
						spawnTimeMin = 0;
						main.rm.createMonster(tmpMonster.monsterSpawn[Math.floor(Math.random() * tmpMonster.monsterSpawn.length)], null, tmpMonster.x, tmpMonster.y, tmpMonster.wPoint, tmpMonster.nextWayPoint, false, [tmpMonster.y, tmpMonster.x])
					}
				}



				//	trace(tmpMonster.isDetectableNow)
				m20detection = 0;

				tmpMonster.update(main, tmpMonster);


			}

		}

		public function setRevealTme(time: int = -1) {
			revealTime = time
		}

		public function boss10() {
			if (boss == 0) {

			}
		}

		public function hit(m) {
			if (m.hitEffect) {
				m.onHitEffect();
			}

		}

		public function removeMonster(monster, tmpMonster, ind, killed: Boolean) {
			var gotReward: Boolean = false
			for (var i1 = 0; i1 < goldTileList.length; i1++) {
				if (monsters[ind].hitTestObject(goldTileList[i1]) && gotReward == false) {
					main.currGold += Math.round(goldTileBonus[i1] * monster.gold)
					gotReward = true
				}
			}
			if (killed == true && gotGold == false) {
				main.currGold += monster.gold;
				monster.gotGold = true;
			}

			if (monster.onDeathBool) {
				monster.onDeath(main, monster, ind)
			} else {
				if (monsters[ind].thisLayer == 1) {
					main.monsterLayer1.removeChild(monsters[ind]);
				} else if (monsters[ind].thisLayer == 2) {
					main.monsterLayer2.removeChild(monsters[ind]);
				} else if (monsters[ind].thisLayer == 3) {
					main.monsterLayer3.removeChild(monsters[ind]);
				} else if (monsters[ind].thisLayer == 4) {
					main.monsterLayer4.removeChild(monsters[ind]);
				} else if (monsters[ind].thisLayer == 5) {
					main.monsterLayer5.removeChild(monsters[ind]);
				} else if (monsters[ind].thisLayer == 6) {
					main.monsterLayer6.removeChild(monsters[ind]);
				} else if (monsters[ind].thisLayer == 7) {
					main.monsterLayer7.removeChild(monsters[ind]);
				} else if (monsters[ind].thisLayer == 8) {
					main.monsterLayer8.removeChild(monsters[ind]);
				}
				main.monsters.splice(ind, 1)
				main.waypointData.splice(ind, 1)
			}


		}
		
		private function setProperties(){
			this.hp = setHp();
			this.chp = setHp();
			this.gold = setReward();
			this.movementSpeed = setMovementSpeed();
			this.resistance = setResistance();
			this.magicResistance = setMagicResistance();
			this.thisLayer = setThisLayer();
			if (setMonsterSpawn() != null) {
				monsterSpawn = setMonsterSpawn()[0];
				spawnTimeMin = setMonsterSpawn()[1] * main.getFrameRate();
				spawnTimeSet = setMonsterSpawn()[1] * main.getFrameRate();
			} else {
				monsterSpawn = null;
				spawnTimeMin = null;
				spawnTimeSet = null;
			}
			this.isDetectable = setIsDetectable();
			if(this.isDetectable != null){
				this.isDetectable0 = isDetectable[0];
				this.isDetectable1 = isDetectable[1];
			}
			this.healthBarY = setHealthBarY();
			this.robotType = setRobotType();
			this.removeLives = setRemoveLives();
			this.revealTime = setRevealTime();
			this.hitEffect = setHasHitEffect();
			this.defaultFrame = setDefaultFrame();
			this.hiddenByDefault = setHiddenByDefault();
			this.toughness = setToughness();
			this.protTier = setHackingDifficulty();
		}

		public function update(main, monster) {
			// Special specific monster update (on tick)
		}

		public function onBulletHit() {
			main.sounds.playSound(main.sounds.soundList.sound_robotHit);
		}



		public function setHp(hp: Number = 30) {
			return hp;
		}
		public function setReward(reward: int = 4) {
			return reward;
		}
		public function setMovementSpeed(movementSpeed: Number = 0.5) {
			return movementSpeed;
		}
		public function setResistance(resistance: Number = 0) {
			return resistance;
		}
		public function setMagicResistance(magicResistance: Number = 0) {
			return magicResistance;
		}
		public function setThisLayer(thisLayer: int = 6) {
			return thisLayer;
		}
		public function setMonsterSpawn(monsterSpawnOptions = null) { // [[<Monster>], <Time>]
			return monsterSpawnOptions;
		}
		public function setIsDetectable(isDetectable = null){
			return isDetectable;
		}
		public function setHealthBarY(healthBarY: Number = 12){
			return healthBarY;
		}
		public function setRobotType(robotType: String = "rover"){
			return robotType;
		}
		public function setRemoveLives(removeLives: int = 1){
			return removeLives;
		}
		public function setRevealTime(revealTime: int = -1){
			return revealTime;
		}
		public function setHasHitEffect(hasHitEffect: Boolean = false){
			return hasHitEffect;
		}
		public function setDefaultFrame(defaultFrame: int = 1){
			return defaultFrame;
		}
		public function setHiddenByDefault(hiddenByDefault: Boolean = false){
			return hiddenByDefault;
		}
		public function setToughness(toughness: Number = 1){
			return toughness;
		}
		public function setHackingDifficulty(hackingDifficulty: int = 1){
			return hackingDifficulty;
		}
		

	}
}