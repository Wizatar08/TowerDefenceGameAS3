package  {
	import flash.display.MovieClip;
	
	public class MTLaser extends MovieClip {
		private var main
		private var Lspeed
		private var Langle
		private var target
		private var targetInd

		public function MTLaser(m,angle,tower,towerInd,speed) {
			main = m
			Lspeed = speed
			Langle = angle
			target = tower
			targetInd = towerInd
			trace(target)
			
		}
		
		public function update(t, ind){
			this.x += Math.cos(Langle) * Lspeed * t
			this.y += Math.sin(Langle) * Lspeed * t
			
			if(this.hitTestObject(target)){
				main.removeChild(this);
				main.robotProjectiles.splice(ind, 1);
				main.bm.destroyTower(2, targetInd);
			}
		}

	}
	
}
