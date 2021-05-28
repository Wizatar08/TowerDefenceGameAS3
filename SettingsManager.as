package  {
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class SettingsManager {
		private var main: Main
		private var menu;
		
		

		public function SettingsManager(m: Main) {
			main = m;
			menu = main.getSettingsMenu();
			menu.gotoAndStop(1);
			mainScreen();
		}
		
		public function update(e: Event){
			
		}
		
		public function exit(e: MouseEvent){
			main.settingsOut();
		}
		
		private function mainScreen(){
			menu.gotoAndStop(1)
			menu.audioBtn.addEventListener(MouseEvent.MOUSE_UP, audioBtnPress);
			menu.visualBtn.addEventListener(MouseEvent.MOUSE_UP, visualBtnPress);
			menu.exitBtn.addEventListener(MouseEvent.MOUSE_UP, exit)
		}
		private function gotoMainScreen(e: MouseEvent){
			mainScreen();
		}
		
		private function audioBtnPress(e: MouseEvent){
			menu.gotoAndStop(2)
			menu.backBtn.addEventListener(MouseEvent.MOUSE_UP, gotoMainScreen);
			menu.musicVolume.text = main.settingSavedVariables.audio_volume.data.music.toString() + "%";
			menu.soundVolume.text = main.settingSavedVariables.audio_volume.data.sound.toString() + "%";
			menu.musicVolumePlus.addEventListener(MouseEvent.MOUSE_UP, volume_musicPlus);
			menu.musicVolumeMinus.addEventListener(MouseEvent.MOUSE_UP, volume_musicMinus);
			menu.soundVolumePlus.addEventListener(MouseEvent.MOUSE_UP, volume_soundPlus);
			menu.soundVolumeMinus.addEventListener(MouseEvent.MOUSE_UP, volume_soundMinus);
		}
		
		private function volume_musicPlus(e: MouseEvent){
			if(main.settingSavedVariables.audio_volume.data.music < 100){
				main.settingSavedVariables.audio_volume.data.music += 10;
			}
			menu.musicVolume.text = main.settingSavedVariables.audio_volume.data.music.toString() + "%";
		}
		
		private function volume_musicMinus(e: MouseEvent){
			if(main.settingSavedVariables.audio_volume.data.music > 0){
				main.settingSavedVariables.audio_volume.data.music -= 10;
			}
			menu.musicVolume.text = main.settingSavedVariables.audio_volume.data.music.toString() + "%";
		}
		
		private function volume_soundPlus(e: MouseEvent){
			if(main.settingSavedVariables.audio_volume.data.sound < 100){
				main.settingSavedVariables.audio_volume.data.sound += 10;
			}
			menu.soundVolume.text = main.settingSavedVariables.audio_volume.data.sound.toString() + "%";
		}
		
		private function volume_soundMinus(e: MouseEvent){
			if(main.settingSavedVariables.audio_volume.data.sound > 0){
				main.settingSavedVariables.audio_volume.data.sound -= 10;
			}
			menu.soundVolume.text = main.settingSavedVariables.audio_volume.data.sound.toString() + "%";
		}
		
		
		
		private function visualBtnPress(e: MouseEvent){
			menu.gotoAndStop(3)
			menu.backBtn.addEventListener(MouseEvent.MOUSE_UP, gotoMainScreen);
			menu.tooltipSize.text = main.settingSavedVariables.visual_settings.data.tooltips;
			menu.tooltipSizePlus.addEventListener(MouseEvent.MOUSE_UP, visual_tooltipSizePlus);
			menu.tooltipSizeMinus.addEventListener(MouseEvent.MOUSE_UP, visual_tooltipSizeMinus);
		}
		private function visual_tooltipSizePlus(e: MouseEvent){
			if(main.settingSavedVariables.visual_settings.data.tooltips < 3){
				main.settingSavedVariables.visual_settings.data.tooltips++;
			}
			menu.tooltipSize.text = main.settingSavedVariables.visual_settings.data.tooltips;
		}
		private function visual_tooltipSizeMinus(e: MouseEvent){
			if(main.settingSavedVariables.visual_settings.data.tooltips > 1){
				main.settingSavedVariables.visual_settings.data.tooltips--;
			}
			menu.tooltipSize.text = main.settingSavedVariables.visual_settings.data.tooltips;
		}

	}
	
}
