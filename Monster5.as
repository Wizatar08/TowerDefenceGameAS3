package {

	public class Monster5 extends Monster {
		private var nextWayPoint5: int = 0; //next point from which the monster should turn
		private var layer = 7
		private var hp5: int = 40; //HP of the monster
		private const chp5: int = 40; //HP of the monster
		private var gold5: int = 6; //reward for killing the monster
		private var movementSpeed5: Number = 0.5
		private const isDetectable5: Array = [false, true]
		private var isDetectableNow5: Boolean
		private const healthBarY5 = 12
		private const robotType5 = "rover"
		private var resistance5 = 0
		private var magicResistance5 = 0
		public function Monster5(m: Main) {
			super(m)

			hitBox.width = this.body5.width
			hitBox.height = this.body5.height
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body5.width
			monster.hitBox.height = this.body5.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp5;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold5;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed5;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable5;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY5;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType5;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance5;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance5;
		}


	}
}