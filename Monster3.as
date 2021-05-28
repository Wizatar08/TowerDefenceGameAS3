package {

	public class Monster3 extends Monster {
		private var nextWayPoint3: int = 0; //next point from which the monster should turn
		private var layer = 6
		private var hp3: int = 100; //HP of the monster
		private const chp3: int = 100; //HP of the monster
		private var gold3: int = 10; //reward for killing the monster
		private var movementSpeed3: Number = 0.4
		private const isDetectable3: Array = [true, true]
		private var isDetectableNow3: Boolean
		private const healthBarY3 = 10
		private const robotType3 = "rover"
		private var resistance3 = 0.2
		private var magicResistance3 = 0.1
		private var toughness3 = 2
		private var hackingDifficulty3 = 2
		public function Monster3(m: Main) {
			super(m)

			hitBox.width = this.body3.width
			hitBox.height = this.body3.height

		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body3.width
			monster.hitBox.height = this.body3.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp3;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold3;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed3;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable3;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY3;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType3;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance3;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance3;
		}
		override public function setToughness(toughness: Number = 1){
			return toughness3;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty3;
		}


	}
}