package {
	
	public class Monster16 extends Monster{
		private var nextWayPoint16:int = 0;   //next point from which the monster should turn
		private var layer = 6
		private var hp16:int = 150;            //HP of the monster
		private const chp16:int = 150;            //HP of the monster
		private var gold16:int = 17;          //reward for killing the monster
		private var movementSpeed16:Number = 0.7
		private const isDetectable16:Array = [true,true]
		private var isDetectableNow16:Boolean
		private const healthBarY16 = 10
		private const robotType16 = "rover"
		private var resistance16 = 0.15
		private var magicResistance16 = 0.3
		private var toughness16 = 2
		private var hackingDifficulty16 = 3
		public function Monster16(m:Main){
			super(m)
			
			hitBox.width = this.body16.width
			hitBox.height = this.body16.height
		}
		
		override public function update(main, monster){
			monster.hitBox.width = this.body16.width
			monster.hitBox.height = this.body16.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp16;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold16;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed16;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable16;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY16;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType16;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance16;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty16;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance16;
		}
		override public function setToughness(toughness: Number = 1){
			return toughness16;
		}
		
		
	}
}
