package {
	import flash.display.MovieClip;

	public class Bomb extends MovieClip {
		var speed: Number = 2; //speed of the bullet
		var Target; //target of the bullet
		var angle: Number; //angle of the bullet
		var remove: Boolean; //true if bullet should be removed
		var damageSpread: int
		var fuze: Number
		var hit: Boolean
		var monsterList
		var main: Main
		var timer
		var frameChange
		var changedFrame:Boolean

		//this function rotates the bullet
		public function Bomb(m, rotate: Number, tmpMonster, damageDealt: Number, fuzeTime, bSpeed: Number = 2) {
			main = m
			angle = rotate;
			Target = tmpMonster;
			this.rotation = angle / Math.PI * 180; //rotate the bullet
			damageSpread = damageDealt
			fuze = fuzeTime
			gotoAndStop(1)
			hit = false
			monsterList = main.getMonsters()
			timer = 2 * main.getFrameRate()
			frameChange = 0;
			changedFrame = false;
			speed = bSpeed
			//speed /= (main.getFrameRate() / 24)
		}

		//this function will update a bullet(using a loop we can update all bullets)
		public function update(t) {
			this.x += this.speed * Math.cos(angle) * t * 24;
			this.y += this.speed * Math.sin(angle) * t * 24;

			fuze -= t * 24
			timer -= t * 24
			if (fuze <= 0 && fuze >= -100 && changedFrame == false) {
				this.gotoAndPlay(2);
				changedFrame = true;
			} else if (fuze < -100) {
				for (var i = 0; i < monsterList.length; i++) {
					if (this.hitTestObject(monsterList[i].hitBox) && hit == false) {
						this.gotoAndPlay(2)
						hit = true
					}
				}

			}
			if (currentFrame >= 10 || timer <= 0) {
				remove = true
			}
		}
	}
}