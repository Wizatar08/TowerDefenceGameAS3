package {

	public class Monster17 extends Monster {
		private var nextWayPoint17: int = 0; //next point from which the monster should turn
		private var layer = 6
		private var hp17: int = 60; //HP of the monster
		private const chp17: int = 60; //HP of the monster
		private var gold17: int = 6; //reward for killing the monster
		private var movementSpeed17: Number = 0.55
		private const isDetectable17: Array = [true, true]
		private var isDetectableNow17: Boolean
		private const healthBarY17 = 10
		private const robotType17 = "rover"
		private var resistance17 = 0.1
		private var magicResistance17 = 0.1
		private var hackingDifficulty17 = 2
		private var hiddenDefault17 = true
		private var hitEffect17 = true
		public function Monster17(m: Main) {
			super(m)

			hitBox.width = this.body17.width
			hitBox.height = this.body17.height
		}

		public function onHitEffect() {
			gotoAndStop(2)
			this.defaultFrame = 2
			this.hiddenByDefault = false
		}

		override public function update(main, monster) {
			monster.hitBox.width = this.body17.width
			monster.hitBox.height = this.body17.height
			monster.hitBox.x = 0
			monster.hitBox.y = 0
		}
		
		override public function setHp(hp: Number = 30){
			return hp17;
		}
		override public function setThisLayer(thisLayer:int = 6){
			return layer;
		}
		override public function setReward(reward:int = 4){
			return gold17;
		}
		override public function setMovementSpeed(movementSpeed:Number = 0.5){
			return movementSpeed17;
		}
		override public function setIsDetectable(isDetectable = null){
			return isDetectable17;
		}
		override public function setHealthBarY(healthBarY:Number = 12){
			return healthBarY17;
		}
		override public function setRobotType(robotType:String = "rover"){
			return robotType17;
		}
		override public function setResistance(resistance:Number = 0){
			return resistance17;
		}
		override public function setHackingDifficulty(hackingDifficulty:int = 1){
			return hackingDifficulty17;
		}
		override public function setMagicResistance(magicResistance:Number = 0){
			return magicResistance17;
		}
		override public function setHiddenByDefault(hiddenByDefault:Boolean = false){
			return hiddenDefault17;
		}
		override public function setHasHitEffect(hasHitEffect: Boolean = false){
			return hitEffect17;
		}


	}
}