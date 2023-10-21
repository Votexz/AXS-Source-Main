package states.stages;

import states.stages.objects.*;
import flixel.tweens.FlxTween;

class GreenVecher extends BaseStage
{
	private var leTween:FlxTween = null;
	override function create()
	{
		var bg_greenbg:BGSprite = new BGSprite('BG_1/vecher/bg', -570, -470, 0.7, 0.7);
		bg_greenbg.setGraphicSize(Std.int(bg_greenbg.width * 1.1));
		bg_greenbg.updateHitbox();
		add(bg_greenbg);
		var bg_greencloud:BGSprite = new BGSprite('BG_1/vecher/clouds', -570, -470, 0.7, 0.7);
		bg_greencloud.setGraphicSize(Std.int(bg_greencloud.width * 1.1));
		bg_greencloud.updateHitbox();
		add(bg_greencloud);
		var bg_greensun:BGSprite = new BGSprite('BG_1/vecher/sun', -570, -470, 0.8, 0.8);
		bg_greensun.setGraphicSize(Std.int(bg_greensun.width * 1.1));
		//bg_greensun.blend = ADD;
		bg_greensun.updateHitbox();
		add(bg_greensun);
		var bg_greencity1:BGSprite = new BGSprite('BG_1/vecher/city', -570, -470, 0.9, 0.9);
		bg_greencity1.setGraphicSize(Std.int(bg_greencity1.width * 1.1));
		bg_greencity1.updateHitbox();
		add(bg_greencity1);
		var bg_greencity2:BGSprite = new BGSprite('BG_1/vecher/city2', -570, -470, 0.9, 0.9);
		bg_greencity2.setGraphicSize(Std.int(bg_greencity2.width * 1.1));
		bg_greencity2.updateHitbox();
		add(bg_greencity2);
		var bg_greenplace:BGSprite = new BGSprite('BG_1/vecher/green_place', -570, -470, 1, 1);
		bg_greenplace.setGraphicSize(Std.int(bg_greenplace.width * 1.1));
		bg_greenplace.updateHitbox();
		add(bg_greenplace);
		var bg_greenwalter:BGSprite = new BGSprite('BG_1/vecher/water', -570, -470, 1, 1);
		bg_greenwalter.setGraphicSize(Std.int(bg_greenwalter.width * 1.1));
		bg_greenwalter.updateHitbox();
		add(bg_greenwalter);
		var bg_greencust:BGSprite = new BGSprite('BG_1/vecher/vignette', -570, -470, 1, 1);
		bg_greencust.setGraphicSize(Std.int(bg_greencust.width * 1.1));
		bg_greencust.updateHitbox();
		add(bg_greencust);
		var bg_greencust2:BGSprite = new BGSprite('BG_1/vecher/vignette2', -570, -470, 1, 1);
		bg_greencust2.setGraphicSize(Std.int(bg_greencust2.width * 1.1));
		bg_greencust2.updateHitbox();
		add(bg_greencust2);
		var bg_greenfloor:BGSprite = new BGSprite('BG_1/vecher/floor', -570, -470, 1, 1);
		bg_greenfloor.setGraphicSize(Std.int(bg_greenfloor.width * 1.1));
		bg_greenfloor.updateHitbox();
		add(bg_greenfloor);
		var bg_greenplace2:BGSprite = new BGSprite('BG_1/vecher/bg_vignette', -570, -470, 1, 1);
		bg_greenplace2.setGraphicSize(Std.int(bg_greenplace2.width * 1.1));
		bg_greenplace2.updateHitbox();
		add(bg_greenplace2);
		var bg_greenlamp:BGSprite = new BGSprite('BG_1/vecher/whatahel', -570, -470, 1, 1);
		bg_greenlamp.setGraphicSize(Std.int(bg_greenlamp.width * 1.1));
		bg_greenlamp.updateHitbox();
		add(bg_greenlamp);
	}
	
	override function createPost()
	{
	}

	override function update(elapsed:Float)
	{
		// Code here
	}

	// Steps, Beats and Sections:
	//    curStep, curDecStep
	//    curBeat, curDecBeat
	//    curSection
	override function stepHit()
	{
	}
	override function beatHit()
	{

	}
	override function sectionHit()
	{
		// Code here
	}

	// Substates for pausing/resuming tweens and timers
	override function closeSubState()
	{
		if(paused)
		{
			//timer.active = true;
			//tween.active = true;
		}
	}

	override function openSubState(SubState:flixel.FlxSubState)
	{
		if(paused)
		{
			//timer.active = false;
			//tween.active = false;
		}
	}

	// For events
	override function eventCalled(eventName:String, value1:String, value2:String, flValue1:Null<Float>, flValue2:Null<Float>, strumTime:Float)
	{
		switch(eventName)
		{
			case "FlashCamera":
				FlxG.camera.flash(FlxColor.WHITE, 0.6);
		}
	}
	override function eventPushed(event:objects.Note.EventNote)
	{
		// used for preloading assets used on events that doesn't need different assets based on its values
		switch(event.event)
		{
			case "My Event":
				//precacheImage('myImage') //preloads images/myImage.png
				//precacheSound('mySound') //preloads sounds/mySound.ogg
				//precacheMusic('myMusic') //preloads music/myMusic.ogg
		}
	}
	override function eventPushedUnique(event:objects.Note.EventNote)
	{
		// used for preloading assets used on events where its values affect what assets should be preloaded
		switch(event.event)
		{
			case "My Event":
				switch(event.value1)
				{
					// If value 1 is "blah blah", it will preload these assets:
					case 'blah blah':
						//precacheImage('myImageOne') //preloads images/myImageOne.png
						//precacheSound('mySoundOne') //preloads sounds/mySoundOne.ogg
						//precacheMusic('myMusicOne') //preloads music/myMusicOne.ogg

					// If value 1 is "coolswag", it will preload these assets:
					case 'coolswag':
						//precacheImage('myImageTwo') //preloads images/myImageTwo.png
						//precacheSound('mySoundTwo') //preloads sounds/mySoundTwo.ogg
						//precacheMusic('myMusicTwo') //preloads music/myMusicTwo.ogg
					
					// If value 1 is not "blah blah" or "coolswag", it will preload these assets:
					default:
						//precacheImage('myImageThree') //preloads images/myImageThree.png
						//precacheSound('mySoundThree') //preloads sounds/mySoundThree.ogg
						//precacheMusic('myMusicThree') //preloads music/myMusicThree.ogg
				}
		}
	}
}