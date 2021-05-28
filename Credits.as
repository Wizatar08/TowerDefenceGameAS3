package {
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextFormat;

	public class Credits {
		var main
		var credits

		public function Credits(m) {
			main = m
			credits = main.getCreditsMenu()
			credits.stop()
			credits.backBtn.addEventListener(MouseEvent.MOUSE_UP, exit)
			credits.nextBtn.addEventListener(MouseEvent.MOUSE_UP, next)
			credits.prevBtn.addEventListener(MouseEvent.MOUSE_UP, prev)
			updatePage();

		}

		public function update(e: Event) {

		}

		private function exit(e: MouseEvent) {
			main.creditsOut()

		}
		
		private function next(e: MouseEvent){
			if(credits.currentFrame < credits.totalFrames){
				credits.gotoAndStop(credits.currentFrame + 1)
			}
			updatePage();
		}
		
		private function prev(e: MouseEvent){
			if(credits.currentFrame > 1){
				credits.gotoAndStop(credits.currentFrame - 1)
			}
			updatePage();
		}
		
		private function updatePage(){
			//credits.page = (credits.currentFrame) + "/" + (credits.totalFrames)
		}
	}

}