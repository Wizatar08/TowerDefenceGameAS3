package  {
	import flash.display.MovieClip;
	
	public class FogManager {
		private var main

		public function FogManager(m) {
			main = m
		}
		
		public function update(t){
			for(var i = 0; i < main.fogList.length; i++){
				main.fogList[i].update(t)
				if(main.fogList[i].alpha < main.fogList[i].fogAlpha && main.fogList[i].tick > 0){
					main.fogList[i].alpha += 0.1
				}
				if(main.fogList[i].tick <= 0){
					main.fogList[i].alpha -= 0.05
				}
				if(main.fogList[i].alpha <= 0){
					main.projLayer.removeChild(main.fogList[i])
					main.fogList.splice(i,1)
				}
			}
		}

	}
	
}
