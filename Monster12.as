package {

	public class Monster12 extends Monster {
		private var nextWayPoint12: int = 0; //next point from which the monster should turn
		private var layer = 3
		private var hp12: int = 1000; //HP of the monster
		private const chp12: int = 1000; //HP of the monster
		private var gold12: int = 350; //reward for killing the monster
		private var movementSpeed12: Number = 0.25
		private const isDetectable12: Array = [true, true]
		private var isDetectableNow12: Boolean
		private const healthBarY12 = 0
		private const robotType12 = "drone"
		private var resistance12 = 0.1
		private var magicResistance12 = 0.3
		private var monsterSpawnSet12 = 5
		private var monsterSpawnRobot12 = [4]
		private var minusLives12 = 4
		private var hackingDifficulty12 = 4
		public function Monster12(m: Main) {
			super(m)

			hitBox.width = this.body12.width
			hitBox.height = this.body12.height
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body12.width
			monster.hitBox.height = this.body12.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp12;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold12;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed12;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable12;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY12;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType12;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance12;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance12;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty12;
		}
		override public function setRemoveLives(minusLives: int = 1){
			return minusLives12;
		}
		override public function setMonsterSpawn(monsterSpawnOptions = null){
			return [monsterSpawnRobot12, monsterSpawnSet12];
		}


	}
}