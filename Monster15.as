package {
	
	public class Monster15 extends Monster{
		private var nextWayPoint15:int = 0;   //next point from which the monster should turn
		private var layer = 6
		private var hp15:int = 120;            //HP of the monster
		private const chp15:int = 120;            //HP of the monster
		private var gold15:int = 13;          //reward for killing the monster
		private var movementSpeed15:Number = 0.5
		private const isDetectable15:Array = [true,true]
		private var isDetectableNow15:Boolean
		private const healthBarY15 = 10
		private const robotType15 = "rover"
		private var resistance15 = 0.35
		private var magicResistance15 = 0
		private var hackingDifficulty15 = 2
		private var toughness15 = 2
		public function Monster15(m:Main){
			super(m)
			
			hitBox.width = this.body15.width
			hitBox.height = this.body15.height
		}
		
		override public function update(main, monster){
			monster.hitBox.width = this.body15.width
			monster.hitBox.height = this.body15.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp15;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold15;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed15;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable15;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY15;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType15;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance15;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty15;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance15;
		}
		override public function setToughness(toughness: Number = 1){
			return toughness15;
		}
		
		
	}
}
