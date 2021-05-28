package {

	public class Monster7 extends Monster {
		private var nextWayPoint7: int = 0; //next point from which the monster should turn
		private var layer = 7
		private var hp7: int = 70; //HP of the monster
		private const chp7: int = 70; //HP of the monster
		private var gold7: int = 10; //reward for killing the monster
		private var movementSpeed7: Number = 0.6
		private const isDetectable7: Array = [false, true]
		private var isDetectableNow7: Boolean
		private const healthBarY7 = 3
		private const robotType7 = "rover"
		private var resistance7 = 0.3
		private var magicResistance7 = 0.2
		private var minusLives7 = 2
		private var hackingDifficulty7 = 2
		public function Monster7(m: Main) {
			super(m)

			hitBox.width = this.body7.width
			hitBox.height = this.body7.height
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body7.width
			monster.hitBox.height = this.body7.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp7;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold7;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed7;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable7;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY7;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType7;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance7;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance7;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty7;
		}
		override public function setRemoveLives(removeLives: int = 1){
			return minusLives7;
		}


	}
}