package {

	public class Monster9 extends Monster {
		private var nextWayPoint9: int = 0; //next point from which the monster should turn
		private var layer = 4
		private var hp9: int = 80; //HP of the monster
		private const chp9: int = 80; //HP of the monster
		private var gold9: int = 7; //reward for killing the monster
		private var movementSpeed9: Number = 0.4
		private const isDetectable9: Array = [true, true]
		private var isDetectableNow9: Boolean
		private const healthBarY9 = 0
		private const robotType9 = "drone"
		private var resistance9 = 0
		private var magicResistance9 = 0
		public function Monster9(m: Main) {
			super(m)

			hitBox.width = this.body9.width
			hitBox.height = this.body9.height
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body9.width
			monster.hitBox.height = this.body9.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp9;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold9;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed9;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable9;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY9;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType9;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance9;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance9;
		}


	}
}