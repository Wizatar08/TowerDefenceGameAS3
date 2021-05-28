package {
	import flash.display.MovieClip;

	public class BuildExplosion1 extends MovieClip {
		private var main
		private var destroyedTower
		private var index
		private var bm

		public function BuildExplosion1(builds, m, tower, ind) {
			main = m
			destroyedTower = tower
			index = ind
			bm = builds
		}

		public function update() {
			if (this.destroy != null && this.destroy.hitTestObject(destroyedTower)) {
				main.removeChild(destroyedTower)
				main.towers.splice(index, 1)
				for (var k = 0; k < main.nonPlacableTiles.length; k++) {
					if(this.destroy.hitTestObject(main.nonPlacableTiles[k])){
						main.nonPlacableTiles.splice(k,1)
					}
				}
			}
		}

	}
}