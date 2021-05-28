package {
	import flash.net.SharedObject;

	public class SettingsSavedVariables {
		public var audio_volume: SharedObject = SharedObject.getLocal("settings");
		public var visual_settings: SharedObject = SharedObject.getLocal("settings");

		public function SettingsSavedVariables() {
			if(audio_volume.data.music == null){
				audio_volume.data.music = 1;
			}
			if(audio_volume.data.sound == null){
				audio_volume.data.sound = 1;
			}
			if(visual_settings.data.tooltips == null){
				visual_settings.data.tooltips = 2;
			}
		}

	}

}