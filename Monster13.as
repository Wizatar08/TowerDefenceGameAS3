package {
	
	public class Monster13 extends Monster{
		private var nextWayPoint13:int = 0;   //next point from which the monster should turn
		private var layer = 7
		private var hp13:int = 350;            //HP of the monster
		private const chp13:int = 350;            //HP of the monster
		private var gold13:int = 10;          //reward for killing the monster
		private var movementSpeed13:Number = 0.6
		private const isDetectable13:Array = [true,true]
		private var isDetectableNow13:Boolean
		private const healthBarY13 = 0
		private const robotType13 = "rover"
		private var resistance13 = 0.2
		private var magicResistance13 = 0.2
		private var hackingDifficulty13 = 3
		public function Monster13(m:Main){
			super(m)
			
			hitBox.width = this.body13.width
			hitBox.height = this.body13.height
		}
		
		override public function update(main, monster){
			monster.hitBox.width = this.body13.width
			monster.hitBox.height = this.body13.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp13;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold13;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed13;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable13;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY13;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType13;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance13;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance13;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty13;
		}
		
		
	}
}