package  {
	import flash.display.MovieClip;
	
	public class BurningSulfur extends MovieClip {
		private var main
		public var tick
		private var xMove
		private var yMove
		private var angle
		private var speed
		public var concentration
		public var fogAlpha

		public function BurningSulfur(m,frame,diam,xPos,yPos,a,s,concent) {
			main = m
			this.gotoAndStop(frame)
			this.alpha = 0
			this.x = xPos
			this.y = yPos
			angle = a
			speed = s * 24 / main.getFrameRate()
			concentration = concent
			if(concent == 1/2){
				fogAlpha = 0.5
			} else if (concent == 1/3){
				fogAlpha = 0.6
			} else if(concent == 1/4){
				fogAlpha = 0.7
			} else if(concent == 1/5){
				fogAlpha = 0.8
			}
			tick = 3 * main.getFrameRate()
			var currWidth = this.width
			var currHeight = this.height
			if(diam == 1){
				this.width = 1.25 * currWidth
				this.height = 1.25 * currHeight
				tick = 4 * main.getFrameRate()
			} else if(diam == 2){
				this.width = 1.5 * currWidth
				this.height = 1.5 * currHeight
				tick = 5 * main.getFrameRate()
			} else if(diam == 3){
				this.width = 2 * currWidth
				this.height = 2 * currHeight
				tick = 7 * main.getFrameRate()
			}
		}
		
		public function update(t){
			this.x += this.speed * Math.cos(angle) * t * main.getFrameRate();
			this.y += this.speed * Math.sin(angle) * t * main.getFrameRate();
			tick -=  t * main.getFrameRate()
		}

	}
	
}
