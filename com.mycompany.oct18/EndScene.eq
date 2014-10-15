
/*
 * EndScene
 * Created by Eqela Studio 2.0b7.1
 */

public class EndScene : SEScene
{
	   SESprite text2;
		SESprite bg2;
		int w;
		int h;
		
	
	   public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
		w = get_scene_width();
		h =get_scene_height();
		rsc.prepare_image("endbg", "end", w, h);  //resource name, filename
		bg2 = add_sprite_for_image(SEImage.for_resource("endbg")); //resource name
		bg2.move(0,0);	
		
 	    rsc.prepare_font("myfont","ariel bold color=black",70);
 	    text2=add_sprite_for_text("Game Over","myfont");
         text2.move(0.5*get_scene_width(),0.5*get_scene_height());

		AudioClipManager.prepare("dead");
		AudioClipManager.play("dead");


		}

	
}
