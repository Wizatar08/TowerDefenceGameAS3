package {
	
	public class Monster19 extends Monster{
		private var nextWayPoint19:int = 0;   //next point from which the monster should turn
		private var layer = 7
		private var hp19:int = 80;            //HP of the monster
		private const chp19:int = 80;            //HP of the monster
		private var gold19:int = 5;          //reward for killing the monster
		private var movementSpeed19:Number = 0.75
		private const isDetectable19:Array = [true,true]
		private var isDetectableNow19:Boolean
		private const healthBarY19 = 17
		private const robotType19 = "rover"
		private var resistance19 = 0
		private var magicResistance19 = 0.3
		private var hiddenDefault = false
		public function Monster19(m:Main){
			super(m)
			
			hitBox.width = this.body19.width
			hitBox.height = this.body19.height
		}
		
		public function onHitEffect(){
			
		}
		
		override public function update(main, monster){
			monster.hitBox.width = this.body19.width
			monster.hitBox.height = this.body19.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
			var count = 0;
			for(var i = 0; i < main.stageObjects.length; i++){
				for(var j = 0; j < main.stageObjects[i].length; j++){
					if(main.stageObjects[i][j].currentFrame == 99){
						if(monster.hitTestObject(main.stageObjects[i][j])){
							count++;
						}
					}
				}
			}
			if(count > 0){
				monster.movementSpeed = 3
				monster.gotoAndStop(2)
			} else {
				monster.movementSpeed = 0.75
				monster.gotoAndStop(1)
			}
		}
		
		override public function setHp(hp: Number = 30){
			return hp19;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold19;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed19;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable19;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY19;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType19;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance19;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance19;
		}
		
		
	}
}
