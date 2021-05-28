package {
	import flash.display.Sprite;

	public class TowerHoverSprite {
		private var main: Main

		private var circle: Sprite = new Sprite();
		private var color: uint = 0xDD2200;
		private var lineThickness: int = 3;

		public function TowerHoverSprite(m: Main) {
			main = m;
		}

		public function onTowerHover(tower, xPos: int, yPos: int, radius: int) {
			circle.graphics.lineStyle(lineThickness, color, 0.6);
			circle.graphics.drawCircle(xPos, yPos, radius);
			main.spriteLayer.addChild(circle);
			if (tower != main.currTower) {
				tower.mouseHoveredOn(tower)
			}
			tower.hoverInfo.alpha = 1;
			tower.hoverInfo.x = 0;
			tower.hoverInfo.y = 16;
			if (tower.getLevel() >= 3 && tower.hasSetBuilding) {
				tower.upgradeInfo.alpha = 1;
				tower.upgradeInfo.x = 0;
				tower.upgradeInfo.y = 16 + tower.hoverInfo.height + 3
			}
		}

		public function onTowerHoverOut(tower) {
			circle.graphics.clear();
			tower.hoverInfo.alpha = 0;
			tower.hoverInfo.x = 10000000;
			tower.hoverInfo.y = 10000000;
			tower.upgradeInfo.alpha = 0;
			if (tower.hasSetBuilding) {
				tower.upgradeInfo.x = 10000000;
				tower.upgradeInfo.y = 10000000;
			}
		}

	}

}