package {
	
	public class Monster18 extends Monster{
		private var nextWayPoint18:int = 0;   //next point from which the monster should turn
		private var layer = 6
		private var hp18:int = 150;            //HP of the monster
		private const chp18:int = 150;            //HP of the monster
		private var gold18:int = 4;          //reward for killing the monster
		private var movementSpeed18:Number = 0.3
		private const isDetectable18:Array = [true,true]
		private var isDetectableNow18:Boolean
		private const healthBarY18 = 10
		private const robotType18 = "rover"
		private var resistance18 = 0
		private var magicResistance18 = 0.3
		private var hackingDifficulty18 = 0.3
		private var hiddenDefault = false
		private var hitEffect18 = true
		public function Monster18(m:Main){
			super(m)
			this.weights.gotoAndStop(1)
			hitBox.width = this.body18.width
			hitBox.height = this.body18.height
		}
		
		public function onHitEffect(){
			
		}
		
		override public function update(main, monster){
			monster.hitBox.width = this.body18.width
			monster.hitBox.height = this.body18.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
			if(monster.hp > 120){
				monster.weights.gotoAndStop(1)
				monster.movementSpeed = 0.3
				monster.removeLives = 4
			} else if(monster.hp <= 120 && monster.hp > 90){
				monster.weights.gotoAndStop(2)
				monster.movementSpeed = 0.65
				monster.removeLives = 3
			} else if(monster.hp <= 90 && monster.hp > 60){
				monster.weights.gotoAndStop(3)
				monster.movementSpeed = 1
				monster.removeLives = 2
			} else if(monster.hp <= 60){
				monster.weights.gotoAndStop(4)
				monster.movementSpeed = 1.5;
				monster.removeLives = 1
			}
		}
		
		override public function setHp(hp: Number = 30){
			return hp18;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold18;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed18;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable18;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY18;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType18;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance18;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty18;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance18;
		}
		override public function setHasHitEffect(hasHitEffect: Boolean = false){
			return hitEffect18;
		}
		
		
	}
}
