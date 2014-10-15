
/*
 * PlayScene
 * Created by Eqela Studio 2.0b7.1
 */

public class PlayScene : SEScene
{
	SESprite text2;
	SESprite bg2;
	int w;
	int h;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h =get_scene_height();
			AudioClipManager.prepare("sound");
			AudioClipManager.play("sound");
	  //  add_entity(SESpriteEntity.for_color(Color.instance("#33CCFF"), get_scene_width(), get_scene_height()));

		rsc.prepare_image("startbg", "bg", w, h);  //resource name, filename
		bg2 = add_sprite_for_image(SEImage.for_resource("startbg")); //resource name
		bg2.move(0,0);
		
 	    rsc.prepare_font("myfont","ariel bold color=black",70);
 	    text2=add_sprite_for_text("Play!","myfont");
         text2.move(0.5*get_scene_width(),0.5*get_scene_height());




	


	}

	 public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        switch_scene(new MainScene());
    }

    public void cleanup() {
        base.cleanup();
    }

}