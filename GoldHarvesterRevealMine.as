package {
	import flash.display.MovieClip;
	
	public class GoldHarvesterRevealMine extends Building{
		private var main
		var c_reloadTime
		
		var reloadTime:Number; //reload time of the tower
		var range:Number;      //range of the tower
		var cost:Number;   //cost of the tower
		var damage:Number
		var tileRate:Number
		var mudSlow:Number;
		var goldBonus:Number
		var goldDamage:Number
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		public var reloadTier
		public var allowStacking
		
		public function GoldHarvesterRevealMine(m, isUpgraded: Boolean = false){
			main = m
			reloadTime = 5 * main.getFrameRate(); // 5
			c_reloadTime = 5 * main.getFrameRate();
			range = -1
			damage = -1
			cost = 1100
			mudSlow = 0
			
			specialty = "energy"
			buildingType = "tilePlacer"
			
			reloadTier = 0;
			allowStacking = false
			super(main, isUpgraded)
		}

		public function place(main) {
			var currTower = new Mine_reveal(main);
			if (main.stageObjects[Math.round((this.y - 15) / 30) - 1][Math.round((this.x - 15) / 30)].currentFrame == 96) {
				currTower.x = this.x; //place the tower on the tile
				currTower.y = this.y - 30;
				var c = 0;
				for (var i = 0; i < main.towers.length; i++) {
					if (currTower.x == main.towers[i].x && currTower.y == main.towers[i].y && allowStacking == false) {
						c++
					}
				}
				if (c == 0) {
					currTower.gotoAndStop(1);
					main.towers.push(currTower);
					main.nonPlacableTiles.push(main.stageObjects[Math.round((this.y - 15) / 30) - 1][Math.round((this.x - 15) / 30)]); //add the current Tile into nonPlacableTiles
					main.upgradableTiles.push(main.stageObjects[Math.round((this.y - 15) / 30) - 1][Math.round((this.x - 15) / 30)]); //add the current Tile into upgradableTiles
					main.towerLayer.addChild(currTower);
				}
			}
			if (main.stageObjects[Math.round((this.y - 15) / 30) + 1][Math.round((this.x - 15) / 30)].currentFrame == 96) {
				currTower.x = this.x; //place the tower on the tile
				currTower.y = this.y + 30;
				var c1 = 0;
				for (var i1 = 0; i1 < main.towers.length; i1++) {
					if (currTower.x == main.towers[i1].x && currTower.y == main.towers[i1].y && allowStacking == false) {
						c1++
					}
				}
				if (c1 == 0) {
					currTower.gotoAndStop(1);
					main.towers.push(currTower);
					main.nonPlacableTiles.push(main.stageObjects[Math.round((this.y - 15) / 30) + 1][Math.round((this.x - 15) / 30)]); //add the current Tile into nonPlacableTiles
					main.upgradableTiles.push(main.stageObjects[Math.round((this.y - 15) / 30) + 1][Math.round((this.x - 15) / 30)]); //add the current Tile into upgradableTiles
					main.towerLayer.addChild(currTower);
				}
			}
			if (main.stageObjects[Math.round((this.y - 15) / 30)][Math.round((this.x - 15) / 30) - 1].currentFrame == 96) {
				currTower.x = this.x - 30; //place the tower on the tile
				currTower.y = this.y;
				var c2 = 0;
				for (var i2 = 0; i2 < main.towers.length; i2++) {
					if (currTower.x == main.towers[i2].x && currTower.y == main.towers[i2].y && allowStacking == false) {
						c2++
					}
				}
				if (c2 == 0) {
					currTower.gotoAndStop(1);
					main.towers.push(currTower);
					main.nonPlacableTiles.push(main.stageObjects[Math.round((this.y - 15) / 30)][Math.round((this.x - 15) / 30) - 1]); //add the current Tile into nonPlacableTiles
					main.upgradableTiles.push(main.stageObjects[Math.round((this.y - 15) / 30)][Math.round((this.x - 15) / 30) - 1]); //add the current Tile into upgradableTiles
					main.towerLayer.addChild(currTower);
				}
			}
			if (main.stageObjects[Math.round((this.y - 15) / 30)][Math.round((this.x - 15) / 30) + 1].currentFrame == 96) {
				currTower.x = this.x + 30; //place the tower on the tile
				currTower.y = this.y;
				var c3 = 0;
				for (var i3 = 0; i3 < main.towers.length; i3++) {
					if (currTower.x == main.towers[i3].x && currTower.y == main.towers[i3].y && allowStacking == false) {
						c3++
					}
				}
				if (c3 == 0) {
					currTower.gotoAndStop(1);
					main.towers.push(currTower);
					main.nonPlacableTiles.push(main.stageObjects[Math.round((this.y - 15) / 30)][Math.round((this.x - 15) / 30) + 1]); //add the current Tile into nonPlacableTiles
					main.upgradableTiles.push(main.stageObjects[Math.round((this.y - 15) / 30)][Math.round((this.x - 15) / 30) + 1]); //add the current Tile into upgradableTiles
					main.towerLayer.addChild(currTower);
				}
			}
		}


		override public function isUpgradable(isUpgradable: Boolean = true) {
			return false;
		}
		
		override public function getLevel(level: int = 1){
			return 4;
		}
	}

}