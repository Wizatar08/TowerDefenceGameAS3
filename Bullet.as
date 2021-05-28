package {
	import flash.display.MovieClip;

	public class Bullet extends MovieClip {
		var speed: int; //speed of the bullet
		var Target; //target of the bullet
		var angle: Number; //angle of the bullet
		var remove: Boolean; //true if bullet should be removed
		var damage
		var main: Main
		var monsterList
		public var timer
		

		//this function rotates the bullet
		public function Bullet(m, rotate: Number, tmpMonster, damageDealt: Number, sp: int) {
			angle = rotate;
			Target = tmpMonster;
			this.rotation = angle / Math.PI * 180; //rotate the bullet
			damage = damageDealt
			main = m
			monsterList = main.getMonsters()
			timer = main.getFrameRate()
			speed = sp
		}

		//this function will update a bullet(using a loop we can update all bullets)
		public function update(t) {
			this.x += this.speed * Math.cos(angle) * t * 24;
			this.y += this.speed * Math.sin(angle) * t * 24;
			for (var i = 0; i < monsterList.length; i++) {
				if (this.hitTestObject(monsterList[i].hitBox)) { // if bullet hits the target
					if (monsterList[i].isHittableNow == true) { // check if monster is detectable
						monsterList[i].onBulletHit();
						monsterList[i].hp -= damage * (1 - monsterList[i].resistance); //reduce hp
						remove = true; //remove the bullet
						monsterList[i].hit(monsterList[i]);
					}

				}
			}
			timer -= t * 24
		}
	}
}