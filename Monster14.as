package {
	
	public class Monster14 extends Monster{
		private var nextWayPoint14:int = 0;   //next point from which the monster should turn
		private var layer = 6
		private var hp14:int = 70;            //HP of the monster
		private const chp14:int = 70;            //HP of the monster
		private var gold14:int = 7;          //reward for killing the monster
		private var movementSpeed14:Number = 0.4
		private const isDetectable14:Array = [true,true]
		private var isDetectableNow14:Boolean
		private const healthBarY14 = 10
		private const robotType14 = "rover"
		private var resistance14 = 0
		private var magicResistance14 = 0.2
		public function Monster14(m:Main){
			super(m)
			
			hitBox.width = this.body14.width
			hitBox.height = this.body14.height
		}
		
		override public function update(main, monster){
			monster.hitBox.width = this.body14.width
			monster.hitBox.height = this.body14.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp14;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold14;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed14;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable14;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY14;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType14;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance14;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance14;
		}
		
		
	}
}
