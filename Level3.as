package {

	public class Level3 {
		var level3: Array = new Array
		private var main;

			public function Level3(m) {
				main = m
			level3 = [
				[0, -2, 1],
				[1, 1, 1],
				[1, 1 * main.getFrameRate(), 1],
				[1, 2 * main.getFrameRate(), 1],
				[2, 3 * main.getFrameRate(), 1],
				[1, 6 * main.getFrameRate(), 1],
				[1, 7 * main.getFrameRate(), 1],
				[2, 8 * main.getFrameRate(), 1],
				[1, 11 * main.getFrameRate(), 1],
				[1, 12 * main.getFrameRate(), 1], // 10
				[2, 13 * main.getFrameRate(), 1],
				[3, 16 * main.getFrameRate(), 2],
				[0, -1,- 1], // Wave 1 end
				[1, 1, 2],
				[1, 1 * main.getFrameRate(), 2],
				[1, 2 * main.getFrameRate(), 2],
				[2, 3 * main.getFrameRate(), 2],
				[1, 5 * main.getFrameRate(), 2],
				[1, 6 * main.getFrameRate(), 2],
				[2, 7 * main.getFrameRate(), 2], // 20
				[1, 9 * main.getFrameRate(), 2],
				[1, 10 * main.getFrameRate(), 2],
				[2, 11 * main.getFrameRate(), 2],
				[1, 13 * main.getFrameRate(), 2],
				[1, 14 * main.getFrameRate(), 2],
				[3, 15 * main.getFrameRate(), 2],
				[0, -1, -1], // Wave 2 end
				[2, 1, 1],
				[2, 1 * main.getFrameRate(), 2],
				[2, 2 * main.getFrameRate(), 1], // 30
				[2, 3 * main.getFrameRate(), 2],
				[2, 4 * main.getFrameRate(), 1],
				[2, 5 * main.getFrameRate(), 2],
				[2, 6 * main.getFrameRate(), 1],
				[2, 7 * main.getFrameRate(), 2],
				[2, 8 * main.getFrameRate(), 1],
				[2, 9 * main.getFrameRate(), 2],
				[0, -1, -1], // Wave 3 end
				[3, 1, 3], // 50
				[2, 2, 2],
				[2, 1.5 * main.getFrameRate(), 2],
				[2, 3 * main.getFrameRate(), 2],
				[2, 4.5 * main.getFrameRate(), 2],
				[2, 6 * main.getFrameRate(), 2],
				[3, 7.5 * main.getFrameRate(), 3],
				[1, 10 * main.getFrameRate(), 1],
				[1, 10.5 * main.getFrameRate(), 2],
				[1, 11 * main.getFrameRate(), 1],
				[1, 11.5 * main.getFrameRate(), 2], // 60
				[1, 12 * main.getFrameRate(), 1],
				[3, 15 * main.getFrameRate() + 1, 3],
				[0, -1, -1], // Wave 4 end
				[2, 1, 3], // 80
				[3, 2, 1],
				[2, 1 * main.getFrameRate(), 3],
				[2, 2 * main.getFrameRate(), 3],
				[3, 2 * main.getFrameRate() + 1, 2],
				[2, 3 * main.getFrameRate(), 3],
				[1, 3.5 * main.getFrameRate(), 3],
				[1, 4 * main.getFrameRate(), 3],
				[3, 4 * main.getFrameRate() + 1, 1],
				[3, 6 * main.getFrameRate() + 1, 2],
				[0, -1, -1], // Wave 5 end
				[3, 1, 1],
				[3, 1 * main.getFrameRate(), 2],
				[3, 2 * main.getFrameRate(), 1],
				[3, 3 * main.getFrameRate(), 2],
				[3, 4 * main.getFrameRate(), 1],
				[3, 5 * main.getFrameRate(), 2],
				[3, 10 * main.getFrameRate(), 3],
				[3, 11 * main.getFrameRate(), 3],
				[0, -1, -1], // Wave 6 end
				[3, 1, 1],
				[3, 2, 3],
				[4, 2 * main.getFrameRate(), 2],
				[4, 3.5 * main.getFrameRate(), 2],
				[3, 4 * main.getFrameRate(), 1],
				[3, 4 * main.getFrameRate() + 1, 3],
				[4, 5 * main.getFrameRate(), 2],
				[4, 6.5 * main.getFrameRate(), 2],
				[4, 7 * main.getFrameRate(), 2],
				[4, 8.5 * main.getFrameRate(), 2],
				[3, 9 * main.getFrameRate(), 1],
				[3, 9 * main.getFrameRate() + 1, 1],
				[4, 10 * main.getFrameRate(), 2],
				[4, 11.5 * main.getFrameRate(), 2],
				[4, 12 * main.getFrameRate(), 2],
				[4, 13.5 * main.getFrameRate(), 2],
				[3, 14 * main.getFrameRate(), 1],
				[3, 14 * main.getFrameRate() + 1, 3],
				[4, 15 * main.getFrameRate(), 2],
				[0, -1, -1], // Wave 7 end
				[3, 1, 3],
				[2, 2, 2],
				[1, 1 * main.getFrameRate(), 2],
				[1, 2 * main.getFrameRate(), 2],
				[3, 2 * main.getFrameRate() + 1, 2],
				[4, 2 * main.getFrameRate() + 2, 1],
				[1, 3 * main.getFrameRate(), 2],
				[1, 4 * main.getFrameRate(), 2],
				[3, 5 * main.getFrameRate(), 3],
				[1, 5 * main.getFrameRate() + 1, 2],
				[4, 5 * main.getFrameRate() + 2, 1],
				[1, 6 * main.getFrameRate(), 2],
				[1, 7 * main.getFrameRate(), 2],
				[3, 8 * main.getFrameRate(), 3],
				[1, 8 * main.getFrameRate() + 1, 2],
				[4, 8 * main.getFrameRate() + 2, 1],
				[1, 9 * main.getFrameRate(), 2],
				[1, 10 * main.getFrameRate(), 2],
				[3, 11 * main.getFrameRate(), 3],
				[1, 11 * main.getFrameRate() + 1, 2],
				[4, 11 * main.getFrameRate() + 2, 1],
				[1, 12 * main.getFrameRate(), 2],
				[1, 13 * main.getFrameRate(), 2],
				[3, 14 * main.getFrameRate(), 3],
				[1, 14 * main.getFrameRate() + 1, 2],
				[4, 14 * main.getFrameRate() + 2, 1],
				[1, 15 * main.getFrameRate(), 2],
				[1, 16 * main.getFrameRate(), 2],
				[3, 17 * main.getFrameRate(), 3],
				[1, 17 * main.getFrameRate() + 1, 2],
				[4, 17 * main.getFrameRate() + 2, 1],
				[1, 18 * main.getFrameRate(), 2],
				[1, 19 * main.getFrameRate(), 2],
				[1, 20 * main.getFrameRate(), 2],
				[3, 20 * main.getFrameRate() + 1, 3],
				[4, 20 * main.getFrameRate() + 2, 1],
				[1, 21 * main.getFrameRate(), 2],
				[1, 22 * main.getFrameRate(), 2],
				[1, 23 * main.getFrameRate(), 2],
				[3, 23 * main.getFrameRate() + 1, 3],
				[4, 23 * main.getFrameRate() + 2, 1],
				[1, 24 * main.getFrameRate(), 2],
				[1, 25 * main.getFrameRate(), 2],
				[2, 26 * main.getFrameRate(), 2],
				[3, 26 * main.getFrameRate() + 1, 3],
				[4, 26 * main.getFrameRate() + 2, 1],
				[0, -3, -1]  // Wave 8 end
			]
		}

		public function getLevel3() {
			return level3
		}

	}

}