package {

	public class Monster11 extends Monster {
		private var nextWayPoint11: int = 0; //next point from which the monster should turn
		private var layer = 4
		private var hp11: int = 65; //HP of the monster
		private const chp11: int = 65; //HP of the monster
		private var gold11: int = 9; //reward for killing the monster
		private var movementSpeed11: Number = 0.4
		private const isDetectable11: Array = [true, true]
		private var isDetectableNow11: Boolean
		private const healthBarY11 = 0
		private const robotType11 = "drone"
		private var resistance11 = 0.9
		private var magicResistance11 = -4
		private var hackingDifficulty11 = 2
		private var minusLives11 = 3
		public function Monster11(m: Main) {
			super(m)

			hitBox.width = this.body11.width
			hitBox.height = this.body11.height
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body11.width
			monster.hitBox.height = this.body11.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp11;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold11;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed11;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable11;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY11;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType11;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance11;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance11;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty11;
		}
		override public function setRemoveLives(removeLives: int = 1){
			return minusLives11;
		}


	}
}