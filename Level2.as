package  {
	
	public class Level2 {
		var level2:Array = new Array
		private var main;

			public function Level2(m) {
			main = m
			level2 = [
				[0, -2, -1],
				[1, 1, 1],
				[1, 2 * main.getFrameRate(), 1],
				[1, 4 * main.getFrameRate(), 1],
				[0, -1, -1], // Wave 1 end
				[2, 1, 1],
				[1, 2 * main.getFrameRate(), 1],
				[1, 4 * main.getFrameRate(), 1],
				[1, 6 * main.getFrameRate(), 1],
				[1, 8 * main.getFrameRate(), 1],
				[1, 10 * main.getFrameRate(), 1],
				[1, 12 * main.getFrameRate(), 1],
				[0, -1, -1], // Wave 2 end
				[2, 2, 2],
				[1, 1 * main.getFrameRate(), 2],
				[1, 3 * main.getFrameRate(), 2],
				[1, 5 * main.getFrameRate(), 2],
				[1, 7 * main.getFrameRate(), 2],
				[1, 9 * main.getFrameRate(), 2],
				[1, 11 * main.getFrameRate(), 2],
				[1, 13 * main.getFrameRate(), 2],
				[1, 15 * main.getFrameRate(), 2],
				[2, 16 * main.getFrameRate(), 2],
				[0, -1, -1], // Wave 3 end
				[2, 1, 2],
				[1, 2, 1],
				[1, 1 * main.getFrameRate(), 1],
				[2, 2 * main.getFrameRate(), 2],
				[1, 2 * main.getFrameRate() + 1, 1],
				[1, 3 * main.getFrameRate() + 1, 1],
				[2, 4 * main.getFrameRate(), 2],
				[1, 4 * main.getFrameRate() + 1, 1],
				[1, 5 * main.getFrameRate() + 1, 1],
				[0, -1, -1], // Wave 4 end
				[1, 1, 1],
				[3, 2, 2],
				[1, 24, 1],
				[1, 2 * main.getFrameRate(), 1],
				[1, 3 * main.getFrameRate(), 1],
				[1, 4 * main.getFrameRate(), 1],
				[3, 4 * main.getFrameRate() + 1, 2],
				[1, 5 * main.getFrameRate(), 1],
				[1, 6 * main.getFrameRate(), 1],
				[1, 7 * main.getFrameRate(), 1],
				[1, 8 * main.getFrameRate(), 1],
				[1, 9 * main.getFrameRate(), 1],
				[3, 9 * main.getFrameRate() + 1, 2],
				[0, -1, -1], // Wave 5 end
				[3, 1, 1],
				[3, 2, 2],
				[3, 3 * main.getFrameRate(), 1],
				[3, 3 * main.getFrameRate() + 1, 2],
				[3, 7 * main.getFrameRate(), 1],
				[3, 7 * main.getFrameRate() + 1, 2],
				[0, -1, -1], // Wave 6 end
				[2, 1, 1],
				[3, 2, 2],
				[1, 2 * main.getFrameRate(), 1],
				[1, 3 * main.getFrameRate(), 1],
				[3, 3 * main.getFrameRate() + 1, 2],
				[1, 4 * main.getFrameRate(), 1],
				[1, 5 * main.getFrameRate(), 1],
				[3, 5 * main.getFrameRate() + 1, 2],
				[1, 6 * main.getFrameRate(), 1],
				[1, 7 * main.getFrameRate(), 1],
				[3, 7 * main.getFrameRate() + 1, 2],
				[1, 8 * main.getFrameRate(), 1],
				[1, 9 * main.getFrameRate(), 1],
				[3, 9 * main.getFrameRate() + 1, 2],
				[0, -3, -1]
			]
		}
		
		public function getLevel2(){
			return level2
		}

	}
	
}
