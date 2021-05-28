package {

	public class Monster8 extends Monster {
		private var nextWayPoint8: int = 0; //next point from which the monster should turn
		private var layer = 6
		private var hp8: int = 150; //HP of the monster
		private const chp8: int = 150; //HP of the monster
		private var gold8: int = 13; //reward for killing the monster
		private var movementSpeed8: Number = 0.6
		private const isDetectable8: Array = [true, true]
		private var isDetectableNow8: Boolean
		private const healthBarY8 = 10
		private const robotType8 = "rover"
		private var resistance8 = 0.4
		private var magicResistance8 = 0.3
		private var minusLives8 = 2
		private var hackingDifficulty8 = 2
		public function Monster8(m: Main) {
			super(m)

			hitBox.width = this.body8.width
			hitBox.height = this.body8.height
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body8.width
			monster.hitBox.height = this.body8.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp8;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold8;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed8;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable8;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY8;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType8;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance8;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance8;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty8;
		}
		override public function setRemoveLives(removeLives: int = 1){
			return minusLives8;
		}


	}
}