package {
	import flash.display.MovieClip;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.events.Event;

	public class SoundManager {
		private var main: Main
		private var music

		private var musicList: Music = new Music();
		public var soundList: Sounds = new Sounds();

		public var musicChannel: SoundChannel;
		public var soundChannel: SoundChannel;
		private var scTrans: SoundTransform = new SoundTransform();
		private var mcTrans: SoundTransform = new SoundTransform();

		//this function rotates the bullet
		public function SoundManager(m) {
			main = m;
		}

		public function onMusicComplete(e: Event) {
			if (music == 1) {
				musicChannel = musicList.limit70.play();
			} else if (music == 2) {
				musicChannel = musicList.theDescent.play();
			} else if (music == 3) {
				musicChannel = musicList.phantomFromSpace.play();
			} else if (music == 4) {
				musicChannel = musicList.theLift.play();
			} else if (music == 5) {
				musicChannel = musicList.volatileReaction.play();
			}
			musicChannel.soundTransform = mcTrans;
			musicChannel.addEventListener(Event.SOUND_COMPLETE, onMusicComplete)
		}
		
		public function setSoundTransform(){
		}

		public function playMusic(t: int) {
			mcTrans.volume = main.settingSavedVariables.audio_volume.data.music / 100;
			if (t == 1) {
				music = 1
				musicChannel = musicList.limit70.play()
				musicChannel.addEventListener(Event.SOUND_COMPLETE, onMusicComplete)
			} else if (t == 2) {
				music = 2
				musicChannel = musicList.theDescent.play();
				musicChannel.addEventListener(Event.SOUND_COMPLETE, onMusicComplete)
			} else if (t == 3) {
				music = 3
				musicChannel = musicList.phantomFromSpace.play();
				musicChannel.addEventListener(Event.SOUND_COMPLETE, onMusicComplete)
			} else if (t == 4) {
				music = 4
				musicChannel = musicList.theLift.play();
				musicChannel.addEventListener(Event.SOUND_COMPLETE, onMusicComplete)
			} else if (t == 5) {
				music = 5
				musicChannel = musicList.volatileReaction.play();
				musicChannel.addEventListener(Event.SOUND_COMPLETE, onMusicComplete)
			}
			musicChannel.soundTransform = mcTrans;
		}

		public function playSound(sound: Sound) {
			scTrans.volume = main.settingSavedVariables.audio_volume.data.sound / 100;
			soundChannel = sound.play();
			soundChannel.soundTransform = scTrans;
		}
	}
}