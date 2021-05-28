package {
	
	public class Monster21 extends Monster{
		private var nextWayPoint21:int = 0;   //next point from which the monster should turn
		private var layer = 4
		private var hp21:int = 2500;            //HP of the monster
		private const chp21:int = 2500;            //HP of the monster
		private var gold21:int = 350;          //reward for killing the monster
		private var movementSpeed21:Number = 0.2
		private const isDetectable21:Array = [true,true]
		private var isDetectableNow21:Boolean
		private const healthBarY21 = 0
		private const robotType21 = "rover"
		private var resistance21 = 0.25
		private var magicResistance21 = 0
		private var monsterSpawnSet21 = 5
		private var hackingDifficulty21 = 4
		private var toughness21 = 10
		private var monsterSpawnRobot21 = [18, 19];
		private var minusLives21 = 5
		public function Monster21(m:Main){
			super(m)
			
			hitBox.width = this.body21.width
			hitBox.height = this.body21.height
		}
		
		override public function update(main, monster){
			monster.hitBox.width = this.body21.width
			monster.hitBox.height = this.body21.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp21;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold21;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed21;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable21;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY21;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType21;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance21;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty21;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance21;
		}
		override public function setToughness(toughness: Number = 1){
			return toughness21;
		}
		override public function setMonsterSpawn(monsterSpawnOptions = null){
			return [monsterSpawnRobot21, monsterSpawnSet21];
		}
		override public function setRemoveLives(removeLives: int = 1){
			return minusLives21;
		}
		
		
	}
}