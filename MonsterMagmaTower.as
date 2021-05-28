package {

	public class MonsterMagmaTower extends Monster {
		private var nextWayPointMT: int = 0; //next point from which the monster should turn
		private var layer = 1
		private var hpMT: int = 2000; //HP of the monster
		private const chpMT: int = 2000; //HP of the monster
		private var goldMT: int = 1000; //reward for killing the monster
		private var movementSpeedMT: Number = 0
		private const isDetectableMT: Array = [true, true]
		private var isDetectableNowMT: Boolean
		private const healthBarYMT = 0
		private const robotTypeMT = "stationary"
		private var resistanceMT = 0.25
		private var magicResistanceMT = 0
		private var hackingDifficultyMT = 5
		private var hiddenDefault = false
		private var hitEffectMT = false

		public var hasUpdate = true;

		private var tick: Number
		public var effectTime: Number
		public var rand: Number
		public var minTime: int
		public var maxTime: int

		private var bm
		private var death: Boolean = false
		public function MonsterMagmaTower(m: Main) {
			super(m)
			tick = 0
			bm = m.bm
			this.onDeathBool = true;
			hitBox.width = this.bodymt.width
			hitBox.height = this.bodymt.height
		}

		override public function update(main, monster) {
			
			monster.hitBox.width = this.bodymt.width
			monster.hitBox.height = this.bodymt.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
			if(monster.outline.alpha >= 0 && death == false){
				monster.outline.alpha -= 1 * main.elapsedSeconds;
			}
			tick += main.elapsedSeconds * main.getFrameRate();
			if (tick > effectTime && main.towers.length > 0) {
				var ind = Math.floor(Math.random() * main.towers.length)
				var tower = main.towers[ind]
				var angle = Math.atan2(tower.y - this.y + 90.7, tower.x - this.x + 19.1)
				var laser = new MTLaser(main, angle, tower, ind, 200);
				laser.x = this.x - 19.1;
				laser.y = this.y - 90.7;
				main.addChild(laser)
				main.robotProjectiles.push(laser);
				tick = 0;
				effectTime = main.getMinMaxRand(minTime, maxTime) * main.getFrameRate();
			}

		}

		public function onHitEffect() {}

		public function onDeath(main, monster, ind) {
			death = true;
			monster.outline.alpha += 1 * main.elapsedSeconds;
			if (monster.outline.alpha >= 1) {
				monster.alpha -= 0.5 * main.elapsedSeconds;
				if (monster.alpha <= 0) {
					main.monsters.splice(ind, 1)
					main.waypointData.splice(ind, 1)
					main.removeChild(monster)
				}
			}
		}
		
		override public function setHp(hp: Number = 30){
			return hpMT;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return goldMT;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeedMT;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectableMT;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarYMT;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotTypeMT;
		}
		override public function setResistance(resistance:Number = 0){
			return resistanceMT;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficultyMT;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistanceMT;
		}
		override public function setHasHitEffect(hasHitEffect:Boolean = false){
			return hitEffectMT;
		}


	}
}