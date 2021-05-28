package {
	import flash.events.MouseEvent;
	import flash.events.Event;

	public class MainMenu {
		private var main: Main
		private var page


		public function MainMenu(m) {
			main = m
		}

		function playL1(e: MouseEvent) {
			main.currLevel = 1 - 1;
			main.startGame();
			main.sounds.playMusic(1);
		}

		function playL2(e: MouseEvent) {
			main.currLevel = 2 - 1;
			main.startGame();
			main.sounds.playMusic(1);
		}

		function playL3(e: MouseEvent) {
			main.currLevel = 3 - 1;
			main.startGame();
			main.sounds.playMusic(4);
		}

		function playL4(e: MouseEvent) {
			main.currLevel = 4 - 1;
			main.startGame();
			main.sounds.playMusic(4);
		}

		function playL5(e: MouseEvent) {
			main.currLevel = 5 - 1;
			main.startGame();
			main.sounds.playMusic(1);
		}

		function playL6(e: MouseEvent) {
			main.currLevel = 6 - 1;
			main.startGame();
			main.sounds.playMusic(5);
		}

		function playL7(e: MouseEvent) {
			main.currLevel = 7 - 1;
			main.startGame();
			main.sounds.playMusic(4);
		}

		function playL8(e: MouseEvent) {
			main.currLevel = 8 - 1;
			main.startGame();
			main.sounds.playMusic(1);
		}

		function playL9(e: MouseEvent) {
			main.currLevel = 9 - 1;
			main.startGame();
			main.sounds.playMusic(5);
		}

		function playL10(e: MouseEvent) {
			main.currLevel = 10 - 1;
			main.startGame();
			main.sounds.playMusic(4);
		}

		function playL11(e: MouseEvent) {
			main.currLevel = 11 - 1;
			main.startGame();
			main.sounds.playMusic(2);
		}

		function playL12(e: MouseEvent) {
			main.currLevel = 12 - 1;
			main.startGame();
			main.sounds.playMusic(2);
		}

		function playL13(e: MouseEvent) {
			main.currLevel = 13 - 1;
			main.startGame();
			main.sounds.playMusic(3);
		}

		function playL14(e: MouseEvent) {
			main.currLevel = 14 - 1;
			main.startGame();
			main.sounds.playMusic(2);
		}

		function playL15(e: MouseEvent) {
			main.currLevel = 15 - 1;
			main.startGame();
			main.sounds.playMusic(5);
		}

		function playL16(e: MouseEvent) {
			main.currLevel = 16 - 1;
			main.startGame();
			main.sounds.playMusic(3);
		}


		private function next(e: MouseEvent) {
			if (page == 1) {
				page = 2
				main.prevBtn.x = 50
				main.prevBtn.y = 130
				main.level1btn.x = 100000
				main.level2btn.x = 100000
				main.level3btn.x = 100000
				main.level4btn.x = 100000
				main.level5btn.x = 100000
				main.level6btn.x = 100000
				main.level7btn.x = 100000
				main.level8btn.x = 100000
				main.level9btn.x = 100000
				main.level10btn.x = 100000
				main.image1.x = 100000
				if (main.highestLevel.data.number > 11 - 2) {
					main.level11btn.x = 100
					main.level11btn.y = 130
				}
				if (main.highestLevel.data.number > 12 - 2) {
					main.level12btn.x = 150
					main.level12btn.y = 130
				}
				if (main.highestLevel.data.number > 13 - 2) {
					main.level13btn.x = 200
					main.level13btn.y = 130
				}
				if (main.highestLevel.data.number > 14 - 2) {
					main.level14btn.x = 250
					main.level14btn.y = 130
				}
				if (main.highestLevel.data.number > 15 - 2) {
					main.level15btn.x = 300
					main.level15btn.y = 130
				}
				if (main.highestLevel.data.number > 16 - 2) {
					main.level16btn.x = 350
					main.level16btn.y = 130
				}
				if (main.highestLevel.data.number < 20) {
					main.nextBtn.x = 100000
				}

			}
		}
		private function prev(e: MouseEvent) {
			if (page == 2) {
				page = 1
				main.level1btn.x = 100
				main.level1btn.y = 130
				main.level2btn.x = 150
				main.level2btn.y = 130
				main.level3btn.x = 200
				main.level3btn.y = 130
				main.level4btn.x = 250
				main.level4btn.y = 130
				main.level5btn.x = 300
				main.level5btn.y = 130
				main.level6btn.x = 350
				main.level6btn.y = 130
				main.level7btn.x = 400
				main.level7btn.y = 130
				main.level8btn.x = 450
				main.level8btn.y = 130
				main.level9btn.x = 500
				main.level9btn.y = 130
				main.level10btn.x = 550
				main.level10btn.y = 130
				main.nextBtn.x = 600
				main.nextBtn.y = 130
				main.image1.x = 0
				main.image1.y = 170
				main.prevBtn.x = 100000
				main.level11btn.x = 100000
				main.level12btn.x = 100000
				main.level13btn.x = 100000
				main.level14btn.x = 100000
				main.level15btn.x = 100000
				main.level16btn.x = 100000
			}
		}

		public function playBtnUpHandler(e: MouseEvent) {
			main.sounds.setSoundTransform();
			main.playBtn.x = 10000
			main.levelMenu.x = 321
			main.levelMenu.y = 41
			page = 1
			if (main.highestLevel.data.number > 1 - 2) {
				main.level1btn.x = 100
				main.level1btn.y = 130
			}
			if (main.highestLevel.data.number > 2 - 2) {
				main.level2btn.x = 150
				main.level2btn.y = 130
			}
			if (main.highestLevel.data.number > 3 - 2) {
				main.level3btn.x = 200
				main.level3btn.y = 130
			}
			if (main.highestLevel.data.number > 4 - 2) {
				main.level4btn.x = 250
				main.level4btn.y = 130
			}
			if (main.highestLevel.data.number > 5 - 2) {
				main.level5btn.x = 300
				main.level5btn.y = 130
			}
			if (main.highestLevel.data.number > 6 - 2) {
				main.level6btn.x = 350
				main.level6btn.y = 130
			}
			if (main.highestLevel.data.number > 7 - 2) {
				main.level7btn.x = 400
				main.level7btn.y = 130
			}
			if (main.highestLevel.data.number > 8 - 2) {
				main.level8btn.x = 450
				main.level8btn.y = 130
			}
			if (main.highestLevel.data.number > 9 - 2) {
				main.level9btn.x = 500
				main.level9btn.y = 130
			}
			if (main.highestLevel.data.number > 10 - 2) {
				main.level10btn.x = 550
				main.level10btn.y = 130
			}
			if (main.highestLevel.data.number > 11 - 2) {
				main.nextBtn.x = 600
				main.nextBtn.y = 130
			}
			
			
			main.image1.x = 0
			main.image1.y = 170

			main.level1btn.addEventListener(MouseEvent.MOUSE_UP, playL1)
			main.level2btn.addEventListener(MouseEvent.MOUSE_UP, playL2)
			main.level3btn.addEventListener(MouseEvent.MOUSE_UP, playL3)
			main.level4btn.addEventListener(MouseEvent.MOUSE_UP, playL4)
			main.level5btn.addEventListener(MouseEvent.MOUSE_UP, playL5)
			main.level6btn.addEventListener(MouseEvent.MOUSE_UP, playL6)
			main.level7btn.addEventListener(MouseEvent.MOUSE_UP, playL7)
			main.level8btn.addEventListener(MouseEvent.MOUSE_UP, playL8)
			main.level9btn.addEventListener(MouseEvent.MOUSE_UP, playL9)
			main.level10btn.addEventListener(MouseEvent.MOUSE_UP, playL10)
			main.level11btn.addEventListener(MouseEvent.MOUSE_UP, playL11)
			main.level12btn.addEventListener(MouseEvent.MOUSE_UP, playL12)
			main.level13btn.addEventListener(MouseEvent.MOUSE_UP, playL13)
			main.level14btn.addEventListener(MouseEvent.MOUSE_UP, playL14)
			main.level15btn.addEventListener(MouseEvent.MOUSE_UP, playL15)
			main.level16btn.addEventListener(MouseEvent.MOUSE_UP, playL16)

			main.nextBtn.addEventListener(MouseEvent.MOUSE_UP, next)
			main.prevBtn.addEventListener(MouseEvent.MOUSE_UP, prev)

			main.image1.indexBtn.addEventListener(MouseEvent.MOUSE_UP, main.openIndex)
			main.image1.creditsBtn.addEventListener(MouseEvent.MOUSE_UP, main.openCredits)
			main.image1.settingsBtn.addEventListener(MouseEvent.MOUSE_UP, main.openSettings)
		}

	}

}