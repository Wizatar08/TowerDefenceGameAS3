package {

	public class Monster6 extends Monster {
		private var nextWayPoint6: int = 0; //next point from which the monster should turn
		private var layer = 5
		private var hp6: int = 600; //HP of the monster
		private const chp6: int = 600; //HP of the monster
		private var gold6: int = 150; //reward for killing the monster
		private var movementSpeed6: Number = 0.2
		private const isDetectable6: Array = [true, true]
		private var isDetectableNow6: Boolean
		private const healthBarY6 = 3
		private const robotType6 = "rover"
		private var resistance6 = 0.5
		private var magicResistance6 = 0.5
		private var minusLives6 = 3
		private var toughness6 = 5
		private var hackingDifficulty6 = 4
		public function Monster6(m: Main) {
			super(m)

			hitBox.width = this.body6.width
			hitBox.height = this.body6.height
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body6.width
			monster.hitBox.height = this.body6.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp6;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold6;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed6;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable6;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY6;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType6;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance6;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance6;
		}
		override public function setRemoveLives(removeLives: int = 1){
			return minusLives6;
		}
		override public function setToughness(toughness: Number = 1){
			return toughness6;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty6;
		}


	}
}