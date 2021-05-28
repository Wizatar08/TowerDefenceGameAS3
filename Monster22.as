package {
	
	public class Monster22 extends Monster{
		private var nextWayPoint22:int = 0;   //next point from which the monster should turn
		private var layer = 6
		private var hp22:int = 400;            //HP of the monster
		private const chp22:int = 400;            //HP of the monster
		private var gold22:int = 15;          //reward for killing the monster
		private var movementSpeed22:Number = 0.5
		private const isDetectable22:Array = [true,true]
		private var isDetectableNow22:Boolean
		private const healthBarY22 = 10
		private const robotType22 = "rover"
		private var resistance22 = 0.2
		private var magicResistance22 = 0.4
		private var minusLives22 = 2
		private var hackingDifficulty22 = 3
		private var toughness22 = 2
		public function Monster22(m:Main){
			super(m)
			
			hitBox.width = this.body22.width
			hitBox.height = this.body22.height
		}
		
		override public function update(main, monster){
			monster.hitBox.width = this.body22.width
			monster.hitBox.height = this.body22.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp22;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold22;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed22;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable22;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY22;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType22;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance22;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty22;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance22;
		}
		override public function setToughness(toughness: Number = 1){
			return toughness22;
		}
		override public function setRemoveLives(removeLives: int = 1){
			return minusLives22;
		}
		
		
	}
}
