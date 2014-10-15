
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.1
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;

	int w;
	int h;
	int mx;
	int my;
	int mx1;
	int my1;
	int speed;
	//int px;
	//int py;
	
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	
	w=get_scene_width();
	h=get_scene_height();

	rsc.prepare_image("mymonster2","greenflip",0.1*w,0.1*h); //resource id, filename
	rsc.prepare_image("mymonster","green",0.1*w,0.1*h); //resource id, filename
	monster = add_sprite_for_image(SEImage.for_resource("mymonster")); //resource id
	monster.move(Math.random(0,w),Math.random(0,h));
	speed = Math.random(20,100);
	
	//px = MainScene.x;
	//py = MainScene.y;
	}

	public void tick(TimeVal now, double delta) 
	{
	base.tick(now,delta);

	mx= monster.get_x();
	my= monster.get_y();

	if(mx < MainScene.x) 
		{
		monster.set_image(SEImage.for_resource("mymonster"));	
		}
		else {
		monster.set_image(SEImage.for_resource("mymonster2"));	
		}
		
		monster.move(mx+(MainScene.x-mx)/speed, my+(MainScene.y-my)/speed);

		if((mx +0.15*get_scene_width()>= MainScene.x && mx<=MainScene.x) && (my+0.15*get_scene_height() >= MainScene.y&&my<=MainScene.y)) {
			MainScene.collide = true;			
		}
	}
//	monster.move(mx+(MainScene.x-mx)/Math.random(100,500), my+(MainScene.y-my)/Math.random(100,500));
//	}

	public void cleanup()
	 {
	base.cleanup();
	}
	
}