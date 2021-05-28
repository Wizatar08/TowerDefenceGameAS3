package {

	public class Monster4 extends Monster {
		private var nextWayPoint4: int = 0; //next point from which the monster should turn
		private var layer = 7
		private var hp4: int = 20; //HP of the monster
		private const chp4: int = 20; //HP of the monster
		private var gold4: int = 3; //reward for killing the monster
		private var movementSpeed4: Number = 1
		private const isDetectable4: Array = [true, true]
		private var isDetectableNow4: Boolean
		private const healthBarY4 = 17
		private const robotType4 = "rover"
		private var resistance4 = 0
		private var magicResistance4 = 0.3
		public function Monster4(m: Main) {
			super(m)

			hitBox.width = this.body4.width
			hitBox.height = this.body4.height
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body4.width
			monster.hitBox.height = this.body4.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp4;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold4;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed4;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable4;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY4;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType4;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance4;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance4;
		}


	}
}