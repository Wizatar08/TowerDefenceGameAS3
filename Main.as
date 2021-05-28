package {
	import flash.ui.Keyboard;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.net.SharedObject;
	import com.adobe.tvsdk.mediacore.timeline.Placement;
	import com.adobe.tvsdk.mediacore.events.TimeChangeEvent;
	import flash.utils.Timer;
	import flash.utils.getTimer;
	import flash.events.KeyboardEvent;
	import flash.display.MovieClip;
	import flash.display.DisplayObject;
	import flash.display.InteractiveObject;
	import flash.display.DisplayObjectContainer;
	import flash.accessibility.AccessibilityProperties;


	//used for ENTER_FRAME event

	public class Main extends MovieClip {
		/*
		LEVELS POSSIBLE:
		1, 2, 3, 4, 5 (playtested)
		*/
		//Level waves
		private var level1: Level1 = new Level1(this)
			private var level2: Level2 = new Level2(this)
			private var level3: Level3 = new Level3(this)
			private var level4: Level4 = new Level4(this)
			private var level5: Level5 = new Level5(this)
			private var level6: Level6 = new Level6(this)
			private var level7: Level7 = new Level7(this)
			private var level8: Level8 = new Level8(this)
			private var level9: Level9 = new Level9(this)
			private var level10: Level10 = new Level10(this)
			private var level11: Level11 = new Level11(this)
			private var level12: Level12 = new Level12(this)
			private var level13: Level13 = new Level13(this)
			private var level14: Level14 = new Level14(this)
			private var level15: Level15 = new Level15(this)
			private var level16: Level16 = new Level16(this)

			public var levelWave: Array
		private var levelWave2: Array
		private var levelWave3: Array


		public var lastTime = getTimer();
		public var elapsedSeconds: Number;
		private var currentTime: Number;

		//constants
		const monster_startx: int = -15; //starting position the monster
		const monster_starty: int = 125; //starting position the monster
		const monster_speed: int = 2; //speed of the monster
		const monsterno: int = 10; //number of monsters

		//variables
		var currTower; //current Tower
		var currTile: Tile1; //current Tile
		var currGold: int = 100; //current Gold
		public var currLevel: int = 0; //current Level
		var gData: Data = new Data();
		var pinpoint = 0
		var countdown = 5 * stage.frameRate
		var countdown2 = 10 * stage.frameRate
		var wave
		var tmpTile: Tile1;
		var lives: int
		var screenLength: int
		var addPlaceable = true
		var placement: Placement = new Placement
		var selectedTower: MovieClip
		var statusTextDelay: int
		var haveInfo: Boolean
		public var tile: InvisibleTile = new InvisibleTile()
		var invisCount: int
		var levelArray: int
		var addTime: Boolean
		public var bossCount


		// Shared Objects
		var gems: SharedObject = SharedObject.getLocal("playerData")
			public var highestLevel: SharedObject = SharedObject.getLocal("playerData")

		//Managers
		var bm: BuildingManager
		var updates: UpdateManager
		var bosses: BossManager
		var rm: RobotManager
		var buM: BulletManager
		var menu: MainMenu
		public var settings: SettingsManager
		var fm: FogManager
		var sidebar: GameMenuHandler
		var variables: ConstantVariableManager
		public var sounds: SoundManager
		public var towerSpriteHandler: TowerHoverSprite;

		//Arrays
		public var nonPlacableTiles: Array = new Array(); //list of tiles on which towers cannot be placed
		var upgradableTiles: Array = new Array(); //list of tiles on which towers can be upgraded
		var level: Array = new Array(); //2D array for representing map
		public var monsters: Array = new Array(); //list of monsters in the game
		public var bullets: Array = new Array(); //list of bullets fired
		var bombs: Array = new Array(); //list of bullets fired
		public var towers: Array = new Array(); //list of towers placed
		public var stageObjects: Array = new Array(); //stores all the object's on the stage
		public var extraStageObjects: Array = new Array(); //stores all the object's on the stage
		public var waypointData: Array = new Array(); //stores which set of waypoint data a monster uses
		var mudTiles: Array = new Array();
		var mudTileList: Array = new Array();
		var mudTileBefore: Array = new Array();
		var goldTiles: Array = new Array();
		var goldTileList: Array = new Array();
		var goldTileBonus: Array = new Array();
		var goldTileDamage: Array = new Array();
		var goldTileBefore: Array = new Array();
		var scorchedTilesTime: Array = new Array();
		var scorchedTilesPos: Array = new Array();
		var decorationList: Array = new Array();
		var undetectableTiles: Array = new Array();
		public var fogList: Array = new Array();
		public var robotProjectiles: Array = new Array();

		//Waypoint arrays
		var waypoints_x: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_y: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_x_2: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_y_2: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_x_3: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_y_3: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_x_4: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_y_4: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_x_5: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_y_5: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_x_6: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_y_6: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_x_7: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_y_7: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_x_8: Array = new Array(); //waypoints for controlling motion of monsters
		var waypoints_y_8: Array = new Array(); //waypoints for controlling motion of monsters

		var tick: int = 0
		var levelNum: int = 0

		// Level screen
		var endScreen: EndScreen = new EndScreen();
		var isEnd: Boolean
		var startScreen: StartScreen = new StartScreen();
		var startScreenVar: Array = new Array();
		var pauseBtn: PauseButton = new PauseButton();
		var indexBtn: IndexButton = new IndexButton();
		var pauseScreen: PauseScreen = new PauseScreen();
		var index: Index;
		var credits: Credits;
		var indexMenu: IndexMenu = new IndexMenu();
		var creditsMenu: CreditsMenu = new CreditsMenu();
		var settingsMenu: SettingsMenu = new SettingsMenu();
		public var redScreen: RedScreen;
		public var redScreenAlpha = 0;

		public var monsterLayer1: MonstersLayer = new MonstersLayer();
		public var monsterLayer2: MonstersLayer = new MonstersLayer();
		public var monsterLayer3: MonstersLayer = new MonstersLayer();
		public var monsterLayer4: MonstersLayer = new MonstersLayer();
		public var monsterLayer5: MonstersLayer = new MonstersLayer();
		public var monsterLayer6: MonstersLayer = new MonstersLayer();
		public var monsterLayer7: MonstersLayer = new MonstersLayer();
		public var monsterLayer8: MonstersLayer = new MonstersLayer();
		public var towerLayer: TowersLayer = new TowersLayer();
		public var projLayer: ProjLayer = new ProjLayer();
		public var spriteLayer: SpriteLayer = new SpriteLayer();

		// Building buttons
		var BtnTower: TowerBtn = new TowerBtn()
		var BtnTower2: Tower2Btn = new Tower2Btn()
		var BtnTower3: Tower3Btn = new Tower3Btn()
		var BtnSlopDispenser: SlopDispenserBtn = new SlopDispenserBtn()
		var BtnSlopDispenser2: SlopDispenser2Btn = new SlopDispenser2Btn()
		var BtnSlopDispenser3: SlopDispenser3Btn = new SlopDispenser3Btn()
		var BtnLobber: LobberBtn = new LobberBtn()
		var BtnLobber2: Lobber2Btn = new Lobber2Btn()
		var BtnLobber3: Lobber3Btn = new Lobber3Btn()
		var BtnGoldHarvester: GoldHarvesterBtn = new GoldHarvesterBtn()
		var BtnGoldHarvester2: GoldHarvester2Btn = new GoldHarvester2Btn()
		var BtnGoldHarvester3: GoldHarvester3Btn = new GoldHarvester3Btn()
		var BtnHydrojetter: HydrojetterBtn = new HydrojetterBtn()
		var BtnHydrojetter2: Hydrojetter2Btn = new Hydrojetter2Btn()
		var BtnHydrojetter3: Hydrojetter3Btn = new Hydrojetter3Btn()
		var BtnExplosiveMine: Mine_explosiveBtn = new Mine_explosiveBtn()
		var BtnRevealMine: Mine_revealBtn = new Mine_revealBtn()
		var BtnTeleporterMine: Mine_teleporterBtn = new Mine_teleporterBtn()
		var BtnRepairBot: RepairBotBtn = new RepairBotBtn()
		var BtnBarricade: BarricadeBtn = new BarricadeBtn()
		var BtnManualExplosive: ManualExplosiveBtn = new ManualExplosiveBtn()
		var MenuText: menuText = new menuText();
		public var settingSavedVariables: SettingsSavedVariables = new SettingsSavedVariables();


		public function Main() {

			menu = new MainMenu(this)
			playBtn.addEventListener(MouseEvent.MOUSE_UP, menu.playBtnUpHandler);

			if (gems.data.amount == undefined) {
				gems.data.amount = 0
			}
			if (highestLevel.data.number == undefined) {
				highestLevel.data.number = 0
			}
			trace(highestLevel.data.number)

			index = new Index(this)
			credits = new Credits(this)
			settings = new SettingsManager(this)
			sounds = new SoundManager(this)
			towerSpriteHandler = new TowerHoverSprite(this)
			highestLevel.data.number = 15
			trace(gems.data.amount)
			trace(highestLevel.data.number)
		}

		//detects when a level button is pressed
		public function startGame() {
			gotoAndStop(3)
			start()
			if (currLevel == 1 - 1) {
				levelWave = level1.getLevel1();
			} else if (currLevel == 2 - 1) {
				levelWave = level2.getLevel2();
			} else if (currLevel == 3 - 1) {
				levelWave = level3.getLevel3();
			} else if (currLevel == 4 - 1) {
				levelWave = level4.getLevel4();
			} else if (currLevel == 5 - 1) {
				levelWave = level5.getLevel5();
			} else if (currLevel == 6 - 1) {
				levelWave = level6.getLevel6();
			} else if (currLevel == 7 - 1) {
				levelWave = level7.getLevel7();
			} else if (currLevel == 8 - 1) {
				levelWave = level8.getLevel8();
			} else if (currLevel == 9 - 1) {
				levelWave = level9.getLevel9();
			} else if (currLevel == 10 - 1) {
				levelWave = level10.getLevel10();
			} else if (currLevel == 11 - 1) {
				levelWave = level11.getLevel11();
			} else if (currLevel == 12 - 1) {
				levelWave = level12.getLevel12();
			} else if (currLevel == 13 - 1) {
				levelWave = level13.getLevel13();
			} else if (currLevel == 14 - 1) {
				levelWave = level14.getLevel14();
			} else if (currLevel == 15 - 1) {
				levelWave = level15.getLevel15();
			} else if (currLevel == 16 - 1) {
				levelWave = level16.getLevel16();
			}
			tick = 0


		}

		/////////////////////////////
		/////// LEVEL BUTTONS ///////
		/////////////////////////////


		// "Get" functions

		public function getIsEnd() {
			return isEnd
		}
		public function getMudTileList() {
			return mudTileList
		}
		public function getMudTileBefore() {
			return mudTileBefore
		}
		public function getWpointX() {
			return waypoints_x
		}
		public function getWpointY() {
			return waypoints_y
		}
		public function getWpointX2() {
			return waypoints_x_2
		}
		public function getWpointY2() {
			return waypoints_y_2
		}
		public function getWpointX3() {
			return waypoints_x_3
		}
		public function getWpointY3() {
			return waypoints_y_3
		}
		public function getWpointX4() {
			return waypoints_x_4
		}
		public function getWpointY4() {
			return waypoints_y_4
		}
		public function getWpointX5() {
			return waypoints_x_5
		}
		public function getWpointY5() {
			return waypoints_y_5
		}
		public function getWpointX6() {
			return waypoints_x_6
		}
		public function getWpointY6() {
			return waypoints_y_6
		}
		public function getWpointX7() {
			return waypoints_x_7
		}
		public function getWpointY7() {
			return waypoints_y_7
		}
		public function getWpointX8() {
			return waypoints_x_8
		}
		public function getWpointY8() {
			return waypoints_y_8
		}
		public function getLives() {
			return lives
		}
		public function getMonsters() {
			return monsters
		}
		public function getGoldTileList() {
			return goldTileList
		}
		public function getGoldTileDamage() {
			return goldTileDamage
		}
		public function getCurrGold() {
			return currGold
		}
		public function getUndetectableTiles() {
			return undetectableTiles
		}
		public function getMonsterSpeed() {
			return monster_speed
		}
		public function getWaypointData() {
			return waypointData
		}
		public function getGoldTileBonus() {
			return goldTileBonus
		}
		public function getLevelArray() {
			return level
		}
		public function getStageObjects() {
			return stageObjects
		}
		public function getGoldTiles() {
			return goldTiles
		}
		public function getBombs() {
			return bombs
		}
		public function getBullets() {
			return bullets
		}
		public function getSelectedTower() {
			return selectedTower
		}
		public function getCurrLevel() {
			return currLevel
		}
		public function getMenuText() {
			return menuText
		}
		public function getMudTiles() {
			return mudTiles
		}
		public function getTowers() {
			return towers
		}
		public function getIndexMenu() {
			return indexMenu
		}
		public function getCreditsMenu() {
			return creditsMenu
		}
		public function getSettingsMenu() {
			return settingsMenu
		}
		public function getBm() {
			return bm
		}
		public function getFrameRate() {
			return stage.frameRate
		}
		public function getL10() {
			return level10;
		}
		public function getL13() {
			return level13;
		}




		public function openIndex(e: MouseEvent) {
			indexMenu.x = 120
			indexMenu.y = 120
			addChild(indexMenu)
			if (currentFrame == 1) {
				level1btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL1)
				level2btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL2)
				level3btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL3)
				level4btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL4)
				level5btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL5)
				level6btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL6)
				level7btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL7)
				level8btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL8)
				level9btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL9)
				level10btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL10)
				level11btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL11)
				level12btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL12)
				level13btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL13)
				level14btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL14)
				level15btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL15)
				level16btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL16)
				image1.indexBtn.removeEventListener(MouseEvent.MOUSE_UP, openIndex)
				image1.creditsBtn.removeEventListener(MouseEvent.MOUSE_UP, openCredits)
				image1.settingsBtn.removeEventListener(MouseEvent.MOUSE_UP, openSettings)
			} else if (currentFrame == 3) {
				BtnTower.removeEventListener(MouseEvent.MOUSE_UP, TowerBtnUpHandler);
				BtnTower2.removeEventListener(MouseEvent.MOUSE_UP, TowerBtn2UpHandler);
				BtnTower3.removeEventListener(MouseEvent.MOUSE_UP, TowerBtn3UpHandler);
				BtnSlopDispenser.removeEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler);
				BtnSlopDispenser2.removeEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler2);
				BtnSlopDispenser3.removeEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler3);
				BtnLobber.removeEventListener(MouseEvent.MOUSE_UP, LobberBtnUpHandler);
				BtnLobber2.removeEventListener(MouseEvent.MOUSE_UP, LobberBtnUpHandler2);
				BtnLobber3.removeEventListener(MouseEvent.MOUSE_UP, LobberBtnUpHandler3);
				BtnGoldHarvester.removeEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler);
				BtnGoldHarvester2.removeEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler2);
				BtnGoldHarvester3.removeEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler3);
				BtnHydrojetter.removeEventListener(MouseEvent.MOUSE_UP, HydrojetterBtnUpHandler);
				BtnHydrojetter2.removeEventListener(MouseEvent.MOUSE_UP, HydrojetterBtnUpHandler2);
				BtnHydrojetter3.removeEventListener(MouseEvent.MOUSE_UP, HydrojetterBtnUpHandler3);
				BtnExplosiveMine.removeEventListener(MouseEvent.MOUSE_UP, ExplosiveMineBtnUpHandler);
				BtnRevealMine.removeEventListener(MouseEvent.MOUSE_UP, RevealMineBtnUpHandler);
				BtnTeleporterMine.removeEventListener(MouseEvent.MOUSE_UP, TeleporterMineBtnUpHandler);
				BtnRepairBot.removeEventListener(MouseEvent.MOUSE_UP, RepairBotBtnUpHandler);
				BtnBarricade.removeEventListener(MouseEvent.MOUSE_UP, BarricadeBtnUpHandler);
				BtnManualExplosive.removeEventListener(MouseEvent.MOUSE_UP, ManualExplosiveBtnUpHandler);
				stage.removeEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler);
				stage.removeEventListener(Event.ENTER_FRAME, onEnterFrameHandler);
				stage.removeEventListener(KeyboardEvent.KEY_UP, keyHandler)
				pauseBtn.removeEventListener(MouseEvent.MOUSE_UP, pauseBtnPress);
				indexBtn.removeEventListener(MouseEvent.MOUSE_UP, openIndex);
			}
			addEventListener(Event.ENTER_FRAME, index.update)
		}

		public function indexOut() {
			if (currentFrame == 1) {
				level1btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL1)
				level2btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL2)
				level3btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL3)
				level4btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL4)
				level5btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL5)
				level6btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL6)
				level7btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL7)
				level8btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL8)
				level9btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL9)
				level10btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL10)
				level11btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL11)
				level12btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL12)
				level13btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL13)
				level14btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL14)
				level15btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL15)
				level16btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL16)
				image1.indexBtn.addEventListener(MouseEvent.MOUSE_UP, openIndex)
				image1.creditsBtn.addEventListener(MouseEvent.MOUSE_UP, openCredits)
				image1.settingsBtn.addEventListener(MouseEvent.MOUSE_UP, openSettings)
			} else if (currentFrame == 3) {
				BtnTower.addEventListener(MouseEvent.MOUSE_UP, TowerBtnUpHandler);
				BtnTower2.addEventListener(MouseEvent.MOUSE_UP, TowerBtn2UpHandler);
				BtnTower3.addEventListener(MouseEvent.MOUSE_UP, TowerBtn3UpHandler);
				BtnSlopDispenser.addEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler);
				BtnSlopDispenser2.addEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler2);
				BtnSlopDispenser3.addEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler3);
				BtnLobber.addEventListener(MouseEvent.MOUSE_UP, LobberBtnUpHandler);
				BtnLobber2.addEventListener(MouseEvent.MOUSE_UP, LobberBtnUpHandler2);
				BtnLobber3.addEventListener(MouseEvent.MOUSE_UP, LobberBtnUpHandler3);
				BtnGoldHarvester.addEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler);
				BtnGoldHarvester2.addEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler2);
				BtnGoldHarvester3.addEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler3);
				BtnHydrojetter.addEventListener(MouseEvent.MOUSE_UP, HydrojetterBtnUpHandler);
				BtnHydrojetter2.addEventListener(MouseEvent.MOUSE_UP, HydrojetterBtnUpHandler2);
				BtnHydrojetter3.addEventListener(MouseEvent.MOUSE_UP, HydrojetterBtnUpHandler3);
				BtnExplosiveMine.addEventListener(MouseEvent.MOUSE_UP, ExplosiveMineBtnUpHandler);
				BtnRevealMine.addEventListener(MouseEvent.MOUSE_UP, RevealMineBtnUpHandler);
				BtnTeleporterMine.addEventListener(MouseEvent.MOUSE_UP, TeleporterMineBtnUpHandler);
				BtnRepairBot.addEventListener(MouseEvent.MOUSE_UP, RepairBotBtnUpHandler);
				BtnBarricade.addEventListener(MouseEvent.MOUSE_UP, BarricadeBtnUpHandler);
				BtnManualExplosive.addEventListener(MouseEvent.MOUSE_UP, ManualExplosiveBtnUpHandler);
				stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler);
				stage.addEventListener(Event.ENTER_FRAME, onEnterFrameHandler);
				stage.addEventListener(KeyboardEvent.KEY_UP, keyHandler)
				pauseBtn.addEventListener(MouseEvent.MOUSE_UP, pauseBtnPress);
				indexBtn.addEventListener(MouseEvent.MOUSE_UP, openIndex);
			}
			removeEventListener(Event.ENTER_FRAME, index.update)
			removeChild(indexMenu)

		}

		public function openCredits(e: MouseEvent) {
			creditsMenu.x = 120
			creditsMenu.y = 120
			addChild(creditsMenu)
			if (currentFrame == 1) {
				level1btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL1)
				level2btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL2)
				level3btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL3)
				level4btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL4)
				level5btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL5)
				level6btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL6)
				level7btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL7)
				level8btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL8)
				level9btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL9)
				level10btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL10)
				level11btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL11)
				level12btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL12)
				level13btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL13)
				level14btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL14)
				level15btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL15)
				level16btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL16)
				image1.indexBtn.removeEventListener(MouseEvent.MOUSE_UP, openIndex)
				image1.creditsBtn.removeEventListener(MouseEvent.MOUSE_UP, openCredits)
				image1.settingsBtn.removeEventListener(MouseEvent.MOUSE_UP, openSettings)
			}
		}

		public function creditsOut() {
			level1btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL1)
			level2btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL2)
			level3btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL3)
			level4btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL4)
			level5btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL5)
			level6btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL6)
			level7btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL7)
			level8btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL8)
			level9btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL9)
			level10btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL10)
			level11btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL11)
			level12btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL12)
			level13btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL13)
			level14btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL14)
			level15btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL15)
			level16btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL16)
			image1.indexBtn.addEventListener(MouseEvent.MOUSE_UP, openIndex)
			image1.creditsBtn.addEventListener(MouseEvent.MOUSE_UP, openCredits)
			image1.settingsBtn.addEventListener(MouseEvent.MOUSE_UP, openSettings)
			removeEventListener(Event.ENTER_FRAME, credits.update)
			removeChild(creditsMenu)

		}

		public function openSettings(e: MouseEvent) {
			settingsMenu.x = 120
			settingsMenu.y = 120
			addChild(settingsMenu)
			if (currentFrame == 1) {
				level1btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL1)
				level2btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL2)
				level3btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL3)
				level4btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL4)
				level5btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL5)
				level6btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL6)
				level7btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL7)
				level8btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL8)
				level9btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL9)
				level10btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL10)
				level11btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL11)
				level12btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL12)
				level13btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL13)
				level14btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL14)
				level15btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL15)
				level16btn.removeEventListener(MouseEvent.MOUSE_UP, menu.playL16)
				image1.indexBtn.removeEventListener(MouseEvent.MOUSE_UP, openIndex)
				image1.creditsBtn.removeEventListener(MouseEvent.MOUSE_UP, openCredits)
				image1.settingsBtn.removeEventListener(MouseEvent.MOUSE_UP, openSettings)
			}
			addEventListener(Event.ENTER_FRAME, settings.update)
		}

		public function settingsOut() {
			level1btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL1)
			level2btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL2)
			level3btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL3)
			level4btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL4)
			level5btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL5)
			level6btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL6)
			level7btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL7)
			level8btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL8)
			level9btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL9)
			level10btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL10)
			level11btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL11)
			level12btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL12)
			level13btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL13)
			level14btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL14)
			level15btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL15)
			level16btn.addEventListener(MouseEvent.MOUSE_UP, menu.playL16)
			image1.indexBtn.addEventListener(MouseEvent.MOUSE_UP, openIndex)
			image1.creditsBtn.addEventListener(MouseEvent.MOUSE_UP, openCredits)
			image1.settingsBtn.addEventListener(MouseEvent.MOUSE_UP, openSettings)
			removeChild(settingsMenu)
			removeEventListener(Event.ENTER_FRAME, settings.update)

		}

		function start() {
			/*	TOWERS: (486,110),(521,110),(554,110)
				MUD DISPENSERS: (488,159),(521,159),(555,159)
				LOBBERS: (489,201),(522,201),(557,201)
				HARVESTERS: (489,243),(522,243),(558,243)
			*/
			MenuText.x = 547
			MenuText.y = 239
			addChild(MenuText)

			BtnTower.x = 486
			BtnTower.y = 110
			BtnTower2.x = 521
			BtnTower2.y = 110
			BtnTower3.x = 554
			BtnTower3.y = 110
			BtnSlopDispenser.x = 488
			BtnSlopDispenser.y = 159
			BtnSlopDispenser2.x = 521
			BtnSlopDispenser2.y = 159
			BtnSlopDispenser3.x = 555
			BtnSlopDispenser3.y = 159
			BtnLobber.x = 489
			BtnLobber.y = 201
			BtnLobber2.x = 522
			BtnLobber2.y = 201
			BtnLobber3.x = 557
			BtnLobber3.y = 201
			BtnGoldHarvester.x = 489
			BtnGoldHarvester.y = 243
			BtnGoldHarvester2.x = 522
			BtnGoldHarvester2.y = 243
			BtnGoldHarvester3.x = 558
			BtnGoldHarvester3.y = 243
			BtnHydrojetter.x = 489
			BtnHydrojetter.y = 290
			BtnHydrojetter2.x = 522
			BtnHydrojetter2.y = 290
			BtnHydrojetter3.x = 558
			BtnHydrojetter3.y = 290
			BtnExplosiveMine.x = 489
			BtnExplosiveMine.y = 340
			BtnRevealMine.x = 522
			BtnRevealMine.y = 340
			BtnTeleporterMine.x = 558
			BtnTeleporterMine.y = 340
			BtnRepairBot.x = 489
			BtnRepairBot.y = 290
			BtnBarricade.x = 522
			BtnBarricade.y = 290
			BtnManualExplosive.x = 558
			BtnManualExplosive.y = 290
			addChild(BtnTower)
			addChild(BtnTower2)
			addChild(BtnTower3)
			addChild(BtnGoldHarvester)
			addChild(BtnGoldHarvester2)
			addChild(BtnGoldHarvester3)
			addChild(BtnLobber)
			addChild(BtnLobber2)
			addChild(BtnLobber3)
			addChild(BtnSlopDispenser)
			addChild(BtnSlopDispenser2)
			addChild(BtnSlopDispenser3)
			addChild(BtnHydrojetter)
			addChild(BtnHydrojetter2)
			addChild(BtnHydrojetter3)
			addChild(BtnExplosiveMine)
			addChild(BtnRevealMine)
			addChild(BtnTeleporterMine)
			addChild(BtnRepairBot)
			addChild(BtnBarricade)
			addChild(BtnManualExplosive)

			pauseBtn.x = 596
			pauseBtn.y = 39
			addChild(pauseBtn)
			indexBtn.x = 596
			indexBtn.y = 79
			addChild(indexBtn)

			if (currLevel == 1 - 1) {
				currGold = 180
			} else if (currLevel == 2 - 1) {
				currGold = 230
			} else if (currLevel == 3 - 1) {
				currGold = 340
			} else if (currLevel == 4 - 1) {
				currGold = 400
			} else if (currLevel == 5 - 1) {
				currGold = 700
			} else if (currLevel == 6 - 1) {
				currGold = 600
			} else if (currLevel == 7 - 1) {
				currGold = 750
			} else if (currLevel == 8 - 1) {
				currGold = 900
			} else if (currLevel == 9 - 1) {
				currGold = 1300
			} else if (currLevel == 10 - 1) {
				currGold = 1750
			} else if (currLevel == 11 - 1) {
				currGold = 800
			} else if (currLevel == 12 - 1) {
				currGold = 950
			} else if (currLevel == 13 - 1) {
				currGold = 1650
			} else if (currLevel == 14 - 1) {
				currGold = 1100
			} else if (currLevel == 15 - 1) {
				currGold = 1750
			} else if (currLevel == 16 - 1) {
				currGold = 1375 // 1200
			}

			gData.setUp(this);
			level = gData.levels[currLevel];
			wave = 0
			pinpoint = 0
			isEnd = false;
			statusTextDelay = 120
			invisCount = 0
			levelArray = 1
			addTime = true
			bossCount = 0

			startScreen.addEventListener(MouseEvent.CLICK, startScreenFunction)


			//waypoints are points from which the monster must turn
			waypoints_x = gData.waypoints_x[currLevel];
			waypoints_y = gData.waypoints_y[currLevel];
			waypoints_x_2 = gData.waypoints_x_m2[currLevel];
			waypoints_y_2 = gData.waypoints_y_m2[currLevel];
			waypoints_x_3 = gData.waypoints_x_m3[currLevel];
			waypoints_y_3 = gData.waypoints_y_m3[currLevel];
			waypoints_x_4 = gData.waypoints_x_m4[currLevel];
			waypoints_y_4 = gData.waypoints_y_m4[currLevel];
			waypoints_x_5 = gData.waypoints_x_m5[currLevel];
			waypoints_y_5 = gData.waypoints_y_m5[currLevel];
			waypoints_x_6 = gData.waypoints_x_m6[currLevel];
			waypoints_y_6 = gData.waypoints_y_m6[currLevel];
			waypoints_x_7 = gData.waypoints_x_m7[currLevel];
			waypoints_y_7 = gData.waypoints_y_m7[currLevel];
			waypoints_x_8 = gData.waypoints_x_m8[currLevel];
			waypoints_y_8 = gData.waypoints_y_m8[currLevel];


			lives = 10;

			BuildMap(level); //function for building the map
			/*
			for (var i: int = 0; i < monsterno; ++i) {
				if (i % 2 == 0) {
					createMonster(monster_startx - i * 30, waypoints_y[0]); //function for creating monsters
				} else {
					createMonster2(monster_startx - i * 30, waypoints_y[0]);
				}
			}
			*/

			endScreen.x = 1000
			endScreen.y = 1000

			startScreen.x = 120
			startScreen.y = 120
			startScreen.stop()
			if (currLevel == 0) {
				screenLength = 3
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level1")
			} else if (currLevel == 1) {
				screenLength = 1
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level2")
			} else if (currLevel == 2) {
				screenLength = 1
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level3")
			} else if (currLevel == 3) {
				screenLength = 1
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level4")
			} else if (currLevel == 4) {
				screenLength = 1
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level5")
			} else if (currLevel == 5) {
				screenLength = 1
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level6")
			} else if (currLevel == 6) {
				screenLength = 2
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level7")
			} else if (currLevel == 8 - 1) {
				screenLength = 2
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level8")
			} else if (currLevel == 9 - 1) {
				screenLength = 2
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level9")
			} else if (currLevel == 10 - 1) {
				screenLength = 1
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level10")
			} else if (currLevel == 11 - 1) {
				screenLength = 2
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level11")
			} else if (currLevel == 12 - 1) {
				screenLength = 2
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level12")
			} else if (currLevel == 13 - 1) {
				screenLength = 1
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level13")
			} else if (currLevel == 14 - 1) {
				screenLength = 3
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level14")
			} else if (currLevel == 15 - 1) {
				screenLength = 2
				addChild(startScreen)
				startScreenVar.push(startScreen)
				startScreenVar[0].gotoAndStop("Level15")
			} else {
				init()
			}

			for (var j = 0; j < startScreenVar.length; j++) {
				startScreenVar[j].SimpleButton = true
				startScreenVar[j].addEventListener(MouseEvent.CLICK, startScreenFunction)
			}
			//init();


		}

		function startScreenFunction(e: Event) {
			screenLength -= 1
			if (screenLength == 0) {
				removeChild(startScreenVar[0])
				startScreenVar.splice(1)
				init();
			} else {
				startScreenVar[0].gotoAndStop(startScreenVar[0].currentFrame + 1)
			}


		}

		function init(): void {
			//BtnTower


			BtnTower.addEventListener(MouseEvent.MOUSE_UP, TowerBtnUpHandler);
			BtnTower2.addEventListener(MouseEvent.MOUSE_UP, TowerBtn2UpHandler);
			BtnTower3.addEventListener(MouseEvent.MOUSE_UP, TowerBtn3UpHandler);
			BtnSlopDispenser.addEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler);
			BtnSlopDispenser2.addEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler2);
			BtnSlopDispenser3.addEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler3);
			BtnLobber.addEventListener(MouseEvent.MOUSE_UP, LobberBtnUpHandler);
			BtnLobber2.addEventListener(MouseEvent.MOUSE_UP, LobberBtnUpHandler2);
			BtnLobber3.addEventListener(MouseEvent.MOUSE_UP, LobberBtnUpHandler3);
			BtnGoldHarvester.addEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler);
			BtnGoldHarvester2.addEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler2);
			BtnGoldHarvester3.addEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler3);
			BtnHydrojetter.addEventListener(MouseEvent.MOUSE_UP, HydrojetterBtnUpHandler);
			BtnHydrojetter2.addEventListener(MouseEvent.MOUSE_UP, HydrojetterBtnUpHandler2);
			BtnHydrojetter3.addEventListener(MouseEvent.MOUSE_UP, HydrojetterBtnUpHandler3);
			BtnExplosiveMine.addEventListener(MouseEvent.MOUSE_UP, ExplosiveMineBtnUpHandler);
			BtnRevealMine.addEventListener(MouseEvent.MOUSE_UP, RevealMineBtnUpHandler);
			BtnTeleporterMine.addEventListener(MouseEvent.MOUSE_UP, TeleporterMineBtnUpHandler);
			BtnRepairBot.addEventListener(MouseEvent.MOUSE_UP, RepairBotBtnUpHandler);
			BtnBarricade.addEventListener(MouseEvent.MOUSE_UP, BarricadeBtnUpHandler);
			BtnManualExplosive.addEventListener(MouseEvent.MOUSE_UP, ManualExplosiveBtnUpHandler);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler);
			stage.addEventListener(Event.ENTER_FRAME, onEnterFrameHandler);
			startScreen.removeEventListener(MouseEvent.MOUSE_UP, startScreenFunction)
			stage.addEventListener(KeyboardEvent.KEY_UP, keyHandler)
			pauseBtn.addEventListener(MouseEvent.MOUSE_UP, pauseBtnPress);
			indexBtn.addEventListener(MouseEvent.MOUSE_UP, openIndex);


			tick = -1;

			bm = new BuildingManager(this)
			updates = new UpdateManager(this, bm)
			bosses = new BossManager(this)
			rm = new RobotManager(this)
			buM = new BulletManager(this)
			fm = new FogManager(this)
			sidebar = new GameMenuHandler(this)
			variables = new ConstantVariableManager(this)

			countdown = 5 * stage.frameRate
			countdown2 = 10 * stage.frameRate
			lastTime = getTimer();
		}

		// this function will restart the level

		//this function will build the map
		function BuildMap(level): void {
			lives = 10

			stageObjects = [
				[],
				[],
				[],
				[],
				[],
				[],
				[],
				[],
				[],
				[],
				[],
				[],
				[],
				[],
				[],
				[]
			]
			for (var i: int = 0; i < level.length; ++i) {
				for (var j: int = 0; j < level[i].length; ++j) { //two loops are needed for accessing elements of a 2D array
					if (level[i][j] >= 154 && level[i][j] <= 169) {
						var bottomTile = new Tile1(this);
						bottomTile.x = j * 30;
						bottomTile.y = i * 30;
						bottomTile.gotoAndStop(97);
						bottomTile.tile.gotoAndStop(Math.ceil(Math.random() * 5));
						addChild(bottomTile);
						extraStageObjects.push(bottomTile);
						bottomTile.redScreen.alpha = 0;
					} else if (level[i][j] == 196 || level[i][j] == 197 || level[i][j] == 200 || level[i][j] == 201 || level[i][j] == 204 || level[i][j] == 205 || level[i][j] == 208 || level[i][j] == 209) {
						var bottomTile1 = new Tile1(this);
						bottomTile1.x = j * 30;
						bottomTile1.y = i * 30;
						bottomTile1.gotoAndStop(96);
						bottomTile1.tile.gotoAndStop("h");
						addChild(bottomTile1);
						extraStageObjects.push(bottomTile1);
						bottomTile1.redScreen.alpha = 0;
					} else if (level[i][j] == 198 || level[i][j] == 199 || level[i][j] == 202 || level[i][j] == 203 || level[i][j] == 206 || level[i][j] == 207 || level[i][j] == 210 || level[i][j] == 211) {
						var bottomTile2 = new Tile1(this);
						bottomTile2.x = j * 30;
						bottomTile2.y = i * 30;
						bottomTile2.gotoAndStop(96);
						bottomTile2.tile.gotoAndStop("v");
						addChild(bottomTile2);
						extraStageObjects.push(bottomTile2);
						bottomTile2.redScreen.alpha = 0;
					} else if (level[i][j] >= 154 && level[i][j] <= 169) {
						var bottomTile3 = new Tile1(this);
						bottomTile3.x = j * 30;
						bottomTile3.y = i * 30;
						bottomTile3.gotoAndStop(97);
						bottomTile3.tile.gotoAndStop(Math.ceil(Math.random() * 5));
						addChild(bottomTile3);
						extraStageObjects.push(bottomTile3);
						bottomTile3.redScreen.alpha = 0;
					} else if (level[i][j] >= 268 && level[i][j] <= 283) {
						var bottomTile4 = new Tile1(this);
						bottomTile4.x = j * 30;
						bottomTile4.y = i * 30;
						bottomTile4.gotoAndStop(99);
						addChild(bottomTile4);
						extraStageObjects.push(bottomTile4);
						bottomTile4.redScreen.alpha = 0;
					}
					tmpTile = new Tile1(this);
					tmpTile.x = j * 30;
					tmpTile.y = i * 30;
					addChild(tmpTile);
					stageObjects[i].push(tmpTile);
					tmpTile.tileId = level[i][j]
					tmpTile.redScreen.alpha = 0;

					if (level[i][j] == "av") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("v")
						level[i][j] = 95
					} else if (level[i][j] == "ah") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("h")
						level[i][j] = 95
					} else if (level[i][j] == "atl") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("tl")
						level[i][j] = 95
					} else if (level[i][j] == "atr") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("tr")
						level[i][j] = 95
					} else if (level[i][j] == "abl") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("bl")
						level[i][j] = 95
					} else if (level[i][j] == "abr") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("br")
						level[i][j] = 95
					} else if (level[i][j] == "a3l") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("3l")
						level[i][j] = 95
					} else if (level[i][j] == "a3r") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("3r")
						level[i][j] = 95
					} else if (level[i][j] == "a3t") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("3t")
						level[i][j] = 95
					} else if (level[i][j] == "a3b") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("3b")
						level[i][j] = 95
					} else if (level[i][j] == "ar") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("r")
						level[i][j] = 95
					} else if (level[i][j] == "al") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("l")
						level[i][j] = 95
					} else if (level[i][j] == "at") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("t")
						level[i][j] = 95
					} else if (level[i][j] == "ab") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("b")
						level[i][j] = 95
					} else if (level[i][j] == "aal") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop("all")
						level[i][j] = 95
					} else if (level[i][j] == "aem") {
						tmpTile.gotoAndStop(96);
						stageObjects[i][j].tile.gotoAndStop(16 + Math.floor(Math.random() * 5))
						level[i][j] = 95
					} else if (level[i][j] == 96) {
						tmpTile.gotoAndStop(level[i][j] + 1);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 99) {
						tmpTile.gotoAndStop(100);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 100) {
						tmpTile.gotoAndStop(101);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 101) {
						tmpTile.gotoAndStop(102);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 102) {
						tmpTile.gotoAndStop(103);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 103) {
						tmpTile.gotoAndStop(104);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 104) {
						tmpTile.gotoAndStop(105);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 105) {
						tmpTile.gotoAndStop(106);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 106) {
						tmpTile.gotoAndStop(107);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 264) {
						tmpTile.gotoAndStop(265);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 265) {
						tmpTile.gotoAndStop(266);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 266) {
						tmpTile.gotoAndStop(267);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else if (level[i][j] == 267) {
						tmpTile.gotoAndStop(268);
						stageObjects[i][j].tile.gotoAndStop(Math.ceil(Math.random() * 5))
					} else {
						tmpTile.gotoAndStop(level[i][j] + 1);
					}

					if (level[i][j] != 0 && level[i][j] != 40 && level[i][j] != 85 && level[i][j] != 87 && level[i][j] != 96 && level[i][j] != 240) //add the tile to the nonPlacableTiles list if towers
						nonPlacableTiles.push(tmpTile); //cannot be placed on it
					if (level[i][j] == 16 || level[i][j] == 18 || level[i][j] == 51) {
						var waterTile = new Tile1(this);
						waterTile.x = j * 30
						waterTile.y = i * 30
						waterTile.gotoAndStop(18)
						undetectableTiles.push(waterTile)
						addChild(waterTile)
						waterTile.redScreen.alpha = 0;
					} else if (level[i][j] == 1 || level[i][j] == 94 || (level[i][j] >= 170 && level[i][j] <= 195) || (level[i][j] >= 255 && level[i][j] <= 259) || level[i][j] == 263) {
						undetectableTiles.push(tmpTile)
					}


					tmpTile.addEventListener(MouseEvent.ROLL_OVER, TurnOnTile);
					tmpTile.addEventListener(MouseEvent.ROLL_OUT, TurnOfTile);
				}
			}

			addChild(monsterLayer8)
			addChild(monsterLayer7)
			addChild(monsterLayer6)
			addChild(monsterLayer5)
			addChild(monsterLayer4)
			addChild(monsterLayer3)
			addChild(monsterLayer2)
			addChild(monsterLayer1)
			for (var i1 = 0; i1 < stageObjects.length; i1++) {
				for (var j1 = 0; j1 < stageObjects[i1].length; j1++) {
					if (stageObjects[i1][j1].currentFrame == 7 || stageObjects[i1][j1].currentFrame == 8 || stageObjects[i1][j1].currentFrame == 9 || stageObjects[i1][j1].currentFrame == 10 || stageObjects[i1][j1].currentFrame == 43 || stageObjects[i1][j1].currentFrame == 44 ||
						stageObjects[i1][j1].currentFrame == 45 || stageObjects[i1][j1].currentFrame == 46 || stageObjects[i1][j1].currentFrame == 47 || stageObjects[i1][j1].currentFrame == 48 || stageObjects[i1][j1].currentFrame == 49 || stageObjects[i1][j1].currentFrame == 50 || stageObjects[i1][j1].currentFrame == 51 || stageObjects[i1][j1].currentFrame == 58 || stageObjects[i1][j1].currentFrame == 59 ||
						stageObjects[i1][j1].currentFrame == 60 || stageObjects[i1][j1].currentFrame == 61 || stageObjects[i1][j1].currentFrame == 95 ||
						(stageObjects[i1][j1].currentFrame >= 154 && stageObjects[i1][j1].currentFrame <= 216) || (stageObjects[i1][j1].currentFrame >= 256 && stageObjects[i1][j1].currentFrame <= 260) || stageObjects[i1][j1].currentFrame == 264) {
						var newTile: Tile1
						newTile = stageObjects[i1][j1]
						newTile.gotoAndStop(stageObjects[i1][j1].currentFrame)
						newTile.x = stageObjects[i1][j1].x
						newTile.y = stageObjects[i1][j1].y
						removeChild(stageObjects[i1][j1])
						addChild(newTile)

					}
				}
			}

			for (var i2: int = 0; i2 < level.length; i2++) {
				for (var j2: int = 0; j2 < level[i2].length; j2++) {
					if (level[i2][j2] == 14) {
						for (var k = 0; k < 1; k++) {
							var decoration = new MapDecoration()
							decoration.x = (j2 * 30) + Math.random() * 30
							decoration.y = (i2 * 30) + Math.random() * 30
							decoration.gotoAndStop(Math.round(Math.random() * 4) + 6)
							addChild(decoration)
							decorationList.push(decoration)
						}
						for (var k1 = 0; k1 < 3; k1++) {
							var decoration1 = new MapDecoration()
							decoration1.x = (j2 * 30) + Math.random() * 30
							decoration1.y = (i2 * 30) + Math.random() * 30
							decoration1.gotoAndStop(Math.round(Math.random() * 4) + 1)
							addChild(decoration1)
							decorationList.push(decoration1)
						} // UPDATE TILE TEXTURES
					}
				}

			}

			addChild(placement)
			addChild(towerLayer)
			addChild(projLayer)
			addChild(spriteLayer)

			tile.x = 0
			tile.y = 0
			addChild(tile)

			removeChild(MenuText)
			addChild(MenuText)

			removeChild(BtnTower)
			removeChild(BtnTower2)
			removeChild(BtnTower3)
			removeChild(BtnGoldHarvester)
			removeChild(BtnGoldHarvester2)
			removeChild(BtnGoldHarvester3)
			removeChild(BtnLobber)
			removeChild(BtnLobber2)
			removeChild(BtnLobber3)
			removeChild(BtnSlopDispenser)
			removeChild(BtnSlopDispenser2)
			removeChild(BtnSlopDispenser3)
			removeChild(BtnHydrojetter)
			removeChild(BtnHydrojetter2)
			removeChild(BtnHydrojetter3)
			removeChild(BtnExplosiveMine)
			removeChild(BtnRevealMine)
			removeChild(BtnTeleporterMine)
			removeChild(BtnRepairBot)
			removeChild(BtnBarricade)
			removeChild(BtnManualExplosive)
			addChild(BtnTower)
			addChild(BtnTower2)
			addChild(BtnTower3)
			addChild(BtnGoldHarvester)
			addChild(BtnGoldHarvester2)
			addChild(BtnGoldHarvester3)
			addChild(BtnLobber)
			addChild(BtnLobber2)
			addChild(BtnLobber3)
			addChild(BtnSlopDispenser)
			addChild(BtnSlopDispenser2)
			addChild(BtnSlopDispenser3)
			addChild(BtnHydrojetter)
			addChild(BtnHydrojetter2)
			addChild(BtnHydrojetter3)
			addChild(BtnExplosiveMine)
			addChild(BtnRevealMine)
			addChild(BtnTeleporterMine)
			addChild(BtnRepairBot)
			addChild(BtnBarricade)
			addChild(BtnManualExplosive)

			pauseBtn.x = 596
			pauseBtn.y = 39
			removeChild(pauseBtn)
			addChild(pauseBtn)
			indexBtn.x = 596
			indexBtn.y = 79
			removeChild(indexBtn)
			addChild(indexBtn)

			var tower = currTower
			if (tower != null) {
				removeChild(currTower)
				addChild(tower)
			}
			var mudTile: Tile1 = new Tile1(this)
			mudTile.x = 10000
			mudTile.y = 10000
			mudTiles.push(-1)
			mudTileList.push(mudTile)
			mudTileBefore.push(-1)
			addChild(mudTile)




		}

		//this function is called when mouse is rolled over the tile
		function TurnOnTile(event: MouseEvent) {
			currTile = event.currentTarget as Tile1;
			if (currTile.tile != null) {
				var prev = currTile.tile.currentFrame;
			}

			if (checkPlacable(currTile) && currTower != null) {
				if (currTower.buildingType != "mine" && currTower.buildingType != "repair" && currTower.buildingType != "barricade") {
					if (currTile.currentFrame == 1) {
						currTile.gotoAndStop(3);
					} else if (currTile.currentFrame == 41) {
						currTile.gotoAndStop(42)
					} else if (currTile.currentFrame == 86) {
						currTile.gotoAndStop(87)
					} else if (currTile.currentFrame == 88) {
						currTile.gotoAndStop(89)
					} else if (currTile.currentFrame == 97) {
						currTile.gotoAndStop(98)
						currTile.tile.gotoAndStop(prev)
					} else if (currTile.currentFrame == 241) {
						currTile.gotoAndStop(242)
					}
				}
			} else if (checkPlacable(currTile) == false && currTower != null) {
				if (currTower.buildingType == "mine" || currTower.buildingType == "barricade") {
					if (currTile.currentFrame == 2) {
						currTile.gotoAndStop(63);
					} else if (currTile.currentFrame == 96) {
						var frame = currTile.tile.currentFrame
						currTile.gotoAndStop(233)
						currTile.tile.gotoAndStop(frame)
					}
				} else if (checkPlacable(currTile) == false && currTower.buildingType == "repair") {
					if (currTile.currentFrame == 285) {
						currTile.gotoAndStop(286);
					} else if (currTile.currentFrame == 243) {
						currTile.gotoAndStop(287);
					}
				}

			}



		}


		//this function is called when mouse is rolled out of the tile
		function TurnOfTile(event: MouseEvent) {
			var prevTile = event.currentTarget as Tile1;
			var getFrame = prevTile.currentFrame;
			if (prevTile.currentFrame == 3) {
				prevTile.gotoAndStop(1);
			} else if (prevTile.currentFrame == 98) {
				prevTile.gotoAndStop(97);
				prevTile.tile.gotoAndStop(getFrame)
			} else if (prevTile.currentFrame == 42) {
				prevTile.gotoAndStop(41);
			} else if (prevTile.currentFrame == 63) {
				prevTile.gotoAndStop(2);
			} else if (prevTile.currentFrame == 87) {
				prevTile.gotoAndStop(86);
			} else if (prevTile.currentFrame == 89) {
				prevTile.gotoAndStop(88);
			} else if (prevTile.currentFrame == 233) {
				var frame = prevTile.tile.currentFrame
				prevTile.gotoAndStop(96)
				prevTile.tile.gotoAndStop(frame)
			} else if (prevTile.currentFrame == 242) {
				prevTile.gotoAndStop(241);
			} else if (prevTile.currentFrame == 286) {
				prevTile.gotoAndStop(285);
			} else if (prevTile.currentFrame == 287) {
				prevTile.gotoAndStop(243);
			}
		}

		function pauseBtnPress(e: MouseEvent) {
			stage.removeEventListener(Event.ENTER_FRAME, onEnterFrameHandler)
			pauseScreen.x = 120
			pauseScreen.y = 120
			addChild(pauseScreen)
			pauseScreen.resumeBtn.addEventListener(MouseEvent.MOUSE_UP, resume)
			pauseScreen.quitBtn.addEventListener(MouseEvent.MOUSE_UP, quit)
			BtnTower.removeEventListener(MouseEvent.MOUSE_UP, TowerBtnUpHandler);
			BtnTower2.removeEventListener(MouseEvent.MOUSE_UP, TowerBtn2UpHandler);
			BtnTower3.removeEventListener(MouseEvent.MOUSE_UP, TowerBtn3UpHandler);
			BtnSlopDispenser.removeEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler);
			BtnSlopDispenser2.removeEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler2);
			BtnSlopDispenser3.removeEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler3);
			BtnGoldHarvester.removeEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler);
			BtnGoldHarvester2.removeEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler2);
			BtnGoldHarvester3.removeEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler3);
			BtnExplosiveMine.removeEventListener(MouseEvent.MOUSE_UP, ExplosiveMineBtnUpHandler);
			BtnRevealMine.removeEventListener(MouseEvent.MOUSE_UP, RevealMineBtnUpHandler);
			BtnTeleporterMine.removeEventListener(MouseEvent.MOUSE_UP, TeleporterMineBtnUpHandler);
			BtnRepairBot.removeEventListener(MouseEvent.MOUSE_UP, RepairBotBtnUpHandler);
			BtnBarricade.removeEventListener(MouseEvent.MOUSE_UP, BarricadeBtnUpHandler);
			BtnManualExplosive.removeEventListener(MouseEvent.MOUSE_UP, ManualExplosiveBtnUpHandler);
			stage.removeEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler);
			endScreen.backBtn.removeEventListener(MouseEvent.MOUSE_UP, endGame)
			stage.removeEventListener(KeyboardEvent.KEY_UP, keyHandler)
		}

		function resume(e: MouseEvent) {
			stage.addEventListener(Event.ENTER_FRAME, onEnterFrameHandler)
			pauseScreen.resumeBtn.removeEventListener(MouseEvent.MOUSE_UP, resume)
			pauseScreen.quitBtn.removeEventListener(MouseEvent.MOUSE_UP, quit)
			removeChild(pauseScreen)
			BtnTower.addEventListener(MouseEvent.MOUSE_UP, TowerBtnUpHandler);
			BtnTower2.addEventListener(MouseEvent.MOUSE_UP, TowerBtn2UpHandler);
			BtnTower3.addEventListener(MouseEvent.MOUSE_UP, TowerBtn3UpHandler);
			BtnSlopDispenser.addEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler);
			BtnSlopDispenser2.addEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler2);
			BtnSlopDispenser3.addEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler3);
			BtnGoldHarvester.addEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler);
			BtnGoldHarvester2.addEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler2);
			BtnGoldHarvester3.addEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler3);
			BtnExplosiveMine.addEventListener(MouseEvent.MOUSE_UP, ExplosiveMineBtnUpHandler);
			BtnRevealMine.addEventListener(MouseEvent.MOUSE_UP, RevealMineBtnUpHandler);
			BtnTeleporterMine.addEventListener(MouseEvent.MOUSE_UP, TeleporterMineBtnUpHandler);
			BtnRepairBot.addEventListener(MouseEvent.MOUSE_UP, RepairBotBtnUpHandler);
			BtnBarricade.addEventListener(MouseEvent.MOUSE_UP, BarricadeBtnUpHandler);
			BtnManualExplosive.addEventListener(MouseEvent.MOUSE_UP, ManualExplosiveBtnUpHandler);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler);
			endScreen.backBtn.addEventListener(MouseEvent.MOUSE_UP, endGame)
			stage.addEventListener(KeyboardEvent.KEY_UP, keyHandler);
		}

		function quit(e: MouseEvent) {
			removeChild(pauseScreen)
			removeChild(pauseBtn)
			removeChild(indexBtn)
			tick = 0
			countdown = 5 * stage.frameRate
			MenuText.statusTxt.text = ""
			clearStage()
			gotoAndStop(1)
			playBtn.addEventListener(MouseEvent.MOUSE_UP, menu.playBtnUpHandler);
			sounds.musicChannel.stop();
		}

		public function removeMonster(monster) {
			if (monster.thisLayer == 1) {
				monsterLayer1.removeChild(monster);
			} else if (monster.thisLayer == 2) {
				monsterLayer2.removeChild(monster);
			} else if (monster.thisLayer == 3) {
				monsterLayer3.removeChild(monster);
			} else if (monster.thisLayer == 4) {
				monsterLayer4.removeChild(monster);
			} else if (monster.thisLayer == 5) {
				monsterLayer5.removeChild(monster);
			} else if (monster.thisLayer == 6) {
				monsterLayer6.removeChild(monster);
			} else if (monster.thisLayer == 7) {
				monsterLayer7.removeChild(monster);
			} else if (monster.thisLayer == 8) {
				monsterLayer8.removeChild(monster);
			}
		}

		//this function clears the stage
		function clearStage(): void {
			/*trace("A")
			for (var m: int = 0; m < undetectableTiles.length; ++m) {
				removeChild(undetectableTiles[m]);

			}*/

			//trace("B")
			for (var j1: int = 0; j1 < towers.length; ++j1) {
				if (towers[j1] != null) {
					towerLayer.removeChild(towers[j1]);
					towers[j1] = null;
				}
			}
			//trace("C")
			for (var k: int = 0; k < monsters.length; ++k) {
				removeMonster(monsters[k]);

				towers[k] = null;

			}
			//trace("D")

			for (var l: int = 0; l < decorationList.length; ++l) {
				removeChild(decorationList[l]);

			}
			//trace("E")
			for (var m: int = 0; m < stageObjects.length; ++m) {
				for (var n: int = 0; n < stageObjects[m].length; n++) {
					if (stageObjects[m][n] != null) {
						removeChild(stageObjects[m][n]);
						stageObjects[m][n] = null;
					}

				}
			}

			for (var o: int = 0; o < extraStageObjects.length; ++o) {
				if (extraStageObjects[o] != null) {
					removeChild(extraStageObjects[o]);
					extraStageObjects[o] = null;

				}
			}
			//trace("F")

			if (currTower != null) {
				removeChild(currTower);
				currTower = null;
			}
			//trace("G")

			removeChild(MenuText)
			removeChild(BtnTower)
			removeChild(BtnTower2)
			removeChild(BtnTower3)
			removeChild(BtnGoldHarvester)
			removeChild(BtnGoldHarvester2)
			removeChild(BtnGoldHarvester3)
			removeChild(BtnLobber)
			removeChild(BtnLobber2)
			removeChild(BtnLobber3)
			removeChild(BtnSlopDispenser)
			removeChild(BtnSlopDispenser2)
			removeChild(BtnSlopDispenser3)
			removeChild(BtnHydrojetter)
			removeChild(BtnHydrojetter2)
			removeChild(BtnHydrojetter3)
			removeChild(BtnExplosiveMine)
			removeChild(BtnRevealMine)
			removeChild(BtnTeleporterMine)
			removeChild(BtnRepairBot)
			removeChild(BtnBarricade)
			removeChild(BtnManualExplosive)
			//trace("H")
			stageObjects.splice(0);
			nonPlacableTiles.splice(0);
			monsters.splice(0);
			towers.splice(0);
			bullets.splice(0);
			bombs.splice(0);
			goldTileBonus.splice(0);
			decorationList.splice(0);
			undetectableTiles.splice(0);

			removeChild(towerLayer);
			removeChild(projLayer);
			removeChild(monsterLayer1);
			removeChild(monsterLayer2);
			removeChild(monsterLayer3);
			removeChild(monsterLayer4);
			removeChild(monsterLayer5);
			removeChild(monsterLayer6);
			removeChild(monsterLayer7);
			removeChild(monsterLayer8);
			//trace("I")
		}

		/////////////////////////////////
		//////// MONSTER SPAWNING ///////
		/////////////////////////////////









		public function spawnMonster(xPos: int, yPos: int, monster: int, waydata: int, nwp) {
			var tmpMonster = rm.createNewMonsterGets(monster)
			tmpMonster.x = xPos
			tmpMonster.y = yPos
			addChild(tmpMonster);
			monsters.push(tmpMonster); //add the current monster to the list of monsters
			waypointData.push(waydata); //add the current monster to the list of monsters
			tmpMonster.nextWayPoint = nwp
			updates.updateBarrier();
		}

		//this function checks if a tower can be placed on a tile
		function checkPlacable(tile: Tile1): Boolean {
			for (var i: int = 0; i < nonPlacableTiles.length; ++i) {
				if (nonPlacableTiles[i] == tile)
					return false;
			}
			return true;
		}

		function checkUpgradable(tile: Tile1): Boolean {
			for (var i: int = 0; i < upgradableTiles.length; ++i) {
				if (upgradableTiles[i] == tile)
					return false;
			}
			return true;
		}

		//this function returns the distance between two movieclips
		public function getDistance(A: MovieClip, B: MovieClip): Number {
			return Math.pow(Math.pow(B.x - A.x, 2) + Math.pow(B.y - A.y, 2), 0.5);
		}

		//this function will move a monster in the game (using a loop we can move all monsters)


		//this function will update a tower(using a loop we can update all towers)


		public function addMudTile(mudTile) {
			addChild(mudTile)
			mudTile.redScreen.alpha = 0;
		}

		public function addGoldTile(goldTile) {
			addChild(goldTile)
			goldTile.redScreen.alpha = 0;
		}



		function keyHandler(event: KeyboardEvent) {
			if (event.keyCode == Keyboard.SPACE && currTower != null) {
				towerSpriteHandler.onTowerHoverOut(currTower);
				towerLayer.removeChild(currTower);
				currTower = null;
			}
			for (var i = 0; i < towers.length; i++) {
				var tower = towers[i]
				if (event.keyCode == Keyboard.SPACE && bm.selectedTower != null) {
					bm.upgradeTowerWithLoop(i)
				} else if (event.keyCode == Keyboard.NUMBER_1 && bm.selectedTower != null) {
					bm.upgradeToLevel4TowerPress1(i)
				} else if (event.keyCode == Keyboard.NUMBER_2 && bm.selectedTower != null) {
					bm.upgradeToLevel4TowerPress2(i)
				} else if (event.keyCode == Keyboard.NUMBER_3 && bm.selectedTower != null) {
					bm.upgradeToLevel4TowerPress3(i)
				} else if (event.keyCode == Keyboard.S && bm.selectedTower != null) {
					if ((mouseX > tower.x - 13 && mouseX < tower.x + 13) && (mouseY > tower.y - 13 && mouseY < tower.y + 13)) {
						for (var i1 = 0; i1 < upgradableTiles.length; i1++) {
							if (towers[i] == upgradableTiles[i1]) {
								upgradableTiles.splice(i1, 1)
							}
						}
						for (var i2 = 0; i2 < nonPlacableTiles.length; i2++) {
							if (tower.hitTestObject(nonPlacableTiles[i2])) {
								nonPlacableTiles.splice(i2, 1)
							}
						}
						currGold += (Math.round(tower.cost / 2))
						towerLayer.removeChild(tower)
						towers.splice(i, 1)
					}

				}
			}

		}




		public function onEnterFrameHandler(event: Event) {
			currentTime = getTimer();
			elapsedSeconds = (currentTime - lastTime) / 1000;


			tick += Math.round(elapsedSeconds * stage.frameRate);
			//trace(tick + ", " + elapsedSeconds + ", " + stage.frameRate)
			updates.updatePlacement()
			updates.constantUpdate(elapsedSeconds)
			statusTextDelay -= 1
			invisCount++
			sidebar.update(elapsedSeconds)
			rm.update(elapsedSeconds)
			buM.update(elapsedSeconds)
			bm.update(elapsedSeconds)
			fm.update(elapsedSeconds)
			variables.update(elapsedSeconds)

			if (lives <= 0) {
				/*
				lives = 0
				MenuText.txtLives.text = "0";
				isEnd = true
				endScreen.x = 120
				endScreen.y = 120
				addChild(endScreen)
				endScreen.statusText.text = "Game over!"
				endScreen.gemsText.text = ""
				endScreen.backBtn.addEventListener(MouseEvent.MOUSE_UP, endGame)
				stage.removeEventListener(Event.ENTER_FRAME, onEnterFrameHandler)*/
			}

			lastTime = currentTime;

			if (currTower != null) {
				towerSpriteHandler.onTowerHoverOut(currTower);
				towerSpriteHandler.onTowerHover(currTower, currTower.x, currTower.y, currTower.range);
			}

			//trace("---------------------------------------")
		}

		// End the game:
		function endGame(event: MouseEvent) {
			removeChild(endScreen)
			removeChild(pauseBtn)
			tick = 0
			countdown = 5 * stage.frameRate
			MenuText.statusTxt.text = ""
			clearStage()
			BtnTower.removeEventListener(MouseEvent.MOUSE_UP, TowerBtnUpHandler);
			BtnTower2.removeEventListener(MouseEvent.MOUSE_UP, TowerBtn2UpHandler);
			BtnTower3.removeEventListener(MouseEvent.MOUSE_UP, TowerBtn3UpHandler);
			BtnSlopDispenser.removeEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler);
			BtnSlopDispenser2.removeEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler2);
			BtnSlopDispenser3.removeEventListener(MouseEvent.MOUSE_UP, SlopDispenserBtnUpHandler3);
			BtnGoldHarvester.removeEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler);
			BtnGoldHarvester2.removeEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler2);
			BtnGoldHarvester3.removeEventListener(MouseEvent.MOUSE_UP, GoldHarvesterBtnUpHandler3);
			BtnExplosiveMine.removeEventListener(MouseEvent.MOUSE_UP, ExplosiveMineBtnUpHandler);
			BtnRepairBot.removeEventListener(MouseEvent.MOUSE_UP, RepairBotBtnUpHandler);
			BtnBarricade.removeEventListener(MouseEvent.MOUSE_UP, BarricadeBtnUpHandler);
			BtnManualExplosive.removeEventListener(MouseEvent.MOUSE_UP, ManualExplosiveBtnUpHandler);
			stage.removeEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler);
			endScreen.backBtn.removeEventListener(MouseEvent.MOUSE_UP, endGame)
			stage.removeEventListener(KeyboardEvent.KEY_UP, keyHandler)
			removeChild(indexBtn)
			gotoAndStop(1)
			playBtn.addEventListener(MouseEvent.MOUSE_UP, menu.playBtnUpHandler);
			sounds.musicChannel.stop();
		}



		//////////////////////////////
		/////// TOWER CREATION ///////
		//////////////////////////////

		//this function will create a Tower movieClip if user clicked on Tower Button
		function TowerBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Tower(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function TowerBtn2UpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Tower2(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function TowerBtn3UpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Tower3(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function SlopDispenserBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new SlopDispenser(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function SlopDispenserBtnUpHandler2(event: MouseEvent) {
			if (currTower == null) {
				currTower = new SlopDispenser2(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function SlopDispenserBtnUpHandler3(event: MouseEvent) {
			if (currTower == null) {
				currTower = new SlopDispenser3(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function LobberBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Lobber(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function LobberBtnUpHandler2(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Lobber2(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function LobberBtnUpHandler3(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Lobber3(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function GoldHarvesterBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new GoldHarvester(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function GoldHarvesterBtnUpHandler2(event: MouseEvent) {
			if (currTower == null) {
				currTower = new GoldHarvester2(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function GoldHarvesterBtnUpHandler3(event: MouseEvent) {
			if (currTower == null) {
				currTower = new GoldHarvester3(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function HydrojetterBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Hydrojetter(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function HydrojetterBtnUpHandler2(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Hydrojetter2(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function HydrojetterBtnUpHandler3(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Hydrojetter3(this);
				towerLayer.addChild(currTower);
				//stageObjects.push(currTower);
			}
		}

		function ExplosiveMineBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Mine_explosive(this);
				towerLayer.addChild(currTower);
				currTower.gotoAndStop(1)
				//stageObjects.push(currTower);
			}
		}

		function RevealMineBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Mine_reveal(this);
				towerLayer.addChild(currTower);
				currTower.gotoAndStop(1)
				//stageObjects.push(currTower);
			}
		}

		function TeleporterMineBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Mine_teleporter(this);
				towerLayer.addChild(currTower);
				currTower.gotoAndStop(1)
				//stageObjects.push(currTower);
			}
		}

		function RepairBotBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new RepairBot(this);
				towerLayer.addChild(currTower);
				currTower.gotoAndStop(1)
				//stageObjects.push(currTower);
			}
		}

		function BarricadeBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new Barricade(this);
				towerLayer.addChild(currTower);
				currTower.gotoAndStop(1)
				//stageObjects.push(currTower);
			}
		}

		function ManualExplosiveBtnUpHandler(event: MouseEvent) {
			if (currTower == null) {
				currTower = new ManualExplosive(this);
				towerLayer.addChild(currTower);
				currTower.gotoAndStop(1)
				//stageObjects.push(currTower);
			}
		}
		//this function will place the tower when user clicks on the stage
		function onMouseDownHandler(event: MouseEvent) {
			if (currTower != null) {
				if (checkPlacable(currTile) && (currTower.buildingType != "mine" && currTower.buildingType != "repair" && currTower.buildingType != "barricade")) { //check if placable
					if ((currGold - currTower.cost) >= 0) { //check if there is enough gold to place the 
						if (mouseX < 500) { //tower
							MenuText.statusTxt.text = "";
							MenuText.info1.text = "";
							MenuText.info2.text = "";
							MenuText.info3.text = "";
							MenuText.info4.text = "";
							currGold -= currTower.cost;
							towers.push(currTower);
							currTower.x = currTile.x + currTile.hitTestTile.width / 2 + 13; //place the tower on the tile
							currTower.y = currTile.y + currTile.hitTestTile.height / 2 + 13;
							currTower.setBuilding(currTower);
							currTower = null;
							nonPlacableTiles.push(currTile); //add the current Tile into nonPlacableTiles
							upgradableTiles.push(currTile); //add the current Tile into upgradableTiles
						} //after placing the tower
					} else {
						MenuText.statusTxt.text = "Not enough gold"
						statusTextDelay = 120
					}
				} else if (currTower.buildingType == "mine" || currTower.buildingType == "barricade") { // For mines: Check if this is a pathway block
					if (checkPlacable(currTile) == false && (currTile.currentFrame == 63 || currTile.currentFrame == 233)) {
						if ((currGold - currTower.cost) >= 0) { //check if there is enough gold to place the 
							if (mouseX < 500) { //tower
								MenuText.statusTxt.text = "";
								currGold -= currTower.cost;
								towers.push(currTower);
								currTower.x = currTile.x + currTile.width / 2; //place the tower on the tile
								currTower.y = currTile.y + currTile.height / 2;
								currTower.setBuilding(currTower);
								currTower = null;
								nonPlacableTiles.push(currTile); //add the current Tile into nonPlacableTiles
								upgradableTiles.push(currTile); //add the current Tile into upgradableTiles
							} //after placing the tower
						} else {
							MenuText.statusTxt.text = "Not enough gold"
							statusTextDelay = 120
						}
					} else if (checkPlacable(currTile) == false && currLevel >= 14 - 1) {
						for (var i = 0; i < towers.length; i++) {
							if (currTile.hitTestObject(towers[i].center) && towers[i] == String("[object GoldHarvester3]")) {
								var xPos;
								var yPos;
								var newTower;
								if (currTower == String("[object Mine_explosive]") && currGold >= 1100) {
									xPos = towers[i].x
									yPos = towers[i].y
									towerLayer.removeChild(towers[i]);
									towers.splice(i, 1);
									newTower = new GoldHarvesterExplosiveMine(this)
									newTower.x = xPos;
									newTower.y = yPos;
									towerLayer.addChild(newTower);
									towers.push(newTower)
									currGold -= 1100
								} else if (currTower == String("[object Mine_reveal]") && currGold >= 900) {
									xPos = towers[i].x
									yPos = towers[i].y
									towerLayer.removeChild(towers[i]);
									towers.splice(i, 1);
									newTower = new GoldHarvesterRevealMine(this)
									newTower.x = xPos;
									newTower.y = yPos;
									towerLayer.addChild(newTower);
									towers.push(newTower)
									currGold -= 900
								} else if (currTower == String("[object Mine_teleporter]") && currGold >= 2500) {
									xPos = towers[i].x
									yPos = towers[i].y
									towerLayer.removeChild(towers[i]);
									towers.splice(i, 1);
									newTower = new GoldHarvesterTeleporterMine(this)
									newTower.x = xPos;
									newTower.y = yPos;
									towerLayer.addChild(newTower);
									towers.push(newTower)
									currGold -= 2500
								}
							}
						}
					}
				} else if (currTower.buildingType == "repair") {
					if (checkPlacable(currTile) == false && (currTile.currentFrame == 286 || currTile.currentFrame == 287)) {
						if ((currGold - currTower.cost) >= 0) { //check if there is enough gold to place the 
							if (mouseX < 500) { //tower
								MenuText.statusTxt.text = "";
								currGold -= currTower.cost;
								towers.push(currTower);
								currTower.x = currTile.x + currTile.width / 2; //place the tower on the tile
								currTower.y = currTile.y + currTile.height / 2;
								currTower.setBuilding(currTower);
								currTower = null;
								nonPlacableTiles.push(currTile); //add the current Tile into nonPlacableTiles
								upgradableTiles.push(currTile); //add the current Tile into upgradableTiles
							} //after placing the tower
						} else {
							MenuText.statusTxt.text = "Not enough gold"
							statusTextDelay = 120
						}
					}
				}
				if (mouseX > 500 && mouseX < 600) {
					towerLayer.removeChild(currTower);
					currTower = null;
				}
			}
		}

		public function getMinMaxRand(min, max, round: Boolean = false) {
			if (!round) {
				return min + (Math.random() * (max - min));
			}
			return min + Math.round(Math.random() * (max - min));
		}

		public function RomanNumeral(number: int) {
			if (number == 1) {
				return "I"
			} else if (number == 2) {
				return "II"
			} else if (number == 3) {
				return "III"
			} else if (number == 4) {
				return "IV"
			} else if (number == 5) {
				return "V"
			} else if (number == 6) {
				return "VI"
			} else if (number == 7) {
				return "VII"
			} else if (number == 8) {
				return "VIII"
			} else if (number == 9) {
				return "IX"
			} else if (number == 10) {
				return "X"
			} else if (number == 11) {
				return "XI"
			} else if (number == 12) {
				return "XII"
			} else if (number == 13) {
				return "XIII"
			} else if (number == 14) {
				return "XVI"
			} else if (number == 15) {
				return "XV"
			} else if (number == 16) {
				return "XVI"
			} else if (number == 17) {
				return "XVII"
			} else if (number == 18) {
				return "XVIII"
			} else if (number == 19) {
				return "XIX"
			} else if (number == 20) {
				return "XX"
			} else if (number == 21) {
				return "XXI"
			} else if (number == 22) {
				return "XXII"
			} else if (number == 23) {
				return "XXIII"
			} else if (number == 24) {
				return "XXIV"
			} else if (number == 25) {
				return "XXV"
			} else if (number == 26) {
				return "XXVI"
			} else if (number == 27) {
				return "XXVII"
			} else if (number == 28) {
				return "XXVIII"
			} else if (number == 29) {
				return "XXIX"
			} else if (number == 30) {
				return "XXX"
			} else if (number == 31) {
				return "XXXI"
			} else if (number == 32) {
				return "XXXII"
			} else if (number == 33) {
				return "XXXIII"
			} else if (number == 34) {
				return "XXXIV"
			} else if (number == 35) {
				return "XXXV"
			} else if (number == 36) {
				return "XXXVI"
			} else if (number == 37) {
				return "XXXVII"
			} else if (number == 38) {
				return "XXXVIII"
			} else if (number == 39) {
				return "XXXIX"
			} else if (number == 40) {
				return "XL"
			} else if (number == 41) {
				return "XLI"
			} else if (number == 42) {
				return "XLII"
			} else if (number == 43) {
				return "XLIII"
			} else if (number == 44) {
				return "XLIV"
			} else if (number == 45) {
				return "XLV"
			} else if (number == 46) {
				return "XLVI"
			} else if (number == 47) {
				return "XLVII"
			} else if (number == 48) {
				return "XLVIII"
			} else if (number == 49) {
				return "XLIX"
			} else if (number == 50) {
				return "L"
			} else if (number == 51) {
				return "LI"
			} else if (number == 52) {
				return "LII"
			} else if (number == 53) {
				return "LIII"
			} else if (number == 54) {
				return "LIV"
			} else if (number == 55) {
				return "LV"
			} else if (number == 56) {
				return "LVI"
			} else if (number == 57) {
				return "LVII"
			} else if (number == 58) {
				return "LVIII"
			} else if (number == 59) {
				return "LIX"
			} else if (number == 60) {
				return "LX"
			} else if (number == 61) {
				return "LXI"
			} else if (number == 62) {
				return "LXII"
			} else if (number == 63) {
				return "LXIII"
			} else if (number == 64) {
				return "LXIV"
			}
			return number;
		}
	}
}