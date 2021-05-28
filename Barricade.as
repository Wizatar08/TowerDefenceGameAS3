package {
	import flash.display.MovieClip;
	
	public class Barricade extends Building{
		var main
		const c_reloadTime = -1
		
		var reloadTime:int; //reload time of the tower
		var cost:int;       //cost of the towe
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		public var toughness:int
		
		var range = 0;
		
		public function Barricade(main){
			this.main = main
			reloadTime = -1
			cost = 100
			
			specialty = "n/a"
			buildingType = "barricade"
			
			toughness = 10 * main.getFrameRate();
			super(main);
		}
		
		override public function update(){
			if(toughness >= 7.5 * main.getFrameRate()){
				this.gotoAndStop(1)
				cost = 100
			} else if(toughness < 7.5 * main.getFrameRate() && toughness >= 5 * main.getFrameRate()){
				this.gotoAndStop(2)
				cost = 50
			} else  if(toughness < 5 * main.getFrameRate() && toughness >= 2.5 * main.getFrameRate()){
				this.gotoAndStop(3)
				cost = 20
			} else  if(toughness < 2.5 * main.getFrameRate()){
				this.gotoAndStop(4)
				cost = 6
			} 
		}


		override public function isUpgradable(isUpgradable: Boolean = true) {
			return false;
		}
		
	}
}