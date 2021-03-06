package {
	public class Level13 {
		var level13: Array = new Array()
		var boss13: Array = new Array()
		private var main;
		private var t;

			public function Level13(m) {
				main = m
				t = main.getFrameRate()
				
				// magma tower coordinates: 240, 280
				
				/*
				Evil Level 13:
					- Added the magma tower feature
					- Added destroy tower feature
					- Added random mob spawns (specifically Monster 19 in lava)
				*/
				/*
				Random mob spawn areas:
				[19, 1, 2, 4, false, [230, 140], [345, 180]],
				[19, 1, 3, 3, false, [230, 140], [230, 45]],
				*/
				level13 = [
					[0, -2, -2],
					["addTime", 1, false],
					[15, 1, 1],
					[15, 4 * t, 1],
					[15, 4 * t, 1],
					[15, 4 * t, 1],
					[15, 4 * t, 1],
					[0, -1, -1], // Wave 1 end
					[14, 1, 1],
					[04, 1.5 * t, 1],
					[14, 1.5 * t, 1],
					[04, 1.5 * t, 1],
					[14, 1.5 * t, 1],
					[04, 1.5 * t, 1],
					[14, 1.5 * t, 1],
					[04, 1.5 * t, 1],
					[14, 1.5 * t, 1],
					[04, 1.5 * t, 1],
					[14, 1.5 * t, 1],
					[04, 1.5 * t, 1],
					[14, 1.5 * t, 1],
					[04, 1.5 * t, 1],
					[14, 1.5 * t, 1],
					[04, 1.5 * t, 1],
					[0, -1, -1], // Wave 2 end
					[15, 1, 1],
					[14, 2 * t, 1],
					[15, 2 * t, 1],
					[14, 2 * t, 1],
					[15, 2 * t, 1],
					[14, 2 * t, 1],
					[15, 2 * t, 1],
					[14, 2 * t, 1],
					[15, 2 * t, 1],
					[14, 2 * t, 1],
					[0, -1, -1], // Wave 3 end
					[15, 1, 1],			[19, 1, 2],
					[15, 3 * t, 1],		[19, 1, 2],
					[15, 3 * t, 1],		[19, 1, 2],
					[15, 3 * t, 1],		[19, 1, 2],
					[15, 3 * t, 1],		[19, 1, 2],
					[15, 3 * t, 1],		[19, 1, 2],
					[15, 3 * t, 1],		[19, 1, 2],
					[15, 3 * t, 1],		[19, 1, 2],
					[15, 3 * t, 1],		[19, 1, 2],
					[15, 3 * t, 1],		[19, 1, 2],
					[0, -1, -1], // Wave 4 end
					[16, 1, 1],			[9, 1, 2],
					[14, 2 * t, 1],		[9, 1, 2],
					[15, 2 * t, 1],		[9, 1, 2],
					[14, 2 * t, 1],		[9, 1, 2],
					[16, 2 * t, 1],		[9, 1, 2],
					[14, 2 * t, 1],		[9, 1, 2],
					[15, 2 * t, 1],		[9, 1, 2],
					[14, 2 * t, 1],		[9, 1, 2],
					[16, 2 * t, 1],		[9, 1, 2],
					[14, 2 * t, 1],		[9, 1, 2],
					[15, 2 * t, 1],		[9, 1, 2],
					[14, 2 * t, 1],		[9, 1, 2],
					[16, 2 * t, 1],		[9, 1, 2],
					[14, 2 * t, 1],		[9, 1, 2],
					[15, 2 * t, 1],		[9, 1, 2],
					[14, 2 * t, 1],		[9, 1, 2],
					[0, -1, -1], // Wave 5 end
					[09, 1, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[09, 2 * t, 3],
					[0, -1, -1], // Wave 6 end
					[19, 1, 3],			[15, 1, 5],
					[19, 2 * t, 3],		[14, 1, 5],		[04, 1, 5],
					[19, 2 * t, 3],		[15, 1, 5],
					[19, 2 * t, 3],		[14, 1, 5],		[04, 1, 5],
					[19, 2 * t, 3],		[15, 1, 5],
					[19, 2 * t, 3],		[14, 1, 5],		[04, 1, 5],
					[19, 2 * t, 3],		[15, 1, 5],
					[19, 2 * t, 3],		[14, 1, 5],		[04, 1, 5],
					[19, 2 * t, 3],		[15, 1, 5],
					[19, 2 * t, 3],		[14, 1, 5],		[04, 1, 5],
					[19, 2 * t, 3],		[15, 1, 5],
					[19, 2 * t, 3],		[14, 1, 5],		[04, 1, 5],
					[19, 2 * t, 3],		[15, 1, 5],
					[19, 2 * t, 3],		[14, 1, 5],		[04, 1, 5],
					[19, 2 * t, 3],		[15, 1, 5],
					[19, 2 * t, 3],		[14, 1, 5],		[04, 1, 5],
					[19, 2 * t, 3],		[15, 1, 5],
					[19, 2 * t, 3],		[14, 1, 5],		[04, 1, 5],
					[19, 2 * t, 3],		[15, 1, 5],
					[19, 2 * t, 3],		[14, 1, 5],		[04, 1, 5],
					[0, -1, -1], // Wave 7 end
					["magmaTower", 1, 240, 280, 20, 40, 2000],
					[04, 1, 1],			[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 7 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 7 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 7 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[04, 2 * t, 1],		[03, 1, 5],		[19, 1, 3],
					[0, -1, -1], // Wave 8 end
					[16, 1, 1],			[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[16, 2 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[0, -1, -1], // Wave 9 end
					[09, 1, 3],			[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[11, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[11, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[11, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[11, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[11, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[11, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[11, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[09, 1 * t, 3],		[19, 1, 4],		[17, 1, 5],
					[11, 1 * t, 3],		[19, 1, 4],		[04, 1, 5],
					[0, -1, -1], // Wave 10 end
					["magmaTower", 1, 260, 280, 15, 35, 3000],
					[14, 1, 1],			[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[11, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[11, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[11, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[11, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[11, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[11, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[11, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[11, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[11, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[14, 1 * t, 1],		[09, 1, 3],		[19, 1, 4],		[15, 1, 5],
					[14, 1 * t, 1],		[11, 1, 3],		[19, 1, 4],		[03, 1, 5],
					[0, -1, -1], // Wave 11 end
					[15, 1, 1],			[18, 1, 2],		[18, 1, 3],		[16, 1, 5],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[15, 1 * t, 1],		[18, 1, 2],		[18, 1, 3],		[16, 1, 5],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[15, 1 * t, 1],		[18, 1, 2],		[18, 1, 3],		[16, 1, 5],
						[19, 1.0, 3, 3, false, [230, 140], [230, 45]],
						[19, 0.3 * t, 3, 3, false, [230, 140], [230, 45]],
						[19, 0.3 * t, 3, 3, false, [230, 140], [230, 45]],
						[19, 0.3 * t, 3, 3, false, [230, 140], [230, 45]],
					[15, 0.1 * t, 1],	[19, 1, 2],		[18, 1, 3],
						[19, 0.2 * t, 3, 3, false, [230, 140], [230, 45]],
					[15, 0.8 * t, 1],	[18, 1, 2],		[18, 1, 3],		[16, 1, 5],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[15, 1 * t, 1],		[18, 1, 2],		[18, 1, 3],		[16, 1, 5],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[15, 1 * t, 1],		[18, 1, 2],		[18, 1, 3],		[16, 1, 5],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[15, 1 * t, 1],		[18, 1, 2],		[18, 1, 3],		[16, 1, 5],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[15, 1 * t, 1],		[18, 1, 2],		[18, 1, 3],		[16, 1, 5],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],
					[15, 1 * t, 1],		[18, 1, 2],		[18, 1, 3],		[16, 1, 5],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],
						[19, 1.0, 3, 3, false, [230, 140], [230, 45]],
						[19, 0.3 * t, 3, 3, false, [230, 140], [230, 45]],
						[19, 0.3 * t, 3, 3, false, [230, 140], [230, 45]],
						[19, 0.3 * t, 3, 3, false, [230, 140], [230, 45]],
					[15, 0.1 * t, 1],	[18, 1, 2],		[18, 1, 3],		[16, 1, 5],
						[19, 0.2 * t, 3, 3, false, [230, 140], [230, 45]],
					[15, 0.8 * t, 1],	[19, 1, 2],		[18, 1, 3],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[04, 1 * t, 1],		[19, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[04, 1 * t, 1],		[19, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[04, 1 * t, 1],		[19, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[04, 1 * t, 1],		[19, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[04, 1 * t, 1],		[19, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[04, 1 * t, 1],		[19, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[04, 1 * t, 1],		[19, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[04, 1 * t, 1],		[19, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[15, 1, 5],
						[19, 1.0, 3, 3, false, [230, 140], [230, 45]],
						[19, 0.3 * t, 3, 3, false, [230, 140], [230, 45]],
						[19, 0.3 * t, 3, 3, false, [230, 140], [230, 45]],
						[19, 0.3 * t, 3, 3, false, [230, 140], [230, 45]],
					[04, 0.1 * t, 1],	[19, 1, 2],		[19, 1, 3],		[15, 1, 5],
						[19, 0.2 * t, 3, 3, false, [230, 140], [230, 45]],
					[16, 0.8 * t, 1],	[18, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[04, 1 * t, 1],		[19, 1, 2],		[19, 1, 3],		[15, 1, 5],
					[0, -1, -1], // Wave 12 end
					["magmaTower", 1, 260, 280, 15, 35, 5000],
					[15, 1, 1],			[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],		[9, 1, 6],
					[15, 1 * t, 1],		[19, 1, 3],		[17, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],		[9, 1, 6],
					[16, 1 * t, 1],		[18, 1, 3],		[18, 1, 5],
					[0, -1, -1], // Wave 13 end
					[17, 1, 1],			[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],
					[17, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[17, 1 * t, 5],		[19, 1, 2],		[18, 1, 3],		[9, 1, 6],		[15, 1, 1],
					[17, 1 * t, 5],		[18, 1, 2],		[19, 1, 3],		[9, 1, 6],		[14, 1, 1],
					[0, -1, -1], // Wave 14 end
					[16, 1, 1],			[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[16, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[14, 1, 5],		[11, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[15, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[15, 1 * t, 1],		[19, 1, 2],		[18, 1, 3],		[09, 1, 4],		[04, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[03, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[11, 1, 6],
					[02, 1 * t, 1],		[18, 1, 2],		[19, 1, 3],		[09, 1, 4],		[16, 1, 5],		[09, 1, 6],
					[0, -1, -1], // Wave 15 end
					["magmaTower", 1, 260, 280, 10, 25, 7500],
					["boss", 5 * t, 13],
					[0, -3, -1]  // Wave 16 end - Level end
				]
				
				boss13 = [
					[16, 0.5 * t, 1],	[19, 1, 3],		[17, 1, 5],		[11, 1, 6],
					[16, 0.5 * t, 1],	[18, 1, 3],		[17, 1, 5],		[09, 1, 6],
					[0, -3, -1],
				]
			}

		public function getLevel13() {
			return level13
		}
	
		public function getBoss() {
			return boss13
		}

	}

}