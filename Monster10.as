package {

	public class Monster10 extends Monster {
		private var nextWayPoint10: int = 0; //next point from which the monster should turn
		private var layer = 6
		private var hp10: int = 65; //HP of the monster
		private const chp10: int = 65; //HP of the monster
		private var gold10: int = 7; //reward for killing the monster
		private var movementSpeed10: Number = 0.4
		private const isDetectable10: Array = [true, false]
		private var isDetectableNow10: Boolean
		private const healthBarY10 = 0
		private const robotType10 = "rover"
		private var resistance10 = 0
		private var magicResistance10 = 0
		public function Monster10(m: Main) {
			super(m)

			hitBox.width = this.body10.width
			hitBox.height = this.body10.height
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body10.width
			monster.hitBox.height = this.body10.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp10;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold10;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed10;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable10;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY10;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType10;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance10;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance10;
		}


	}
}