/*
  tracks bounced down at same tempo
  some on off
*/
s.reboot;
s.quit;
thisProcess.platform.recordingsDir;
Server.default.makeGui
Server.killAll;
s = Server.local
s.boot;

ServerOptions.inDevices[2]

Server.default.options.inDevice_(ServerOptions.inDevices[2])
Server.default.options.outDevice_(ServerOptions.outDevices[1])

~btest = Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/joyeuxAnniversaire.aif")

(
z = [

Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Bassoon_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Clarinet 1_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Flute 1_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Flute 2_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra French Horn 1_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra French Horn 2_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Oboe_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Percussion Kit_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Timpani_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Trombone Section 1_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Trombone Section 2_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Trumpet 1_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Trumpet 2_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Trumpet 3_bip.aif"),
Buffer.read(s,"/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/anniversaire/Bounces/Orchestra Tuba_bip.aif")
];

)

(
SynthDef("buffer_reader_saw",{arg out, bufnum, startpos, duration, ep;
	var buffy, env, envgen, saw;
	buffy = PlayBuf.ar(2,bufnum,BufRateScale.kr(bufnum) * SinOsc.kr(0.2, 0, ep, 1),startPos:startpos);
	env = Env.new([0.0,1.0,1.0,0.0],[0.01,duration-0.02,0.01],'linear');
	envgen = EnvGen.kr(env, doneAction:2);
	saw = Saw.kr(SinOsc.kr(0.5, 0, 2, 5), 0.5, 0.5);
	Out.ar(out,Pan2.ar(buffy)*envgen* saw);
}).send(s);

SynthDef("theGreatSineCaper", {arg out, happynumber=0.0, addr=1.0, span=0.05;
	var arr = Array.fill(z.size, {|i|
		PlayBuf.ar(2,z[i], SinOsc.kr(Lag.kr(happynumber,1.0)*i, 0, span, VarLag.kr(addr,6.0, warp: \exponential))*BufRateScale.kr(z[i]));
	});
	Out.ar(out, Mix.ar(arr));
}).send(s);

SynthDef("spreadEm", {arg out, happynumber=0.0, startPos=0;
	var arr = Array.fill(z.size, {|i|
		PlayBuf.ar(2,z[i], ((happynumber*i)+1)*BufRateScale.kr(z[i]), startPos: startPos);
	});
	Out.ar(out, Mix.ar(arr));
}).send(s);


SynthDef("pitchMadness", {arg out, happynumber=0.0, addr=1.0, span=0.05, triggy=1;
	var arr = Array.fill(z.size, {|i|
		PitchShift.ar(PlayBuf.ar(2,z[i],BufRateScale.kr(z[i])), 0.2, Demand.kr(triggy,0,Drand([0.6,0.7,0.8,0.9,1.0,1.1,1.2,1.3,1.4,1.5],inf)));
	});
	Out.ar(out, Mix.ar(arr));
}).send(s);

SynthDef("simplePlayBuf", {arg out, trigger=1.neg, startPos = 0, dir=1;
	var arr = Array.fill(z.size, {|i| PlayBuf.ar(2,z[i], dir*BufRateScale.kr(z[i]), trigger+1.0.rand, startPos);});
Out.ar(out, Mix.ar(arr));
}).send(s);

SynthDef("skippyPlayBuf", {arg out, bufnum, trigger, startPos;
	var pb = PlayBuf.ar(2, bufnum, BufRateScale.kr(bufnum), trigger, startPos);
	Out.ar(out, pb);
}).send(s);

// ugh, fucks up on negatives, need to keep varlag pos
SynthDef("lagPlayBuf", {arg out, bufnum, mult=1.0, lag=1.0, trigger=1, startPos=0;
	var pb = PlayBuf.ar(2, bufnum, BufRateScale.kr(bufnum) * (VarLag.kr(4.0 + mult, lag, warp: \exponential)-4.0), trigger, startPos: startPos);
	Out.ar(out, pb);
}).send(s);

SynthDef("stupidHack", {arg out, startPos = 0, trigger0=1.neg, trigger1=1.neg, trigger2=1.neg, trigger3=1.neg, trigger4=1.neg, trigger5=1.neg, trigger6=1.neg, trigger7=1.neg, trigger8=1.neg, trigger9=1.neg, trigger10=1.neg, trigger11=1.neg, trigger12=1.neg, trigger13=1.neg, trigger14=1.neg, trigger15=1.neg, dir=1;
	var arr = Array.fill(z.size, {|i| PlayBuf.ar(2,z[i], dir*BufRateScale.kr(z[i]), [trigger0, trigger1, trigger2, trigger3, trigger4, trigger5, trigger6, trigger7, trigger8, trigger9, trigger10, trigger11, trigger12, trigger13, trigger14, trigger15][i], startPos);});
Out.ar(out, Mix.ar(arr));
}).send(s);

)

(
Routine.new({
	var startPos = 44100*50.rand;
	var foobar = Synth.new("skippyPlayBuf",[\out, 0, \bufnum, ~btest, \trigger, -1, \startPos, startPos]);
	1000.do({
		var valueForThisLoop = 0.03+0.3.rand;
		foobar.set(\startPos, startPos);
		0.05.wait;
		(8+20.rand).do({
			"AFASFA".postln;
			foobar.set(\trigger, -1);
			//foobar.set(\startPos, startPos);
			(valueForThisLoop/2).wait;
			foobar.set(\trigger, 1);
			(valueForThisLoop/2).wait;

		});
		startPos = 44100*50.rand;
	});
}).play;
)
{PlayBuf.ar(2,~btest,6*BufRateScale.kr(~btest),0,0)}.play

Synth.new("spreadEm", [\out, 0, \happynumber, 0.01, \startPos, 11*~btest.sampleRate])

~sn = Synth.new("lagPlayBuf",[\out, 0, \bufnum, ~btest, \mult, 0.23, \startPos, ~btest.sampleRate*11.0]);
~sn.set(\mult, -1.0, \lag, 0.5);
~sn.set(\mult, 0.8, \lag, 0.5);
~sn.set(\mult, 1.0, \lag, 0.5);
~sn.set(\mult, 1.5, \lag, 0.5);
~sn.set(\mult,1.8, \lag, 0.5);
~sn.set(\mult, 2.3, \lag, 0.5);

~sn.set(\mult, -1.0, \lag, 1.5);
~sn.set(\mult, 0.8, \lag, 1.5);
~sn.set(\mult, 1.0, \lag, 1.5);
~sn.set(\mult, 1.5, \lag, 1.5);
~sn.set(\mult,1.8, \lag, 1.5);
~sn.set(\mult, 2.3, \lag, 1.5);



(
Routine.new({
	var booyah = Synth.new("stupidHack", [\out, 0, \startPos, 0, \dir, -1]);
	200000.do({|i|
		booyah.set(\startPos, 44100*i/8);
		0.05.wait;
		booyah.set([\trigger0, \trigger1, \trigger2, \trigger3, \trigger4, \trigger5, \trigger6, \trigger7, \trigger8, \trigger9, \trigger10, \trigger11, \trigger12, \trigger13, \trigger14, \trigger15][i.mod(16)], -1);
		0.05.wait;
		booyah.set([\trigger0, \trigger1, \trigger2, \trigger3, \trigger4, \trigger5, \trigger6, \trigger7, \trigger8, \trigger9, \trigger10, \trigger11, \trigger12, \trigger13, \trigger14, \trigger15][i.mod(16)], 1);
	});
}).play;
)


(
Routine.new({
	var booyah = Synth.new("simplePlayBuf", [\out, 0, \triger, - 1, \startPos, 0]);
	50.do({|i|
		booyah.set(\startPos, 44100*i);
		1.0.wait;
		booyah.set(\trigger, 1);
		0.3.wait;
		booyah.set(\trigger, -1);
		0.5.wait;
	});
}).play;
)

~foo = Synth.new("pitchMadness",[\out,0]);
~foo.set(\triggy, -1);
~foo.set(\triggy, 1)

{PlayBuf.ar(2,~btest,BufRateScale.kr(~btest))}.play;
{PlayBuf.ar(2,~btest,BufRateScale.kr(~btest))}.play;
{PlayBuf.ar(2,~btest,*SinOsc.kr(0.2,0,0.1,1)*BufRateScale.kr(~btest))}.play;
//{PlayBuf.ar(2,z[1], BufRateScale.kr(z[1]))}.play;


~gsc = Synth.new("theGreatSineCaper", [\out, 0, \happynumber, 0.05]);
~gsc.set(\happynumber,0.1);

~gsc.set(\addr,0.6);
~gsc.set(\addr,0.8);
~gsc.set(\addr,0.9);
~gsc.set(\addr,1.0);
~gsc.set(\addr,1.1);
~gsc.set(\addr,1.2);
~gsc.set(\addr,1.5);
~gsc.set(\addr,1.6);


// fuckn drunk!
(
{
	var happynumber = 0.0; // 3
	var arr = Array.fill(z.size, {|i|
		PlayBuf.ar(2,z[i], SinOsc.kr(happynumber*i, 0, 0.05, 1)*BufRateScale.kr(z[i]));
	});
	Out.ar(0, Mix.ar(arr));
}.play
)

(
Routine({

		var cap = 0.1;
		Synth.new("buffer_reader_saw", [\out, 0, \bufnum, ~btest, \startpos, 0, \duration, 60, \ep, cap]);

}).play;
)

(
Routine({

		var cap = 0.1;
		Synth.new("buffer_reader_saw", [\out, 0, \bufnum, ~btest, \startpos, 0, \duration, 60, \ep, cap]);

}).play;
)

(
var speed = 14.0/3.0;
//play{t=Impulse.kr(speed);PlayBuf.ar(2,~btest,1,t,Demand.kr(t,0,Dseq(1e3*Array.fill(8,{(Array.fill(8,{15+400.rand})!4).flatten}).flatten,inf)))!2}
play{t=Impulse.kr(SinOsc.kr(0.1, 0, 15,16));PlayBuf.ar(2,~btest,1,t,Demand.kr(t,0,Dseq(1e3*Array.fill(8,{(Array.fill(8,{15+400.rand})!4).flatten}).flatten,inf)))!2}
)

play{PitchShift.ar(PlayBuf.ar(2,~btest,1), 0.2, Demand.kr(Impulse.kr(0.25),0,Dseq([1.1,1.6,2.1,2.6],inf)))};

s.prepareForRecord("/Users/mikesolomon/Documents/Compositions/festival_de_la_voix/shits_fucked_up/really_damn_fast.wav");
s.record;
s.stopRecording; // this closes the file and deallocates the buffer recording node, etc.
