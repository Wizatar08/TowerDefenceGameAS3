package {

	public class Monster20 extends Monster {
		private var nextWayPoint20: int = 0; //next point from which the monster should turn
		private var layer = 5
		private var hp20: int = 300; //HP of the monster
		private const chp20: int = 300; //HP of the monster
		private var gold20: int = 12; //reward for killing the monster
		private var movementSpeed20: Number = 0.5
		private const isDetectable20: Array = [true, true]
		private var isDetectableNow20: Boolean
		private const healthBarY20 = 10
		private const robotType20 = "rover"
		private var resistance20 = 0.1
		private var magicResistance20 = 0.5
		private var hackingDifficulty20 = 2
		private var toughness20 = 2
		private var hiddenDefault = false

		private var timeMin
		private var timeMax
		private var mtime
		private var hiddenFeature
		public function Monster20(m: Main) {
			super(m)
			timeMin = 5 * m.getFrameRate()
			timeMax = 10 * m.getFrameRate();
			mtime = m.getMinMaxRand(timeMin, timeMax);
			hiddenFeature = false;
			hitBox.width = this.body20.width
			hitBox.height = this.body20.height
		}

		public function onHitEffect() {

		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body20.width
			monster.hitBox.height = this.body20.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
			monster.mtime -= main.getFrameRate() * main.elapsedSeconds;
			//trace(monster.hiddenFeature + ", " + monster.mtime)
			if (monster.mtime <= 0 && monster.reprogramMode <= 1 && monster.disabled == false) {
				if (monster.hiddenFeature == false) {
					monster.hiddenFeature = true
					monster.mtime = 5 * main.getFrameRate()
					monster.gotoAndStop(2)
				} else if (monster.hiddenFeature == true) {
					monster.hiddenFeature = false
					monster.mtime = main.getMinMaxRand(timeMin, timeMax)
					monster.gotoAndStop(1)
				}
			} else if (monster.reprogramMode > 1 && monster.disabled == false) {
				monster.hiddenFeature = false
				monster.mtime = main.getMinMaxRand(timeMin, timeMax)
				monster.gotoAndStop(1)
			}

			if (monster.hiddenFeature == true && monster.reprogramMode <= 1 && monster.disabled == false) {
				for (var i = 0; i < main.monsters.length; i++) {
					var a = main.monsters[i].x - monster.x
					var b = main.monsters[i].y - monster.y
					var h = Math.sqrt((a * a) + (b * b))
					if (h < 75) {
						main.monsters[i].m20detection++;
					}
				}
			}

		}
		
		override public function setHp(hp: Number = 30){
			return hp20;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold20;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed20;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable20;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY20;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType20;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance20;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty20;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance20;
		}
		override public function setToughness(toughness: Number = 1){
			return toughness20;
		}


	}
}