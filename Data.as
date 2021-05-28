package {
	public class Data {
		private var main

		public var levels: Array = new Array(); //array to store all levels
		public var waypoints_x: Array = new Array(); //array to store x waypoint of all the level
		public var waypoints_y: Array = new Array(); //array to store y waypoint of all the level
		public var waypoints_x_m2: Array = new Array(); //array to store x waypoint of all the level
		public var waypoints_y_m2: Array = new Array(); //array to store y waypoint of all the level
		public var waypoints_x_m3: Array = new Array(); //array to store x waypoint of all the level
		public var waypoints_y_m3: Array = new Array(); //array to store y waypoint of all the level
		public var waypoints_x_m4: Array = new Array(); //array to store x waypoint of all the level
		public var waypoints_y_m4: Array = new Array(); //array to store y waypoint of all the level
		public var waypoints_x_m5: Array = new Array(); //array to store x waypoint of all the level
		public var waypoints_y_m5: Array = new Array(); //array to store y waypoint of all the level
		public var waypoints_x_m6: Array = new Array(); //array to store x waypoint of all the level
		public var waypoints_y_m6: Array = new Array(); //array to store y waypoint of all the level
		public var waypoints_x_m7: Array = new Array(); //array to store x waypoint of all the level
		public var waypoints_y_m7: Array = new Array(); //array to store y waypoint of all the level
		public var waypoints_x_m8: Array = new Array(); //array to store x waypoint of all the level
		public var waypoints_y_m8: Array = new Array(); //array to store y waypoint of all the level

		public var level1: Array = new Array(); //array to store data of a single level(level1)
		public var waypoints_x_1: Array = new Array(); //array to store x waypoints of level1
		public var waypoints_y_1: Array = new Array(); //array to store y waypoints of level1
		public var waypoints_x_1_2: Array = new Array(); //array to store x waypoints of level1
		public var waypoints_y_1_2: Array = new Array(); //array to store y waypoints of level1

		public var level2: Array = new Array(); //array to store data of a single level(level2)
		public var waypoints_x_2: Array = new Array(); //array to store x waypoints of level2
		public var waypoints_y_2: Array = new Array(); //array to store y waypoints of level2
		public var waypoints_x_2_2: Array = new Array(); //array to store x waypoints of level2
		public var waypoints_y_2_2: Array = new Array(); //array to store y waypoints of level2

		public var level3: Array = new Array(); //array to store data of a single level(level3)
		public var waypoints_x_3: Array = new Array(); //array to store x waypoints of level3
		public var waypoints_y_3: Array = new Array(); //array to store y waypoints of level3
		public var waypoints_x_3_2: Array = new Array(); //array to store x waypoints of level3
		public var waypoints_y_3_2: Array = new Array(); //array to store y waypoints of level3
		public var waypoints_x_3_3: Array = new Array(); //array to store x waypoints of level3
		public var waypoints_y_3_3: Array = new Array(); //array to store y waypoints of level3

		public var level4: Array = new Array(); //array to store data of a single level(level4)
		public var waypoints_x_4: Array = new Array(); //array to store x waypoints of level4
		public var waypoints_y_4: Array = new Array(); //array to store y waypoints of level4
		public var waypoints_x_4_2: Array = new Array(); //array to store x waypoints of level4
		public var waypoints_y_4_2: Array = new Array(); //array to store y waypoints of level4
		public var waypoints_x_4_3: Array = new Array(); //array to store x waypoints of level4
		public var waypoints_y_4_3: Array = new Array(); //array to store y waypoints of level4

		public var level5: Array = new Array(); //array to store data of a single level(level5)
		public var waypoints_x_5: Array = new Array(); //array to store x waypoints of level5
		public var waypoints_y_5: Array = new Array(); //array to store y waypoints of level5
		public var waypoints_x_5_2: Array = new Array(); //array to store x waypoints of level5
		public var waypoints_y_5_2: Array = new Array(); //array to store y waypoints of level5
		public var waypoints_x_5_3: Array = new Array(); //array to store x waypoints of level5
		public var waypoints_y_5_3: Array = new Array(); //array to store y waypoints of level5
		public var waypoints_x_5_4: Array = new Array(); //array to store x waypoints of level5
		public var waypoints_y_5_4: Array = new Array(); //array to store y waypoints of level5
		public var waypoints_x_5_5: Array = new Array(); //array to store x waypoints of level5
		public var waypoints_y_5_5: Array = new Array(); //array to store y waypoints of level5
		public var waypoints_x_5_6: Array = new Array(); //array to store x waypoints of level5
		public var waypoints_y_5_6: Array = new Array(); //array to store y waypoints of level5

		public var level6: Array = new Array(); //array to store data of a single level(level6)
		public var waypoints_x_6: Array = new Array(); //array to store x waypoints of level6
		public var waypoints_y_6: Array = new Array(); //array to store y waypoints of level6
		public var waypoints_x_6_2: Array = new Array(); //array to store x waypoints of level6
		public var waypoints_y_6_2: Array = new Array(); //array to store y waypoints of level6
		public var waypoints_x_6_3: Array = new Array(); //array to store x waypoints of level6
		public var waypoints_y_6_3: Array = new Array(); //array to store y waypoints of level6
		public var waypoints_x_6_4: Array = new Array(); //array to store x waypoints of level6
		public var waypoints_y_6_4: Array = new Array(); //array to store y waypoints of level6
		public var waypoints_x_6_5: Array = new Array(); //array to store x waypoints of level6
		public var waypoints_y_6_5: Array = new Array(); //array to store y waypoints of level6

		public var level7: Array = new Array(); //array to store data of a single level(level7)
		public var waypoints_x_7: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_7: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_7_2: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_7_2: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_7_3: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_7_3: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_7_4: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_7_4: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_7_5: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_7_5: Array = new Array(); //array to store y waypoints of level7

		public var level8: Array = new Array(); //array to store data of a single level(level7)
		public var waypoints_x_8: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_8: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_8_2: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_8_2: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_8_3: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_8_3: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_8_4: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_8_4: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_8_5: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_8_5: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_8_6: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_8_6: Array = new Array(); //array to store y waypoints of level7

		public var level9: Array = new Array(); //array to store data of a single level(level7)
		public var waypoints_x_9: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_9: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_9_2: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_9_2: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_9_3: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_9_3: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_9_4: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_9_4: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_9_5: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_9_5: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_9_6: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_9_6: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_9_7: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_9_7: Array = new Array(); //array to store y waypoints of level7
		public var waypoints_x_9_8: Array = new Array(); //array to store x waypoints of level7
		public var waypoints_y_9_8: Array = new Array(); //array to store y waypoints of level7

		public var level10: Array = new Array();
		public var waypoints_x_10: Array = new Array();
		public var waypoints_y_10: Array = new Array();
		public var waypoints_x_10_2: Array = new Array();
		public var waypoints_y_10_2: Array = new Array();
		public var waypoints_x_10_3: Array = new Array();
		public var waypoints_y_10_3: Array = new Array();
		public var waypoints_x_10_4: Array = new Array();
		public var waypoints_y_10_4: Array = new Array();
		public var waypoints_x_10_5: Array = new Array();
		public var waypoints_y_10_5: Array = new Array();
		public var waypoints_x_10_6: Array = new Array();
		public var waypoints_y_10_6: Array = new Array();
		public var waypoints_x_10_7: Array = new Array();
		public var waypoints_y_10_7: Array = new Array();
		public var waypoints_x_10_8: Array = new Array();
		public var waypoints_y_10_8: Array = new Array();

		public var level11: Array = new Array();
		public var waypoints_x_11: Array = new Array();
		public var waypoints_y_11: Array = new Array();
		public var waypoints_x_11_2: Array = new Array();
		public var waypoints_y_11_2: Array = new Array();
		public var waypoints_x_11_3: Array = new Array();
		public var waypoints_y_11_3: Array = new Array();
		public var waypoints_x_11_4: Array = new Array();
		public var waypoints_y_11_4: Array = new Array();
		public var waypoints_x_11_5: Array = new Array();
		public var waypoints_y_11_5: Array = new Array();
		public var waypoints_x_11_6: Array = new Array();
		public var waypoints_y_11_6: Array = new Array();
		public var waypoints_x_11_7: Array = new Array();
		public var waypoints_y_11_7: Array = new Array();

		public var level12: Array = new Array();
		public var waypoints_x_12: Array = new Array();
		public var waypoints_y_12: Array = new Array();
		public var waypoints_x_12_2: Array = new Array();
		public var waypoints_y_12_2: Array = new Array();
		public var waypoints_x_12_3: Array = new Array();
		public var waypoints_y_12_3: Array = new Array();
		public var waypoints_x_12_4: Array = new Array();
		public var waypoints_y_12_4: Array = new Array();
		public var waypoints_x_12_5: Array = new Array();
		public var waypoints_y_12_5: Array = new Array();

		public var level13: Array = new Array();
		public var waypoints_x_13: Array = new Array();
		public var waypoints_y_13: Array = new Array();
		public var waypoints_x_13_2: Array = new Array();
		public var waypoints_y_13_2: Array = new Array();
		public var waypoints_x_13_3: Array = new Array();
		public var waypoints_y_13_3: Array = new Array();
		public var waypoints_x_13_4: Array = new Array();
		public var waypoints_y_13_4: Array = new Array();
		public var waypoints_x_13_5: Array = new Array();
		public var waypoints_y_13_5: Array = new Array();
		public var waypoints_x_13_6: Array = new Array();
		public var waypoints_y_13_6: Array = new Array();
		public var waypoints_x_13_7: Array = new Array();
		public var waypoints_y_13_7: Array = new Array();

		public var level14: Array = new Array();
		public var waypoints_x_14: Array = new Array();
		public var waypoints_y_14: Array = new Array();
		public var waypoints_x_14_2: Array = new Array();
		public var waypoints_y_14_2: Array = new Array();
		public var waypoints_x_14_3: Array = new Array();
		public var waypoints_y_14_3: Array = new Array();
		public var waypoints_x_14_4: Array = new Array();
		public var waypoints_y_14_4: Array = new Array();
		public var waypoints_x_14_5: Array = new Array();
		public var waypoints_y_14_5: Array = new Array();

		public var level15: Array = new Array();
		public var waypoints_x_15: Array = new Array();
		public var waypoints_y_15: Array = new Array();
		public var waypoints_x_15_2: Array = new Array();
		public var waypoints_y_15_2: Array = new Array();
		public var waypoints_x_15_3: Array = new Array();
		public var waypoints_y_15_3: Array = new Array();
		public var waypoints_x_15_4: Array = new Array();
		public var waypoints_y_15_4: Array = new Array();
		public var waypoints_x_15_5: Array = new Array();
		public var waypoints_y_15_5: Array = new Array();
		public var waypoints_x_15_6: Array = new Array();
		public var waypoints_y_15_6: Array = new Array();
		public var waypoints_x_15_7: Array = new Array();
		public var waypoints_y_15_7: Array = new Array();

		public var level16: Array = new Array();
		public var waypoints_x_16: Array = new Array();
		public var waypoints_y_16: Array = new Array();
		public var waypoints_x_16_2: Array = new Array();
		public var waypoints_y_16_2: Array = new Array();
		public var waypoints_x_16_3: Array = new Array();
		public var waypoints_y_16_3: Array = new Array();
		public var waypoints_x_16_4: Array = new Array();
		public var waypoints_y_16_4: Array = new Array();
		public var waypoints_x_16_5: Array = new Array();
		public var waypoints_y_16_5: Array = new Array();
		public var waypoints_x_16_6: Array = new Array();
		public var waypoints_y_16_6: Array = new Array();
		public var waypoints_x_16_7: Array = new Array();
		public var waypoints_y_16_7: Array = new Array();
		public var waypoints_x_16_8: Array = new Array();
		public var waypoints_y_16_8: Array = new Array();
		public function setUp(m) {
			main = m
			
			level1 = [
				//	  0 1 2 3 4 5 6 7 8 9 101112
				[0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 5], //0
				[0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 5, 5], //1
				[0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 5, 5], //2
				[1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 5, 5], //3
				[0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 5, 5, 5], //4
				[0, 0, 1, 0, 1, 0, 14, 14, 1, 0, 0, 0, 5, 5, 5], //5
				[0, 0, 1, 0, 1, 0, 0, 14, 1, 1, 1, 0, 42, 13, 42], //6
				[0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 6, 5], //7
				[0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 42, 13, 42], //8
				[0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 5, 5, 5], //9
				[0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 5, 5, 5], //10
				[0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 5, 5], //11
				[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5], //12
				[0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 5, 5], //13
				[0, 0, 0, 0, 0, 14, 14, 14, 0, 0, 0, 0, 0, 0, 5], //14
				[0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 5] //15
			];

			level2 = [
				//0 1  2  3  4  5  6  7  8  9  10 11 12
				[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14], //0
				[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14], //1
				[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14], //2
				[1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 14, 14, 14], //3
				[0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 14, 14, 14, 14], //4
				[0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 14, 14, 0, 14], //5
				[0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 12, 0], //6
				[0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1], //7
				[0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 12, 14], //8
				[0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 14, 14], //9
				[1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 14, 14, 14], //10
				[0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 14, 14, 14], //11
				[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14], //12
				[0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 0, 0], //13
				[0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0], //14
				[0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0] //15
				// (-1,3),(2,3),(2,6),(5,6),(5,3),(9,3),(9,7),(14.7)
				// (-1, 10),(2, 10),(2,8),(5,8),(5,11),(9,11),(9,7),(14,7)
			];

			level3 = [
				[14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 5, 5, 5, 5], // 0
				[14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 5, 5, 5, 5],
				[14, 14, 14, 1, 1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5],
				[14, 14, 0, 1, 0, 0, 0, 0, 0, 0, 1, 5, 5, 5, 5],
				[14, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 5, 5, 5],
				[0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 9, 5], // 5
				[1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 13],
				[0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 6],
				[0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 13],
				[1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 8, 5],
				[0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 5, 5, 5], // 10
				[0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5],
				[5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 5, 5],
				[5, 5, 1, 0, 0, 0, 0, 0, 0, 14, 14, 5, 5, 5, 5],
				[5, 5, 8, 5, 14, 14, 14, 14, 14, 14, 14, 5, 5, 5, 5],
				[5, 5, 5, 5, 5, 14, 14, 14, 14, 14, 14, 5, 5, 5, 5], // 15
			];

			level4 = [
				[14, 0, 1, 5, 5, 5, 5, 5, 1, 14, 14, 14, 14, 14, 14], // 0
				[14, 0, 1, 5, 5, 5, 5, 5, 1, 14, 14, 14, 14, 14, 14],
				[14, 0, 1, 5, 5, 5, 5, 5, 1, 0, 14, 14, 14, 14, 14],
				[14, 0, 1, 5, 42, 5, 5, 5, 1, 0, 14, 14, 14, 14, 14],
				[14, 0, 1, 0, 42, 42, 42, 0, 1, 0, 0, 0, 14, 14, 14],
				[14, 0, 1, 0, 42, 42, 42, 0, 1, 1, 1, 1, 1, 14, 14], // 5
				[14, 0, 1, 0, 0, 42, 0, 0, 1, 0, 0, 0, 1, 14, 14],
				[14, 14, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 14],
				[14, 14, 0, 0, 0, 1, 0, 0, 1, 14, 14, 0, 1, 0, 0],
				[14, 14, 0, 0, 0, 1, 0, 0, 1, 14, 14, 0, 1, 0, 0],
				[14, 14, 0, 0, 0, 1, 1, 1, 1, 14, 14, 14, 1, 0, 0], // 10
				[14, 14, 14, 0, 0, 1, 0, 0, 0, 14, 14, 14, 1, 0, 12],
				[14, 14, 14, 0, 0, 1, 0, 0, 0, 14, 14, 14, 1, 1, 1],
				[14, 14, 14, 0, 0, 1, 0, 0, 0, 14, 14, 14, 14, 0, 12],
				[14, 14, 14, 14, 14, 1, 0, 0, 14, 14, 14, 14, 14, 0, 0],
				[14, 14, 14, 14, 12, 1, 12, 14, 14, 14, 14, 14, 14, 14, 14], // 15
			];

			level5 = [
				[14, 14, 14, 14, 14, 14, 12, 1, 12, 0, 0, 14, 14, 14, 14],
				[14, 14, 14, 14, 14, 14, 0, 1, 0, 0, 0, 0, 14, 14, 14],
				[14, 14, 14, 0, 0, 0, 0, 1, 0, 14, 0, 0, 0, 14, 14],
				[14, 14, 0, 0, 0, 0, 0, 1, 0, 14, 0, 0, 0, 0, 12],
				[14, 0, 0, 23, 18, 18, 20, 1, 0, 14, 14, 1, 1, 1, 1],
				[23, 18, 18, 18, 18, 18, 18, 28, 14, 14, 14, 1, 0, 0, 12],
				[18, 18, 18, 18, 18, 18, 18, 18, 18, 20, 14, 1, 0, 14, 14],
				[18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 20, 1, 0, 14, 14],
				[18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 20, 0, 14],
				[18, 18, 18, 18, 18, 22, 0, 29, 18, 18, 18, 18, 18, 18, 20],
				[18, 18, 18, 22, 0, 0, 0, 1, 0, 0, 21, 18, 18, 18, 18],
				[14, 14, 14, 14, 0, 0, 0, 1, 0, 0, 0, 29, 18, 18, 18],
				[14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 21, 18, 18],
				[14, 14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 18, 18],
				[14, 14, 0, 1, 0, 0, 14, 14, 0, 0, 0, 1, 0, 18, 18],
				[14, 0, 0, 1, 0, 0, 14, 14, 14, 14, 0, 1, 0, 21, 18],

			]

			level6 = [
				[14, 14, 5, 5, 5, 5, 16, 16, 16, 5, 5, 5, 5, 5, 14],
				[14, 0, 0, 5, 5, 40, 16, 16, 16, 40, 5, 5, 5, 14, 14],
				[1, 1, 1, 5, 5, 5, 16, 16, 16, 5, 5, 5, 5, 0, 14],
				[0, 0, 1, 40, 5, 40, 38, 38, 38, 40, 5, 40, 0, 0, 12],
				[5, 0, 1, 1, 1, 36, 36, 36, 36, 36, 1, 1, 1, 1, 1],
				[5, 5, 1, 40, 5, 40, 38, 38, 38, 40, 5, 40, 0, 0, 12],
				[5, 40, 1, 5, 5, 5, 16, 16, 16, 5, 5, 5, 0, 0, 0],
				[1, 1, 1, 40, 5, 40, 16, 16, 16, 40, 5, 5, 5, 8, 3],
				[1, 1, 1, 40, 5, 40, 16, 16, 16, 40, 5, 5, 5, 8, 3],
				[5, 40, 1, 5, 5, 5, 16, 16, 16, 5, 5, 5, 0, 0, 0],
				[5, 5, 1, 40, 5, 40, 38, 38, 38, 40, 5, 40, 0, 0, 12],
				[5, 0, 1, 1, 1, 36, 36, 36, 36, 36, 1, 1, 1, 1, 1],
				[0, 0, 1, 40, 5, 40, 38, 38, 38, 40, 5, 40, 0, 0, 12],
				[1, 1, 1, 5, 5, 5, 16, 16, 16, 5, 5, 5, 0, 0, 0],
				[0, 0, 14, 14, 5, 40, 16, 16, 16, 40, 5, 5, 14, 14, 14],
				[14, 14, 14, 5, 5, 13, 16, 16, 16, 13, 5, 5, 5, 14, 14],
			]

			level7 = [
				[5, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 14, 14, 14, 14],
				[5, 14, 14, 14, 14, 14, 14, 14, 0, 0, 1, 14, 14, 14, 14],
				[5, 5, 14, 14, 14, 14, 14, 14, 0, 0, 1, 14, 14, 14, 14],
				[5, 5, 14, 14, 14, 14, 14, 0, 0, 0, 1, 0, 14, 14, 14],
				[5, 5, 0, 14, 14, 14, 14, 0, 0, 0, 1, 0, 14, 14, 14],
				[5, 5, 5, 0, 0, 14, 0, 0, 0, 0, 1, 0, 14, 14, 0],
				[42, 42, 13, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 23, 18],
				[42, 47, 53, 53, 1, 1, 1, 1, 1, 1, 1, 1, 39, 18, 18],
				[42, 48, 53, 53, 1, 1, 1, 1, 1, 1, 37, 37, 39, 18, 18],
				[42, 42, 13, 0, 0, 0, 0, 0, 0, 23, 37, 37, 39, 18, 0],
				[5, 5, 5, 0, 0, 0, 0, 0, 23, 39, 37, 37, 39, 22, 5],
				[5, 5, 0, 0, 0, 23, 18, 18, 18, 39, 37, 37, 22, 0, 5],
				[5, 13, 23, 18, 18, 18, 18, 18, 18, 39, 37, 37, 0, 5, 5],
				[18, 18, 18, 18, 18, 18, 18, 18, 18, 22, 1, 1, 43, 94, 94],
				[18, 18, 18, 18, 18, 18, 18, 22, 0, 0, 1, 1, 44, 94, 94],
				[18, 52, 18, 18, 18, 22, 0, 0, 0, 0, 0, 0, 0, 5, 5],
			]

			level8 = [
				[87, 51, 51, 51, 51, 51, 87, 37, 87, 51, 51, 51, 51, 51, 51],
				[51, 51, 87, 51, 51, 51, 52, 37, 52, 51, 51, 51, 51, 51, 51],
				[51, 51, 51, 51, 51, 87, 89, 37, 89, 51, 87, 51, 51, 51, 51],
				[51, 51, 51, 51, 51, 51, 89, 89, 87, 51, 51, 51, 87, 51, 51],
				[51, 87, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 87],
				[73, 51, 51, 51, 51, 51, 89, 89, 89, 51, 51, 51, 51, 51, 51],
				[83, 85, 83, 85, 73, 87, 89, 37, 89, 87, 51, 51, 51, 51, 51],
				[0, 75, 83, 83, 40, 5, 40, 37, 40, 5, 40, 73, 51, 87, 51],
				[0, 0, 1, 0, 5, 5, 5, 37, 5, 5, 5, 85, 73, 51, 51],
				[0, 0, 1, 0, 5, 5, 5, 1, 5, 5, 5, 75, 85, 83, 85],
				[12, 0, 1, 0, 40, 5, 40, 1, 40, 5, 40, 0, 0, 0, 12],
				[53, 53, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 53, 53],
				[12, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 12],
				[0, 0, 0, 42, 5, 0, 1, 1, 1, 0, 42, 42, 14, 14, 0],
				[14, 14, 42, 42, 5, 0, 1, 1, 1, 0, 42, 42, 42, 14, 14],
				[42, 42, 42, 42, 5, 0, 1, 1, 1, 0, 42, 42, 42, 42, 42],
			]

			level9 = [
				[51, 51, 51, 51, 51, 51, 74, 83, 83, 83, 83, 76, 14, 14, 14],
				[51, 87, 51, 51, 87, 51, 83, 83, 83, 83, 83, 0, 14, 14, 14],
				[51, 51, 51, 51, 51, 74, 83, 83, 83, 83, 76, 0, 0, 14, 14],
				[51, 87, 51, 51, 51, 85, 83, 83, 83, 80, 0, 0, 0, 0, 12],
				[51, 51, 51, 51, 51, 71, 83, 83, 85, 1, 1, 1, 1, 53, 53],
				[51, 87, 51, 51, 51, 51, 71, 76, 0, 1, 0, 0, 0, 0, 12],
				[89, 89, 89, 51, 51, 51, 51, 20, 0, 1, 0, 0, 14, 14, 14],
				[36, 36, 89, 51, 51, 51, 51, 18, 20, 1, 0, 0, 14, 14, 14],
				[36, 36, 89, 74, 85, 76, 18, 18, 39, 37, 20, 0, 0, 14, 14],
				[89, 89, 89, 83, 76, 0, 21, 18, 39, 37, 87, 20, 0, 0, 0],
				[51, 87, 83, 83, 42, 40, 14, 18, 39, 37, 39, 18, 18, 18, 52],
				[51, 74, 83, 80, 40, 42, 14, 21, 87, 37, 39, 18, 18, 18, 18],
				[83, 85, 80, 1, 90, 0, 0, 0, 21, 37, 39, 18, 18, 18, 18],
				[76, 0, 0, 92, 1, 90, 42, 42, 42, 7, 42, 87, 39, 39, 52],
				[14, 14, 0, 0, 92, 1, 6, 94, 94, 94, 8, 1, 1, 53, 53],
				[14, 14, 14, 14, 14, 14, 42, 42, 42, 42, 42, 0, 0, 0, 12],
			]

			level10 = [
				[0, 16, 16, 16, 0, 14, 14, 14, 14, 14, 5, 5, 5, 5, 5],
				[0, 87, 16, 16, 24, 0, 14, 14, 14, 14, 14, 14, 141, 100, 99],
				[12, 38, 38, 38, 38, 0, 0, 0, 0, 14, 14, 0, 141, 103, 98],
				[37, 37, 37, 37, 37, 37, 1, 1, 1, 1, 0, 0, 141, 104, 106],
				[12, 87, 38, 38, 38, 0, 40, 14, 14, 1, 0, 0, 5, 5, 5],
				[77, 25, 16, 16, 16, 0, 5, 5, 5, 1, 40, 5, 40, 42, 40],
				[83, 0, 87, 16, 16, 24, 40, 42, 40, 1, 1, 141, "aem", "aem", "aem"],
				[85, 0, 16, 16, 16, 16, 43, 94, 5, 1, 1, 141, "aem", "aem", "aem"],
				[83, 0, 16, 16, 16, 16, 44, 94, 5, 1, 1, 141, "aem", "aem", "aem"],
				[83, 0, 87, 16, 16, 16, 40, 42, 40, 1, 1, 141, "aem", "aem", "aem"],
				[83, 77, 25, 16, 16, 16, 5, 5, 5, 1, 40, 5, 40, 5, 40],
				[83, 85, 0, 38, 38, 38, 40, 0, 0, 1, 0, 0, 5, 5, 42],
				[83, 83, 37, 37, 37, 37, 1, 1, 1, 1, 0, 0, 141, 100, 99],
				[83, 85, 77, 87, 38, 38, 24, 14, 14, 0, 0, 0, 141, 103, 98],
				[83, 83, 83, 25, 16, 16, 87, 0, 14, 14, 14, 14, 141, 104, 106],
				[83, 83, 85, 12, 16, 16, 16, 12, 14, 14, 5, 5, 5, 5, 5],
			]

			level11 = [
				[96, "av", 96, 96, 96, 96, 96, 96, 96, 96, "av", 96, 96, 96, 96],
				[96, "av", 96, 96, 96, 96, 96, 96, 96, 96, "av", 96, 96, 96, 96],
				[96, "av", 96, 96, 96, 96, 96, 96, 96, 96, "av", 96, 96, 96, 96],
				[96, "a3l", "ah", "ah", "a3t", "ah", "a3t", "ah", "ah", "ah", "a3r", 96, 96, 96, 96],
				[149, "av", 96, 96, "av", 96, "av", 100, 99, 101, "a3l", "ah", "ah", "ah", "ah"],
				["ah", "a3r", 96, 96, "av", 96, "av", 103, 98, 102, "av", 96, 96, 122, 110],
				[149, "atr", "ah", "ah", "atl", 96, "av", 104, 106, 105, "av", 96, 96, 124, 98],
				[96, 96, 96, 96, 96, 96, "a3l", "ah", "ah", "ah", "atl", 122, 110, 146, 98],
				[110, 110, 110, 110, 119, 96, "av", 96, 96, 96, 96, 124, 98, 98, 98],
				[98, 98, 98, 98, 123, 96, "av", 96, 96, 96, 96, 124, 98, 98, 148],
				[98, 98, 98, 98, 123, 96, "av", 122, 110, 110, 110, 146, 98, 148, 120],
				[98, 98, 98, 98, 123, 96, "av", 124, 98, 98, 98, 98, 98, 123, 96],
				[98, 98, 98, 98, 123, 96, "av", 124, 98, 98, 98, 98, 98, 123, "ah"],
				[98, 98, 98, 98, 123, 96, "av", 124, 98, 98, 98, 98, 98, 123, "ah"],
				[98, 98, 98, 98, 123, 96, "av", 124, 98, 98, 98, 98, 148, 120, 96],
				[98, 98, 98, 98, 123, 149, "av", 124, 98, 98, 98, 98, 123, 96, "ah"],
			]

			level12 = [
				[98, 98, 125, 115, 96, 149, "av", 149, 96, 177, 178, 115, 96, 96, 96],
				[98, 98, 125, 115, 96, 96, "av", 96, 96, 177, 178, 115, 96, 96, 96],
				[98, 98, 125, 115, 96, 96, "av", 96, 96, 177, 178, 115, 96, 96, 96],
				[227, 227, 222, 218, "abr", "ah", "atl", 96, 96, 177, 178, 176, 96, 96, 96],
				[98, 98, 125, 115, "av", 96, 96, 96, 96, 177, 178, 162, 96, 96, 149],
				[98, 98, 125, 115, "av", 96, 96, 96, 96, 177, 178, 208, "a3t", "ah", "ah"],
				[98, 98, 125, 115, "av", 96, 96, 96, 96, 177, 178, 158, "av", 96, 149],
				[98, 98, 125, 115, "av", 96, 96, 96, 175, 213, 178, 176, "av", 122, 110],
				[98, 98, 125, 115, "av", 96, 96, 96, 177, 178, 215, 138, "av", 124, 98],
				[98, 98, 125, 115, "av", 96, 96, 96, 159, 178, 176, 96, "av", 124, 98],
				[98, 98, 125, 115, "a3l", "ah", "ah", "ah", 209, 178, 176, 96, "av", 124, 98],
				[98, 98, 125, 115, "av", 96, 96, 96, 163, 178, 176, 96, "av", 124, 98],
				[126, 126, 130, 115, "av", 96, 96, 96, 177, 178, 115, 96, "av", 124, 98],
				[107, 107, 107, 112, "av", 96, 175, 171, 213, 178, 115, 96, "av", 124, 98],
				[96, 96, 96, 96, "av", 96, 177, 215, 107, 107, 138, 96, "av", 124, 98],
				[96, 96, 96, 96, "av", 96, 177, 115, 96, 96, 96, 96, "av", 124, 98],
			]
			
			level13 = [
				[98   ,98   ,98   ,98   ,98   ,240  ,98   ,98   ,98   ,240  ,98   ,98   ,98   ,98   ,98   ],
				[98   ,98   ,98   ,98   ,98   ,239  ,98   ,98   ,98   ,239  ,98   ,98   ,98   ,98   ,238  ],
				[106  ,235  ,240  ,98   ,98   ,240  ,98   ,98   ,98   ,240  ,98   ,98   ,238  ,105  ,105  ],
				[96   ,104  ,235  ,98   ,98   ,98   ,98   ,98   ,98   ,98   ,98   ,98   ,102  ,96   ,149  ],
				[96   ,"ab" ,103  ,98   ,98   ,98   ,98   ,98   ,98   ,98   ,98   ,98   ,102  ,"abr","ah" ],
				[96   ,"av" ,103  ,98   ,98   ,98   ,98   ,98   ,98   ,98   ,98   ,240  ,102  ,"av" ,149  ],
				[96   ,"av" ,104  ,235  ,240  ,98   ,98   ,98   ,98   ,98   ,98   ,98   ,102  ,"av" ,96   ],
				[96   ,"av" ,96   ,103  ,98   ,98   ,98   ,98   ,98   ,98   ,240  ,238  ,105  ,"av" ,96   ],
				[96   ,"av" ,96   ,104  ,235  ,98   ,240  ,98   ,98   ,98   ,238  ,105  ,96   ,"av" ,96   ],
				[96   ,"av" ,96   ,96   ,104  ,106  ,235  ,98   ,98   ,240  ,102  ,96   ,96   ,"av" ,96   ],
				[96   ,"av" ,96   ,96   ,96   ,96   ,104  ,106  ,106  ,106  ,105  ,96   ,96   ,"av" ,96   ],
				[96   ,"av" ,96   ,96   ,"abr","ah" ,"ah" ,"ah" ,"ah" ,"abl",96   ,96   ,96   ,"av" ,96   ],
				[96   ,"av" ,96   ,96   ,"av" ,96   ,96   ,96   ,96   ,"atr","ah" ,"a3t","ah" ,"a3r",96   ],
				[96   ,"atr","a3t","ah" ,"a3r",175  ,171  ,171  ,171  ,171  ,111  ,"av" ,114  ,198  ,171  ],
				[96   ,96   ,"av" ,96   ,"atr",197  ,178  ,187  ,183  ,183  ,133  ,"av" ,116  ,215  ,170  ],
				[96   ,96   ,"av" ,96   ,96   ,177  ,178  ,182  ,98   ,98   ,123  ,"av" ,116  ,176  ,96   ],
			]
			
			level14 = [
				[118  ,118  ,118  ,118  ,179  ,179  ,179  ,118  ,118  ,118  ,118  ,118  ,118  ,118  ,118  ],
				[118  ,118  ,118  ,118  ,179  ,179  ,179  ,118  ,118  ,118  ,118  ,118  ,118  ,118  ,118  ],
				[107  ,107  ,107  ,243  ,179  ,179  ,179  ,118  ,118  ,118  ,118  ,118  ,118  ,118  ,118  ],
				[96   ,96   ,96   ,139  ,161  ,211  ,165  ,243  ,118  ,118  ,118  ,246  ,107  ,107  ,107  ],
				[96   ,96   ,96   ,96   ,149  ,"av" ,149  ,139  ,107  ,107  ,107  ,138  ,96   ,96   ,96   ],
				[149  ,96   ,96   ,96   ,96   ,"av" ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				["ah" ,"ah" ,"abl",96   ,96   ,"atr","ah" ,"ah" ,"abl",96   ,96   ,96   ,96   ,96   ,96   ],
				[149  ,96   ,"av" ,96   ,96   ,96   ,96   ,96   ,"a3l","ah", "ah" ,"a3t","ah" ,"ah" ,"ah" ],
				[96   ,96   ,"a3l","ah" ,"ah" ,"abl",96   ,96   ,"av" ,96   ,96   ,"av" ,96   ,96   ,96   ],
				[96   ,96   ,"av" ,96   ,96   ,"atr","ah" ,"a3t","atl",96   ,96   ,"av" ,96   ,140  ,108  ],
				[96   ,140  ,198  ,108  ,137  ,96   ,96   ,"av" ,96   ,96   ,96   ,"av" ,140  ,244  ,118  ],
				[108  ,244  ,179  ,179  ,245  ,137  ,96   ,"av" ,96   ,140  ,108  ,198  ,244  ,118  ,118  ],
				[118  ,118  ,179  ,179  ,118  ,245  ,164  ,210  ,160  ,244  ,118  ,179  ,118  ,118  ,118  ],
				[118  ,118  ,179  ,179  ,118  ,118  ,179  ,179  ,179  ,118  ,118  ,179  ,118  ,118  ,118  ],
				[118  ,118  ,179  ,179  ,118  ,118  ,179  ,179  ,179  ,118  ,118  ,179  ,118  ,118  ,118  ],
				[118  ,118  ,179  ,179  ,118  ,118  ,179  ,179  ,179  ,118  ,118  ,179  ,118  ,118  ,118  ],
			]
			
			level15 = [
				[115  ,96   ,96   ,96   ,96   ,96   ,116  ,117  ,115  ,96   ,103  ,98   ,98   ,98   ,98   ],
				[162  ,149  ,96   ,96   ,96   ,96   ,177  ,178  ,162  ,96   ,103  ,98   ,98   ,240  ,98   ],
				[208  ,"ah" ,"abl",96   ,96   ,255  ,248  ,178  ,208  ,"ah" ,231  ,227  ,227  ,227  ,227  ],
				[158  ,149  ,"av" ,96   ,96   ,159  ,178  ,178  ,158  ,96   ,103  ,240  ,98   ,98   ,98   ],
				[115  ,96   ,"atr","ah" ,"ah" ,209  ,178  ,178  ,115  ,96   ,103  ,98   ,98   ,98   ,98   ],
				[112  ,100  ,99   ,99   ,101  ,163  ,178  ,250  ,257  ,96   ,103  ,98   ,98   ,240  ,98   ],
				[99   ,236  ,98   ,98   ,102  ,177  ,178  ,162  ,96   ,96   ,104  ,106  ,106  ,106  ,106  ],
				[98   ,98   ,98   ,238  ,105  ,177  ,178  ,208  ,"ah" ,"ah" ,"ah" ,"abl",96   ,96   ,96   ],
				[98   ,98   ,98   ,102  ,96   ,234  ,263  ,263  ,96   ,96   ,96   ,"atr","ah" ,"ah" ,"ah" ],
				[98   ,98   ,98   ,102  ,96   ,96   ,94   ,263  ,108  ,108  ,108  ,108  ,108  ,108  ,108  ],
				[98   ,98   ,98   ,102  ,96   ,96   ,50   ,49   ,128  ,128  ,128  ,128  ,128  ,128  ,128  ],
				[98   ,238  ,106  ,105  ,96   ,96   ,"aem","aem",103  ,240  ,98   ,240  ,98   ,98   ,98   ],
				[106  ,105  ,"abr","ah" ,"ah" ,"ah" ,"ah" ,"al" ,265  ,227  ,227  ,227  ,227  ,227  ,227  ],
				[96   ,96   ,"av" ,96   ,96   ,96   ,96   ,96   ,5    ,98   ,98   ,98   ,98   ,240  ,98   ],
				[96   ,96   ,"av" ,"aem",6    ,263  ,234  ,263  ,8    ,98   ,98   ,98   ,98   ,98   ,98   ],
				[149  ,96   ,"av" ,96   ,149  ,5    ,234  ,96   ,103  ,98   ,240  ,98   ,240  ,98   ,98   ],
			]
			
			level16 = [
				[96   ,96   ,96   ,"av" ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,"av" ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,149  ],
				[96   ,96   ,96   ,"atr","ah" ,"ah" ,"ah" ,"ah" ,"ah" ,"ah" ,"ah" ,"ah" ,"ah" ,"ah" ,"ah" ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,"aem","aem",96   ,96   ,96   ,96   ,96   ,149  ],
				[171  ,171  ,171  ,171  ,171  ,171  ,171  ,164  ,160  ,171  ,171  ,171  ,171  ,171  ,171  ],
				[179  ,179  ,179  ,179  ,179  ,179  ,179  ,263  ,94   ,179  ,179  ,179  ,179  ,179  ,179  ],
				[170  ,170  ,170  ,170  ,170  ,161  ,165  ,263  ,183  ,183  ,183  ,161  ,165  ,170  ,170  ],
				[96   ,96   ,96   ,96   ,96   ,"aem","aem",103  ,98   ,98   ,98   ,102  ,96   ,96   ,149  ],
				["ah" ,"ah" ,"ah" ,"ah" ,"ah" ,"ah" ,"al" ,103  ,98   ,98   ,98   ,102  ,"ar" ,"ah" ,"ah" ],
				[96   ,96   ,96   ,96   ,96   ,"aem","aem",103  ,98   ,98   ,98   ,237  ,96   ,96   ,149  ],
				[171  ,171  ,171  ,171  ,171  ,164  ,160  ,94   ,263  ,181  ,278  ,274  ,171  ,171  ,171  ],
				[179  ,179  ,179  ,94   ,263  ,179  ,179  ,263  ,263  ,263  ,179  ,179  ,179  ,179  ,179  ],
				[183  ,183  ,183  ,94   ,94   ,161  ,165  ,170  ,94   ,178  ,187  ,183  ,183  ,271  ,183  ],
				[98   ,98   ,98   ,98   ,102  ,"aem","aem",96   ,177  ,178  ,182  ,98   ,98   ,98   ,98   ],
				[227  ,227  ,227  ,227  ,266  ,"ah" ,"ah" ,"al" ,155  ,178  ,182  ,98   ,98   ,98   ,98   ],
				[98   ,98   ,98   ,98   ,102  ,96   ,96   ,96   ,177  ,178  ,182  ,98   ,98   ,98   ,98   ],
			]
			
			
			


			/*Create level:
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
				[96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ,96   ],
			*/

			//waypoints are points from which the monster must turn
			waypoints_x_1 = [-1, 2, 2, 4, 4, 8, 8, 10, 10, 13.5];
			waypoints_y_1 = [3, 3, 7, 7, 4, 4, 6, 6, 7, 7];
			waypoints_x_1_2 = [-1, 2, 2, 4, 4, 7, 7, 10, 10, 13.5];
			waypoints_y_1_2 = [3, 3, 7, 7, 11, 11, 9, 9, 7, 7];

			waypoints_x_2 = [-1, 2, 2, 5, 5, 9, 9, 14];
			waypoints_y_2 = [3, 3, 6, 6, 3, 3, 7, 7];
			waypoints_x_2_2 = [-1, 2, 2, 5, 5, 9, 9, 14]
			waypoints_y_2_2 = [10, 10, 8, 8, 11, 11, 7, 7]

			//(-1,6),(5,6),(5,11),(10,11),(10,7),(14.5,7)
			waypoints_x_3 = [-1, 3, 3, 10, 10, 13.5];
			waypoints_y_3 = [6, 6, 2, 2, 7, 7];
			waypoints_x_3_2 = [-1, 5, 5, 10, 10, 13.5]
			waypoints_y_3_2 = [6, 6, 11, 11, 7, 7]
			waypoints_x_3_3 = [-1, 5, 5, 10, 10, 13.5]
			waypoints_y_3_3 = [9, 9, 11, 11, 7, 7]

			waypoints_x_4 = [8, 8, 12, 12, 14]
			waypoints_y_4 = [-1, 5, 5, 12, 12]
			waypoints_x_4_2 = [8, 8, 5, 5]
			waypoints_y_4_2 = [-1, 10, 10, 16]
			waypoints_x_4_3 = [2, 2, 5, 5]
			waypoints_y_4_3 = [-1, 7, 7, 16]

			waypoints_x_5 = [3, 3, 7, 7]
			waypoints_y_5 = [16, 12, 12, -1]
			waypoints_x_5_2 = [11, 11, 7, 7]
			waypoints_y_5_2 = [16, 12, 12, -1]
			waypoints_x_5_3 = [11, 11, 15]
			waypoints_y_5_3 = [16, 4, 4]
			waypoints_x_5_4 = [-1, 4, 7, 7]
			waypoints_y_5_4 = [9, 6, 7, -1]
			waypoints_x_5_5 = [14, 13, 11, 11, 15]
			waypoints_y_5_5 = [16, 11, 10, 4, 4]
			waypoints_x_5_6 = [-1, 7, 7]
			waypoints_y_5_6 = [3, 3, -1]

			waypoints_x_6 = [-1, 2, 2, 15]
			waypoints_y_6 = [2, 2, 4, 4]
			waypoints_x_6_2 = [-1, 2, 2, 15]
			waypoints_y_6_2 = [7, 7, 4, 4]
			waypoints_x_6_3 = [-1, 2, 2, 15]
			waypoints_y_6_3 = [8, 8, 11, 11]
			waypoints_x_6_4 = [-1, 2, 2, 15]
			waypoints_y_6_4 = [13, 13, 11, 11]
			waypoints_x_6_5 = [7, 7]
			waypoints_y_6_5 = [-1, 16]

			waypoints_x_7 = [12.5, 10.5, 10.5, 0]
			waypoints_y_7 = [13.5, 13.5, 7.5, 7.5]
			waypoints_x_7_2 = [10, 10, 0]
			waypoints_y_7_2 = [-1, 7.5, 7.5]
			waypoints_x_7_3 = [12.5, 10.5, 10.5, 3, -2]
			waypoints_y_7_3 = [13.5, 13.5, 9.5, 14, 14]
			waypoints_x_7_4 = [15, 3, -2]
			waypoints_y_7_4 = [7, 14, 14]
			waypoints_x_7_5 = [6, 6, 0]
			waypoints_y_7_5 = [-2, 7.5, 7.5]

			waypoints_x_8 = [7, 7]
			waypoints_y_8 = [16, -2]
			waypoints_x_8_2 = [6, 6, -2]
			waypoints_y_8_2 = [16, 11, 11]
			waypoints_x_8_3 = [8, 8, 16]
			waypoints_y_8_3 = [16, 11, 11]
			waypoints_x_8_4 = [-2, 2, 2, -2]
			waypoints_y_8_4 = [1, 2, 11, 11]
			waypoints_x_8_5 = [-2, 7, 7]
			waypoints_y_8_5 = [1, 4, -2]
			waypoints_x_8_6 = [16, 7, 7]
			waypoints_y_8_6 = [7, 4, -2]

			waypoints_x_9 = [-2, 2.5, 2.5, 5, 16]
			waypoints_y_9 = [7.5, 7.5, 11.5, 14, 14]
			waypoints_x_9_2 = [-2, 2.5, 4.5, 10.5, 16]
			waypoints_y_9_2 = [7.5, 7.5, 5.5, 11.5, 11.5]
			waypoints_x_9_3 = [-2, 2.5, 8, 9, 9, 16]
			waypoints_y_9_3 = [7.5, 7.5, 2, 2, 4, 4]
			waypoints_x_9_4 = [2.5, 2.5, 10.5, 16]
			waypoints_y_9_4 = [-2, 3.5, 11.5, 11.5]
			waypoints_x_9_5 = [2.5, 2.5, 5, 16]
			waypoints_y_9_5 = [-2, 11.5, 14, 14]
			waypoints_x_9_6 = [9, 9, 16]
			waypoints_y_9_6 = [-2, 4, 4]
			waypoints_x_9_7 = [9, 9, 16]
			waypoints_y_9_7 = [14, 4, 4]
			waypoints_x_9_8 = [9, 9, 16]
			waypoints_y_9_8 = [14, 11.5, 11.5]

			waypoints_x_10 = [16, 9, 9, -2]
			waypoints_y_10 = [7, 7, 3, 3]
			waypoints_x_10_2 = [16, 9, 9, 4.5, 4.5]
			waypoints_y_10_2 = [8, 8, 12, 12, 17]
			waypoints_x_10_3 = [6.5, 4.5, 4.5]
			waypoints_y_10_3 = [7.5, 7.5, 17]
			waypoints_x_10_4 = [6.5, 4.5, 3, -2]
			waypoints_y_10_4 = [7.5, 7.5, 3, 3]
			waypoints_x_10_5 = [2.5, 2.5, -2]
			waypoints_y_10_5 = [-2, 3, 3]
			waypoints_x_10_6 = [-2, 4.5, 4.5]
			waypoints_y_10_6 = [12, 12, 17]
			waypoints_x_10_7 = [8, 8, -2]
			waypoints_y_10_7 = [-2, 3, 3]

			waypoints_x_11 = [16, 10, 10, 4, 4, 1, 1, -2]
			waypoints_y_11 = [4, 4, 3, 3, 6, 6, 5, 5]
			waypoints_x_11_2 = [16, 10, 10, 6, 6]
			waypoints_y_11_2 = [4, 4, 7, 7, 16]
			waypoints_x_11_3 = [10, 10, 4, 4, 1, 1, -2]
			waypoints_y_11_3 = [-2, 3, 3, 6, 6, 5, 5]
			waypoints_x_11_4 = [10, 10, 6, 6]
			waypoints_y_11_4 = [-2, 7, 7, 16]
			waypoints_x_11_5 = [1, 1, -2]
			waypoints_y_11_5 = [-2, 5, 5]
			waypoints_x_11_6 = [1, 1, 6, 6]
			waypoints_y_11_6 = [-2, 3, 3, 16]
			waypoints_x_11_7 = [16, 6, 6]
			waypoints_y_11_7 = [13, 13, 16]

			waypoints_x_12 = [-2, 6, 6]
			waypoints_y_12 = [3, 3, -2]
			waypoints_x_12_2 = [-2, 4, 4, 9.5, "tp", 9.5, 16]
			waypoints_y_12_2 = [3, 3, 10, 10, 3, 5, 5]
			waypoints_x_12_3 = [4, 4, 6, 6]
			waypoints_y_12_3 = [17, 3, 3, -2]
			waypoints_x_12_4 = [4, 4, 9.5, "tp", 9.5, 16]
			waypoints_y_12_4 = [17, 10, 10, 3, 5, 5]
			waypoints_x_12_5 = [12, 12, 16]
			waypoints_y_12_5 = [17, 5, 5]

			waypoints_x_13 = [11, 11, 13, 13, 16]
			waypoints_y_13 = [17, 12, 12, 4, 4]
			waypoints_x_13_2 = [11, 11, 9, 9, 7, 7]
			waypoints_y_13_2 = [17, 12, 12, 11, 11, -2]
			waypoints_x_13_3 = [2, 2, 1, 1, 16]
			waypoints_y_13_3 = [17, 13, 13, 4, 4]
			waypoints_x_13_4 = [2, 2, 4, 4, 7, 7]
			waypoints_y_13_4 = [17, 13, 13, 11, 11, -2]
			waypoints_x_13_5 = [2, 2, 4, 4, 6, "tp", 13, 13, 16]
			waypoints_y_13_5 = [17, 13, 13, 14, 14, 5, 14, 4, 4]
			waypoints_x_13_6 = [-2, 7, 7]
			waypoints_y_13_6 = [10, 4, -2]
			waypoints_x_13_7 = [7, 7]
			waypoints_y_13_7 = [17, -2]

			waypoints_x_14 = [16, 8, 8, 5, 5]
			waypoints_y_14 = [7, 7, 6, 6, 2]
			waypoints_x_14_2 = [16, 11, 11, "tp", 2, 2, -2]
			waypoints_y_14_2 = [7, 7, 13, 5, 12, 6, 6]
			waypoints_x_14_3 = [7, 7, 8, 8, 5, 5]
			waypoints_y_14_3 = [14, 9, 9, 6, 6, 2]
			waypoints_x_14_4 = [7, 7, 5, 5, 2, 2, -2]
			waypoints_y_14_4 = [14, 9, 9, 8, 8, 6, 6]
			waypoints_x_14_5 = [16, -2]
			waypoints_y_14_5 = [7, 6]

			waypoints_x_15 = [16, 7, "tp", 6.5, 2, 2, -1.5]
			waypoints_y_15 = [2, 2, 3, 4, 4, 2, 2]
			waypoints_x_15_2 = [16, 11, 11, 5.5, "tp", 6.5, 6.5, 2, 2]
			waypoints_y_15_2 = [8, 8, 7, 7, 0.5, 9, 12, 12, 18]
			waypoints_x_15_3 = [16, 6.5, 2, 2]
			waypoints_y_15_3 = [12, 12, 12, 18]
			waypoints_x_15_4 = [16, 11.5, 11.5, 7, "tp", 4.5, 2, 2]
			waypoints_y_15_4 = [12, 12, 14, 14, 1, 14, 14, 18]
			waypoints_x_15_5 = [16, 6.5, 6.5, "tp", 6.5, 2, 2, -1.5]
			waypoints_y_15_5 = [12, 12, 9, 2, 4, 4, 2, 2]
			waypoints_x_15_6 = [-2, 2, 2, -1.5]
			waypoints_y_15_6 = [9, 9, 2, 2]
			waypoints_x_15_7 = [-2, 2, 2]
			waypoints_y_15_7 = [9, 9, 18]

			waypoints_x_16 = [-2, 5.5, 5.5, "tp", 7.5, 7.5, 18]
			waypoints_y_16 = [8, 8, 5, 1, 5, 2, 2]
			waypoints_x_16_2 = [-2, 18]
			waypoints_y_16_2 = [8, 8]
			waypoints_x_16_3 = [3, 3, 18]
			waypoints_y_16_3 = [-2, 2, 2]
			waypoints_x_16_4 = [3, 3, 7.5, 7.5, "tp", 11.5, 11.5, 18]
			waypoints_y_16_4 = [-2, 2, 2, 5, 1, 5, 8, 8]
			waypoints_x_16_5 = [-2, 5.5, 5.5, "tp", 7.5, 7.5, 18]
			waypoints_y_16_5 = [14, 14, 5, 1, 5, 2, 2]
			waypoints_x_16_6 = [-2, 10, "tp", 10.5, 10.5, 18]
			waypoints_y_16_6 = [14, 14, 1, 11.5, 8, 8]
			waypoints_x_16_7 = [13, 13, "tp", 10.5, 10.5, 18]
			waypoints_y_16_7 = [16, 11, 1, 11, 8, 8]
			
			/*
			(-2, 8), (5.5, 8), (5.5, 5), ("tp", 1), (7.5, 5), (7.5, 2), (16, 2)
			(-2, 8), (16, 8)
			(3, -2), (3, 2), (16, 2)
			(3, -2), (3, 2), (7.5, 2), (7.5, 5), ("tp", 1), (11.5, 5), (11.5, 8), (16, 8)
			(-2, 14), (5.5, 14), (5.5, 5), ("tp", 1), (7.5, 5), (7.5, 2), (16, 2)
			(-2, 14), (8.5, 14), ("tp", 1), (10.5, 11), (10.5, 8), (16, 8)
			(13, 16), (13, 11), ("tp", 1), (10.5, 11), (10.5, 8), (16, 8)
			*/
			
			

			levels = [level1, level2, level3, level4, level5, level6, level7, level8, level9, level10, level11, level12, level13, level14, level15, level16];
			waypoints_x = [waypoints_x_1, waypoints_x_2, waypoints_x_3, waypoints_x_4, waypoints_x_5, waypoints_x_6, waypoints_x_7, waypoints_x_8, waypoints_x_9, waypoints_x_10, waypoints_x_11, waypoints_x_12, waypoints_x_13, waypoints_x_14, waypoints_x_15, waypoints_x_16];
			waypoints_y = [waypoints_y_1, waypoints_y_2, waypoints_y_3, waypoints_y_4, waypoints_y_5, waypoints_y_6, waypoints_y_7, waypoints_y_8, waypoints_y_9, waypoints_y_10, waypoints_y_11, waypoints_y_12, waypoints_y_13, waypoints_y_14, waypoints_y_15, waypoints_y_16];

			waypoints_x_m2 = [waypoints_x_1_2, waypoints_x_2_2, waypoints_x_3_2, waypoints_x_4_2, waypoints_x_5_2, waypoints_x_6_2, waypoints_x_7_2, waypoints_x_8_2, waypoints_x_9_2, waypoints_x_10_2, waypoints_x_11_2, waypoints_x_12_2, waypoints_x_13_2, waypoints_x_14_2, waypoints_x_15_2, waypoints_x_16_2];
			waypoints_y_m2 = [waypoints_y_1_2, waypoints_y_2_2, waypoints_y_3_2, waypoints_y_4_2, waypoints_y_5_2, waypoints_y_6_2, waypoints_y_7_2, waypoints_y_8_2, waypoints_y_9_2, waypoints_y_10_2, waypoints_y_11_2, waypoints_y_12_2, waypoints_y_13_2, waypoints_y_14_2, waypoints_y_15_2, waypoints_y_16_2];

			waypoints_x_m3 = [undefined, undefined, waypoints_x_3_3, waypoints_x_4_3, waypoints_x_5_3, waypoints_x_6_3, waypoints_x_7_3, waypoints_x_8_3, waypoints_x_9_3, waypoints_x_10_3, waypoints_x_11_3, waypoints_x_12_3, waypoints_x_13_3, waypoints_x_14_3, waypoints_x_15_3, waypoints_x_16_3];
			waypoints_y_m3 = [undefined, undefined, waypoints_y_3_3, waypoints_y_4_3, waypoints_y_5_3, waypoints_y_6_3, waypoints_y_7_3, waypoints_y_8_3, waypoints_y_9_3, waypoints_y_10_3, waypoints_y_11_3, waypoints_y_12_3, waypoints_y_13_3, waypoints_y_14_3, waypoints_y_15_3, waypoints_y_16_3];

			waypoints_x_m4 = [undefined, undefined, undefined, undefined, waypoints_x_5_4, waypoints_x_6_4, waypoints_x_7_4, waypoints_x_8_4, waypoints_x_9_4, waypoints_x_10_4, waypoints_x_11_4, waypoints_x_12_4, waypoints_x_13_4, waypoints_x_14_4, waypoints_x_15_4, waypoints_x_16_4];
			waypoints_y_m4 = [undefined, undefined, undefined, undefined, waypoints_y_5_4, waypoints_y_6_4, waypoints_y_7_4, waypoints_y_8_4, waypoints_y_9_4, waypoints_y_10_4, waypoints_y_11_4, waypoints_y_12_4, waypoints_y_13_4, waypoints_y_14_4, waypoints_y_15_4, waypoints_y_16_4];

			waypoints_x_m5 = [undefined, undefined, undefined, undefined, waypoints_x_5_5, waypoints_x_6_5, waypoints_x_7_5, waypoints_x_8_5, waypoints_x_9_5, waypoints_x_10_5, waypoints_x_11_5, waypoints_x_12_5, waypoints_x_13_5, waypoints_x_14_5, waypoints_x_15_5, waypoints_x_16_5];
			waypoints_y_m5 = [undefined, undefined, undefined, undefined, waypoints_y_5_5, waypoints_y_6_5, waypoints_y_7_5, waypoints_y_8_5, waypoints_y_9_5, waypoints_y_10_5, waypoints_y_11_5, waypoints_y_12_5, waypoints_y_13_5, waypoints_y_14_5, waypoints_y_15_5, waypoints_y_16_5];

			waypoints_x_m6 = [undefined, undefined, undefined, undefined, waypoints_x_5_6, undefined, undefined, waypoints_x_8_6, waypoints_x_9_6, waypoints_x_10_6, waypoints_x_11_6, undefined, waypoints_x_13_6, undefined, waypoints_x_15_6, waypoints_x_16_6];
			waypoints_y_m6 = [undefined, undefined, undefined, undefined, waypoints_y_5_6, undefined, undefined, waypoints_y_8_6, waypoints_y_9_6, waypoints_y_10_6, waypoints_y_11_6, undefined, waypoints_y_13_6, undefined, waypoints_y_15_6, waypoints_y_16_6];

			waypoints_x_m7 = [undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, waypoints_x_9_7, waypoints_x_10_7, waypoints_x_11_7, undefined, waypoints_x_13_7, undefined, waypoints_x_15_7, waypoints_x_16_7];
			waypoints_y_m7 = [undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, waypoints_y_9_7, waypoints_y_10_7, waypoints_y_11_7, undefined, waypoints_y_13_7, undefined, waypoints_y_15_7, waypoints_y_16_7];

			waypoints_x_m8 = [undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, waypoints_x_9_8, undefined, undefined, undefined, undefined, undefined, undefined, undefined];
			waypoints_y_m8 = [undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, waypoints_y_9_8, undefined, undefined, undefined, undefined, undefined, undefined, undefined];


			//trace("---I---")
			for (var i = 0; i < waypoints_x.length; i++) {
				if (waypoints_x[i] != undefined) {
					for (var j = 0; j < waypoints_x[i].length; j++) {
						if (waypoints_x[i][j] != "tp") {
							waypoints_x[i][j] *= 30
							waypoints_x[i][j] += 15
						}

					}
					//trace(waypoints_x[i][j])

				}
			}
			//trace("---I1---")
			for (var i1 = 0; i1 < waypoints_y.length; i1++) {
				if (waypoints_y[i1] != undefined) {
					for (var j1 = 0; j1 < waypoints_y[i1].length; j1++) {
						if (waypoints_y[i1][j1] != "tp") {
							waypoints_y[i1][j1] *= 30
							waypoints_y[i1][j1] += 15
						}
					}

				}
			}
			//trace("---I2---")

			for (var i2 = 0; i2 < waypoints_x_m2.length; i2++) {
				if (waypoints_x_m2[i2] != undefined) {
					for (var j2 = 0; j2 < waypoints_x_m2[i2].length; j2++) {
						if (waypoints_x_m2[i2][j2] != "tp") {
							waypoints_x_m2[i2][j2] *= 30
							waypoints_x_m2[i2][j2] += 15
						}
					}
				}
			}
			//trace("---I3---")
			for (var i3 = 0; i3 < waypoints_y_m2.length; i3++) {
				if (waypoints_y_m2[i3] != undefined) {
					for (var j3 = 0; j3 < waypoints_y_m2[i3].length; j3++) {
						if (waypoints_y_m2[i3][j3] != "tp") {
							waypoints_y_m2[i3][j3] *= 30
							waypoints_y_m2[i3][j3] += 15
						}
					}


				}
			}

			for (var i4 = 0; i4 < waypoints_x_m3.length; i4++) {
				if (waypoints_x_m3[i4] != undefined) {
					for (var j4 = 0; j4 < waypoints_x_m3[i4].length; j4++) {
						if (waypoints_x_m3[i4][j4] != "tp") {
							waypoints_x_m3[i4][j4] *= 30
							waypoints_x_m3[i4][j4] += 15
						}
					}
				}
			}
			//trace("---I3---")
			for (var i5 = 0; i5 < waypoints_y_m3.length; i5++) {
				if (waypoints_y_m3[i5] != undefined) {
					for (var j5 = 0; j5 < waypoints_y_m3[i5].length; j5++) {
						if (waypoints_y_m3[i5][j5] != "tp") {
							waypoints_y_m3[i5][j5] *= 30
							waypoints_y_m3[i5][j5] += 15
						}
					}


				}
			}

			for (var i6 = 0; i6 < waypoints_x_m4.length; i6++) {
				if (waypoints_x_m4[i6] != undefined) {
					for (var j6 = 0; j6 < waypoints_x_m4[i6].length; j6++) {
						if (waypoints_x_m4[i6][j6] != "tp") {
							waypoints_x_m4[i6][j6] *= 30
							waypoints_x_m4[i6][j6] += 15
						}
					}
				}
			}
			//trace("---I3---")
			for (var i7 = 0; i7 < waypoints_y_m4.length; i7++) {
				if (waypoints_y_m4[i7] != undefined) {
					for (var j7 = 0; j7 < waypoints_y_m4[i7].length; j7++) {
						if (waypoints_y_m4[i7][j7] != "tp") {
							waypoints_y_m4[i7][j7] *= 30
							waypoints_y_m4[i7][j7] += 15
						}
					}
				}
			}

			for (var i8 = 0; i8 < waypoints_x_m5.length; i8++) {
				if (waypoints_x_m5[i8] != undefined) {
					for (var j8 = 0; j8 < waypoints_x_m5[i8].length; j8++) {
						if (waypoints_x_m5[i8][j8] != "tp") {
							waypoints_x_m5[i8][j8] *= 30
							waypoints_x_m5[i8][j8] += 15
						}
					}
				}
			}

			for (var i9 = 0; i9 < waypoints_y_m5.length; i9++) {
				if (waypoints_y_m5[i9] != undefined) {
					for (var j9 = 0; j9 < waypoints_y_m5[i9].length; j9++) {
						if (waypoints_y_m5[i9][j9] != "tp") {
							waypoints_y_m5[i9][j9] *= 30
							waypoints_y_m5[i9][j9] += 15
						}
					}
				}
			}

			for (var i10 = 0; i10 < waypoints_x_m6.length; i10++) {
				if (waypoints_x_m6[i10] != undefined) {
					for (var j10 = 0; j10 < waypoints_x_m6[i10].length; j10++) {
						if (waypoints_x_m6[i10][j10] != "tp") {
							waypoints_x_m6[i10][j10] *= 30
							waypoints_x_m6[i10][j10] += 15
						}
					}
				}
			}

			for (var i11 = 0; i11 < waypoints_y_m6.length; i11++) {
				if (waypoints_y_m6[i11] != undefined) {
					for (var j11 = 0; j11 < waypoints_y_m6[i11].length; j11++) {
						if (waypoints_y_m6[i11][j11] != "tp") {
							waypoints_y_m6[i11][j11] *= 30
							waypoints_y_m6[i11][j11] += 15
						}
					}
				}
			}

			for (var i12 = 0; i12 < waypoints_x_m7.length; i12++) {
				if (waypoints_x_m7[i12] != undefined) {
					for (var j12 = 0; j12 < waypoints_x_m7[i12].length; j12++) {
						if (waypoints_x_m7[i12][j12] != "tp") {
							waypoints_x_m7[i12][j12] *= 30
							waypoints_x_m7[i12][j12] += 15
						}
					}
				}
			}

			for (var i13 = 0; i13 < waypoints_y_m7.length; i13++) {
				if (waypoints_y_m7[i13] != undefined) {
					for (var j13 = 0; j13 < waypoints_y_m7[i13].length; j13++) {
						if (waypoints_y_m7[i13][j13] != "tp") {
							waypoints_y_m7[i13][j13] *= 30
							waypoints_y_m7[i13][j13] += 15
						}
					}
				}
			}


			for (var i14 = 0; i14 < waypoints_x_m8.length; i14++) {
				if (waypoints_x_m8[i14] != undefined) {
					for (var j14 = 0; j14 < waypoints_x_m8[i14].length; j14++) {
						if (waypoints_x_m8[i14][j14] != "tp") {
							waypoints_x_m8[i14][j14] *= 30
							waypoints_x_m8[i14][j14] += 15
						}
					}
				}
			}

			for (var i15 = 0; i15 < waypoints_y_m8.length; i15++) {
				if (waypoints_y_m8[i15] != undefined) {
					for (var j15 = 0; j15 < waypoints_y_m8[i15].length; j15++) {
						if (waypoints_y_m8[i15][j15] != "tp") {
							waypoints_y_m8[i15][j15] *= 30
							waypoints_y_m8[i15][j15] += 15
						}
					}
				}
			}


		}
	}
}