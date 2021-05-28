package {

	public class BulletManager {
		private var main

		public function BulletManager(m) {
			main = m
		}

		public function update(t) {
			for (var k: int = 0; k < main.bullets.length; ++k) { //update all bullets
				if (!main.bullets[k].remove && main.bullets[k].timer > 0) {
					main.bullets[k].update(t);
					if (main.bullets[k].x < -20 ||
						main.bullets[k].x > 500 ||
						main.bullets[k].y < -20 ||
						main.bullets[k].y > 500) {
							main.projLayer.removeChild(main.bullets[k])
							main.bullets.splice(k, 1)
					}
				} else {
					main.projLayer.removeChild(main.bullets[k]);
					main.bullets.splice(k, 1);
				}
			}


		}

	}

}