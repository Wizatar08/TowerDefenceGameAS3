package {
	public class Level1 {
		var level1: Array = new Array()
		private var main;

			public function Level1(m) {
				main = m
				level1 = [
					[0, -2, -1],
					[1, 1, 1],
					[1, 5 * main.getFrameRate(), 1],
					[1, 10 * main.getFrameRate(), 1],
					[0, -1, -1], // Wave 1 end
					[1, 1, 1],
					[1, 3 * main.getFrameRate(), 1],
					[1, 6 * main.getFrameRate(), 1],
					[1, 9 * main.getFrameRate(), 1],
					[0, -1, -1],
					[1, 1, 1],	// Wave 2 end
					[1, 1 * main.getFrameRate(), 1],
					[1, 4 * main.getFrameRate(), 1],
					[1, 5 * main.getFrameRate(), 1],
					[1, 8 * main.getFrameRate(), 1],
					[1, 11 * main.getFrameRate(), 1],
					[2, 14 * main.getFrameRate(), 2],
					[0, -1, -1], //Wave 3 end
					[1, 1, 1],
					[1, 1.5 * main.getFrameRate(), 1],
					[1, 3 * main.getFrameRate(), 1],
					[1, 4.5 * main.getFrameRate(), 1],
					[1, 6 * main.getFrameRate(), 1],
					[2, 6 * main.getFrameRate() + 1, 2],
					[0, -1, -1], // Wave 4 end
					[2, 1, 1],
					[2, 2, 2],
					[1, 2 * main.getFrameRate(), 1],
					[2, 4 * main.getFrameRate() + 1, 2],
					[1, 6 * main.getFrameRate(), 1],
					[1, 8 * main.getFrameRate(), 1],
					[2, 8 * main.getFrameRate() + 1, 2],
					[1, 10 * main.getFrameRate(), 1],
					[2, 12 * main.getFrameRate() + 1, 2],
					[0, -3, -1]  // Wave 5 end
				] // Level end
			}

		public function getLevel1() {
			return level1
		}

	}

}