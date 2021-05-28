package {
	
	public class Boss10 extends Monster{
		private var nextWayPointB10:int = 0;   //next point from which the monster should turn
		private var layer = 1
		private var hpB10:int = 2000;            //HP of the monster
		private const chpB10:int = 2000;            //HP of the monster
		private var goldB10:int = 0;          //reward for killing the monster
		public var movementSpeedB10:Number = 0
		private const isDetectableB10:Array = [true,true]
		private var isDetectableNowB10:Boolean
		private const healthBarYB10 = 0
		private const robotTypeB10 = "rover"
		private var resistanceB10 = 0.4
		private var magicResistanceB10 = 0.75
		private var minusLivesB10 = 10000
		private var toughnessB10 = 50
		private var hackingDifficultyB10 = 5
		public function Boss10(m:Main){
			super(m)
			
		}
		
		override public function setHp(hp: Number = 30){
			return hpB10;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return goldB10;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeedB10;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectableB10;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarYB10;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotTypeB10;
		}
		override public function setResistance(resistance:Number = 0){
			return resistanceB10;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficultyB10;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistanceB10;
		}
		override public function setToughness(toughness: Number = 1){
			return toughnessB10;
		}
		override public function setRemoveLives(removeLives: int = 1){
			return minusLivesB10;
		}
		
		
	}
}