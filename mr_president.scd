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
	buffy = PlayBuf.ar(2,bufnum,Line.kr(1,ep,3),startPos:startpos);
	env = Env.new([0.0,1.0,1.0,0.0],[0.01,duration-0.02,0.01],'linear');
	envgen = EnvGen.kr(env, doneAction:2);
	saw = Saw.kr(SinOsc.kr(0.5, 0, 2, 5), 0.5, 0.5);
	Out.ar(out,Pan2.ar(buffy)*envgen* saw);
}).send(s);
)

{PlayBuf.ar(2,~btest,BufRateScale.kr(~btest))}.play;
{PlayBuf.ar(2,~btest,*SinOsc.kr(0.2,0,0.1,1)*BufRateScale.kr(~btest))}.play;
//{PlayBuf.ar(2,z[1], BufRateScale.kr(z[1]))}.play;


// fuckn drunk!
(
{
	var happynumber = 0.1; // 3
	var arr = Array.fill(z.size, {|i|
		PlayBuf.ar(2,z[i], SinOsc.kr(happynumber*i, 0, 0.05, 1)*BufRateScale.kr(z[i]));
	});
	Out.ar(0, Mix.ar(arr));
}.play
)

(
Routine({

		var cap = 0.2 + 0;//(i/60.0);
		Synth.new("buffer_reader_saw", [\out, 0, \bufnum, ~btest, \startpos, 0, \duration, 60, \ep, 0.9 + cap.rand]);

}).play;
)


play{t=Impulse.kr(14.0/3.0);PlayBuf.ar(2,~btest,1,t,Demand.kr(t,0,Dseq(1e3*Array.fill(8,{(Array.fill(8,{15+400.rand})!4).flatten}).flatten,inf)))!2}

play{PitchShift.ar(PlayBuf.ar(2,~btest,1), 0.2, Demand.kr(Impulse.kr(0.25),0,Dseq([1.1,1.6,2.1,2.6],inf)))};

s.prepareForRecord("/Users/mikesolomon/Documents/Compositions/overtime/dJm1k3s0l/audit/material7.wav");
s.record;
s.stopRecording; // this closes the file and deallocates the buffer recording node, etc.

