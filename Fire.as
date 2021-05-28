package {
	import flash.display.MovieClip;

	public class Fire extends MovieClip {
		var speed: int; //speed of the bullet
		var damagesRobots; //target of the bullet
		var angle: Number; //angle of the bullet
		var remove: Boolean; //true if bullet should be removed
		var damage: Number
		var main: Main
		var monsterList
		public var timer
		var sDamage

		//this function rotates the bullet
		public function Fire(m, rotate: Number, damagesMonsters:Boolean, damageDealt: Number, sp: int, time: Number, scorchDamage: Number) {
			angle = rotate;
			damagesRobots = damagesMonsters;
			this.rotation = angle / Math.PI * 180; //rotate the bullet
			main = m
			damage = damageDealt / main.getFrameRate()
			monsterList = main.getMonsters()
			timer = time * main.getFrameRate()
			speed = sp
			sDamage = scorchDamage;
		}

		//this function will update a bullet(using a loop we can update all bullets)
		public function update(t) {
			this.x += this.speed * Math.cos(angle) * t * 24;
			this.y += this.speed * Math.sin(angle) * t * 24;
			for (var i = 0; i < monsterList.length; i++) {
				if (this.hitTestObject(monsterList[i]) && damagesRobots == true) { // if bullet hits the target
					if (monsterList[i].isDetectableNow == true) { // check if monster is detectable
						monsterList[i].hp -= damage * (1 - monsterList[i].resistance); //reduce hp
						monsterList[i].hit(monsterList[i]);
					}
				}
			}
			for(var j = 0; j < main.stageObjects.length; j++){
				for(var k = 0; k < main.stageObjects[j].length; k++){
					var tile = main.stageObjects[j][k]
					if(this.hitTestObject(tile) && damagesRobots == true){
						var hitTile = tile
						if(hitTile.currentFrame == 96){
							main.scorchedTilesPos.push([hitTile.x, hitTile.y])
							main.scorchedTilesTime.push(3 * main.getFrameRate())
							var frame = hitTile.tile.currentFrame;
							hitTile.gotoAndStop(234)
							hitTile.tile.gotoAndStop(frame)
							hitTile.damage = sDamage / main.getFrameRate();
						}
					}
				}
			}
			timer -= t * main.getFrameRate();
		}
	}
}