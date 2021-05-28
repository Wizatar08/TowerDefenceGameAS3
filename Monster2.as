package {

	public class Monster2 extends Monster {
		private var nextWayPoint2: int = 0; //next point from which the monster should turn
		private var layer = 6
		private var hp2: int = 50; //HP of the monster, 50
		private const chp2: int = 50; //HP of the monster, 50
		private var gold2: int = 7; //reward for killing the monster
		private var movementSpeed2: Number = 0.5
		private const isDetectable2: Array = [true, true]
		private var isDetectableNow2: Boolean
		private const healthBarY2 = 12
		private const robotType2 = "rover"
		private var resistance2 = 0
		private var magicResistance2 = 0
		public function Monster2(m: Main) {
			super(m)

			hitBox.width = this.body2.width
			hitBox.height = this.body2.height
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body2.width
			monster.hitBox.height = this.body2.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp2;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold2;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed2;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable2;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY2;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType2;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance2;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance2;
		}


	}
}