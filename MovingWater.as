package {
	import flash.display.MovieClip;

	public class MovingWater extends MovieClip {
		var speed: int = 7; //speed of the bullet
		var Target; //target of the bullet
		var angle: Number; //angle of the bullet
		var remove: Boolean; //true if bullet should be removed
		var damage
		var tower
		public var timer

		//this function rotates the bullet
		public function MovingWater(rotate: Number, tmpMonster, damageDealt: int, to) {
			angle = rotate;
			Target = tmpMonster;
			this.rotation = angle / Math.PI * 180; //rotate the bullet
			damage = damageDealt
			tower = to
			timer = 48;
		}

		//this function will update a bullet(using a loop we can update all bullets)
		public function update(ti) {
			this.x += this.speed * Math.cos(angle) * ti * stage.frameRate;
			this.y += this.speed * Math.sin(angle) * ti * stage.frameRate;

			if (this.hitTestObject(Target.hitBox)) { // if bullet hits the target
				if ((Target == "[object Monster7]" && tower == "[object Hydrojetter]") || timer < 0) {
					remove = true; //remove the bullet
				} else {
					Target.onBulletHit();
					Target.hp -= damage; //reduce hp
					remove = true; //remove the bullet
					Target.hit(Target)
				}

			}
			
			timer -= 1
		}
	}
}