package;

import kha.Framebuffer;
import kha.Game;
import kha.Image;
import kha.Loader;

class GameOver extends Game {
	private var image: Image;
	
	public function new() {
		super("Game Over", false);
		image = Loader.the.getImage("score");
	}
	
	override public function update(): Void {
		
	}
	
	override public function render(framebuffer: Framebuffer): Void {
		startRender(framebuffer);
		framebuffer.g2.drawScaledImage(image, 0, 0, framebuffer.width, framebuffer.height);
		endRender(framebuffer);
	}
}