package {

	public class UpdateManager {
		var main
		var bm

		public function UpdateManager(m, build) {
			main = m
			bm = build
		}
		
		public function constantUpdate(t){
			for (var i = 0; i < main.stageObjects.length; i++) {
				for (var i1 = 0; i1 < main.stageObjects[i].length; i1++) {
					main.stageObjects[i][i1].redScreen.alpha = main.redScreenAlpha;
				}
			}
			for(var j = 0; j < main.upgradableTiles.length; j++){
				if(main.upgradableTiles[j] == null){
					main.upgradableTiles.splice(j, 1)
				}
			}
			for(var k = 0; k < main.nonPlacableTiles.length; k++){
				if(main.nonPlacableTiles[k] == null){
					main.nonPlacableTiles.splice(k, 1)
				}
			}
		}

		public function updateBarrier() {
		}

		public function updatePlacement() {
			var count = 0
			for (var i = 0; i < main.towers.length; i++) {
				var tower = main.towers[i]
				if ((main.mouseX > tower.x - 13 && main.mouseX < tower.x + 13) && (main.mouseY > tower.y - 13 && main.mouseY < tower.y + 13)) {
					//selectedTower = tower
					count++
				}
			}
			if (main.currTower == null && main.mouseX < 465) {
				main.placement.x = Math.floor(main.mouseX / 30) * 30 + 15
				main.placement.y = Math.floor(main.mouseY / 30) * 30 + 15

			}
			if (count == 1) {
				main.placement.alpha = 1
				main.haveInfo = true
			} else {
				main.placement.alpha = 0
				main.haveInfo = false
				bm.selectedTower = null
			}
		}


	}

}