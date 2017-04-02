(* ::Package:: *)

func:=DynamicModule[{note="",split,dat1,dat2,dat3},split[x_]:=(dat2=FromCharacterCode@GatherBy[ToCharacterCode@x,48<=#<=57&];dat3=If[Length@dat2>1,dat2,{"z"}]/.{"C"->0,"C#"->1,"D"->2,"D#"->3,"E"->4,"F"->5,"F#"->6,"G"->7,"G#"->8,"A"->9,"A#"->10,"B"->11,"c"->0,"c#"->1,"d"->2,"d#"->3,"e"->4,"f"->5,"f#"->6,"g"->7,"g#"->8,"a"->9,"a#"->10,"b"->11};If[StringQ@First@dat3,{},{dat3[[1]],ToExpression[dat3[[2]]]-4}]);Dynamic[dat1=split/@StringSplit[note," "];Deploy@Panel@Column@{Row@{InputField[Dynamic@note,String,FieldHint->"\:5728\:6b64\:8f38\:5165\:548c\:7d43\:53c3\:6578\:ff0c\:8acb\:7528\:7a7a\:683c\:5206\:9694\:ff01"]},Framed[Row@{Button[Style["\:5206",48,Darker@Green],Row@{EmitSound@Sound@Table[If[Length@dat1[[i]]<2,{},SoundNote[dat1[[i,1]]+12dat1[[i,2]],.6,113]],{i,Length@dat1}]},Appearance->"None"],Button[Style["\:548c",48,Darker@Blue],Row@{EmitSound@Sound@SoundNote[Table[If[Length@dat1[[i]]<2,{},dat1[[i,1]]+12dat1[[i,2]]],{i,Length@dat1}],1,113]},Appearance->"None"],Button[Mouseover[Text@Style["Violin:)",Bold,Italic,36],Text@Style["Violin:(",Bold,Italic,36]],Speak@"Smiling Violin!",Appearance->"None"]},RoundingRadius->6,Background->LightYellow]}]];Module[{chord,lgth,lng,gdrt,crs,tone,dat6,tones,ton,overtones4,overtones3,overtones5,overtone4,overtone3,overtone5,dat1,dat2,dat3,dat4,dat5,dat7,dat8,dat9,ton3,ton5,ton4,graph,crss,tonesa ,tona,dat11,dat1a,dat10,dat12,font,exp},lgth=40;lng=.858;gdrt=GoldenRatio^-1;crss={0->"\:540c\:97f3\:6216\:516b\:5ea6\:5217",1->"\:5c0f\:4e8c\:5ea6",2->"\:4e8c\:5ea6",3->"\:5c0f\:4e09\:5ea6",4->"\:5927\:4e09\:5ea6",5->"\:7d14\:56db\:5ea6",6->"\:589e\:56db\:5ea6",7->"\:7d14\:4e94\:5ea6",8->"\:5c0f\:516d\:5ea6",9->"\:516d\:5ea6",10->"\:5927\:516d\:5ea6",11->"\:4e03\:5ea6"};crs={0->"C",1->"C#",2->"D",3->"D#",4->"E",5->"F",6->"F#",7->"G",8->"G#",9->"A",10->"A#",11->"B"};font:=FontFamily->"Geogia";tone[note_]:=(dat6=Mod[note,12];Select[Flatten[Table[Table[{lgth*(1-2^(-((dat6+12i-7 string)/12))),string,dat6+12i,1},{i,0,12}],{string,1,4}],1],0<=First@#<lgth*lng&]);tones[x_]:=(ton=Flatten[x];Flatten[Table[tone[ton[[i]]],{i,Length@ton}],1]);
tonesa[x_]:=(tona=Transpose@{Mod[x,12],Table[5,{Length@x}]});overtone4[note_]:=(dat5=Mod[note,12];Select[Flatten[Table[Table[{{{lgth*(1-2^(-((dat5+12i-7 string)/12))),string},{lgth*(1-2^(-((dat5+12i-7 string)/12)) 3/4),string+.3}},dat5+12i,2},{i,0,5}],{string,1,4}],1],(#[[1,1,1]]>=0)&&((0<#[[1,2,1]]<lgth*lng))&]);
overtones4[x_]:=(ton4=x;Flatten[Table[overtone4[ton4[[i]]],{i,Length@ton4}],1]);overtone5[note_]:=(dat7=Mod[note,12];Select[Flatten[Table[Table[{{{lgth*(1-2^(-((dat7+12i-7 string-7)/12))),string-.2},{lgth*(1-2^(-((dat7+12i-7 string-7)/12)) 2/3),string-.4}},dat7+12i,3},{i,0,5}],{string,1,4}],1],(#[[1,1,1]]>=0)&&((0<#[[1,2,1]]<lgth*lng))&]);
overtones5[x_]:=(ton5=x;Flatten[Table[overtone5[ton5[[i]]],{i,Length@ton5}],1]);overtone3[note_]:=(dat9=Mod[note,12];Select[Flatten[Table[Table[{{{lgth*(1-2^(-((dat9+12i-7 string-4)/12))),string-.15/2},{lgth*(1-2^(-((dat9+12i-7 string-4)/12)) 5/6),string-.15}},dat9+12i,4},{i,0,5}],{string,1,4}],1],(#[[1,1,1]]>=0)&&((0<#[[1,2,1]]<lgth*lng))&]);
overtones3[x_]:=(ton3=x;Flatten[Table[overtone3[ton3[[i]]],{i,Length@ton3}],1]);
graph[x_]:=(dat1=Select[x,Last@#==1&];dat1a=Select[x,Last@#==5&];dat2=Select[x,Last@#==2&];dat3=Select[x,Last@#==3&];dat8=Select[x,Last@#==4&];Column@{Deploy@Row@{Framed[Row@{"\:548c\:7d43\:64ad\:653e\:ff1a",Button[Style["\:5206",Darker@Green],EmitSound@Sound[SoundNote[#,.5,113]&/@chord],Appearance->"None"],Button[Style["\:548c",Darker@Blue],EmitSound@Sound[SoundNote[chord,1,113]],Appearance->"None"]},RoundingRadius->5,Background->LightYellow]," ",Framed[Row@{"\:8f38\:51fa\:5716\:5f62\:81f3C\:76e4\:ff1a",Button[Style["PNG",Red],Export["C:\\test.png",exp];Beep[],Appearance->"None"],Button[Style["PDF",Darker@Cyan],Export["C:\\test.pdf",exp];Beep[],Appearance->"None"]},RoundingRadius->5,Background->LightYellow]," ",Framed[PopupWindow["\:6e2c\:8a66\:97f3\:983b",func,WindowTitle->"Violin:)\:6e2c\:8a66\:97f3\:983b\:5b50\:7a0b\:5e8f\:ff1a",WindowOpacity->.9],RoundingRadius->5,Background->LightYellow]},exp=Graphics[{Text[Mouseover[Style["Violin :)",Bold,Italic,36],Style["Violin :(",Bold,Italic,36]],{2,-1}],Text[Style[Row[chord/.crs,"."],LightGray,Italic,Bold,32],{8,6}],{Darker@Brown,Tooltip[Rectangle[{lgth*0.4,-1},{lgth+1,6},RoundingRadius->1],"\:7434\:8eab",TooltipDelay->1.2]},{Lighter@Orange,Tooltip[Rectangle[{lgth+.15,5},{lgth,0},RoundingRadius->0.05],"\:7434\:78bc",TooltipDelay->.8]},{Brown,Tooltip[Rectangle[{-gdrt,1-gdrt},{0,4+gdrt},RoundingRadius->0.1],"\:7434\:982d",TooltipDelay->.8]},{GrayLevel[.05],Tooltip[Rectangle[{0,1-gdrt},{lgth*lng,4+gdrt},RoundingRadius->0.2],"\:7d19\:677f",TooltipDelay->1.2]},Table[Tooltip[{Thickness[.0008 2.15^i^-1],LightGray,Line[{{-gdrt,i},{lgth+1,i}}]},i/.{1->"G\:5f26",2->"D\:5f26",3->"A\:5f26",4->"E\:5f26"},TooltipDelay->.8],{i,4}],Union@DeleteCases[Flatten[Table[dat4=12.Log[2,j/i];If[lgth(1-i/j)>0,Tooltip[{White,Opacity[1.3^(-j)],Line[{{lgth(1-i/j),1-gdrt},{lgth(1-i/j),4+gdrt}}]},Column@{Row@{"\:983b\:7387\:6bd4\:4f8b\:ff1a",j/i},Row@{"\:97f3\:5f8b\:4f4d\:7f6e\:ff1a",Row[Mod[Round[{7,2,9,4}+dat4],12]/.crs,"+"],"(\:6700\:4f4e\:97f3\:97f3\:9ad8\:53c3\:6578\:ff1a",Round[Log[2,Numerator[j/i]]]+3,")<",100(dat4-Round[dat4]),"\:97f3\:5206>"}},TooltipDelay->.4],{}],{j,2,10},{i,1,j}],1],{}],{Table[{Hue[i/12],PointSize[.004 1.05^-i],Tooltip[Point[{lgth(1-2^(-i/12)),4.8}],Column@{Style["\:7d55\:5c0d\:97f3\:4f4d\:ff1a"<>ToString@i],Style["\:76f8\:5c0d\:97f3\:4f4d\:ff1a"<>ToString@(Mod[i,12]/.crss)]},TooltipDelay->.4]},{i,0,40}]},{Hue[#[[2]]/12],Thick,Tooltip[Line[#[[1]]],Style[(Mod[#[[2]],12]/.crs)<>ToString[IntegerPart[#[[2]]/12.]+4],48,Blue,Bold,font],TooltipDelay->.2]}&/@dat3,{Hue[#[[2]]/12],Thick,Tooltip[Line[#[[1]]],Style[(Mod[#[[2]],12]/.crs)<>ToString[IntegerPart[#[[2]]/12.]+5],48,Darker@Green,Bold,font],TooltipDelay->.2]}&/@dat2,{Hue[#[[2]]/12],Tooltip[Line[#[[1]]],Style[(Mod[#[[2]],12]/.crs)<>ToString[IntegerPart[#[[2]]/12.]+5],48,Red,Bold,font],TooltipDelay->.2]}&/@dat8,{Hue[#[[3]]/12],Tooltip[{PointSize[(.04 1.01^(-#[[1]]))/Sqrt[lgth]],Point[#[[;;2]]]},Style[(Mod[#[[3]],12]/.crs)<>ToString[IntegerPart[#[[3]]/12.]+3],48,Bold,FontFamily->"Geogia"],TooltipDelay->.2]}&/@dat1,dat11=dat1a[[;;,1]];Union@Flatten@Table[dat10=12.Log[2,j/i]+7k;dat12=Mod[Round[12.Log[2,Numerator[j/i]]]+7k,12];If[(0<(1-i/j)<lng)&&MemberQ[dat11,dat12],Tooltip[{Hue[Mod[Mod[12Log[2,Numerator[j/i]]+7k,12],12]/12],Opacity[1.1^(-Denominator[j/i])],Circle[{lgth(1-i/j),k},(.03lgth 1.01^(-lgth(1-i/j)))/Sqrt[lgth]]},Column@{Row@{"\:983b\:7387\:6bd4\:4f8b\:ff1a",j/i},Row@{"\:97f3\:5f8b\:4f4d\:7f6e\:ff1a",dat12/.crs,IntegerPart[(12.Log[2,Numerator[j/i]]+7k)/12]+3,"<",100(dat10-Round[dat10]),"\:97f3\:5206>"}},TooltipDelay->.4],{}],{j,2,10},{i,1,j},{k,1,4}]},ImageSize->1800]});Manipulate[chord=Union@Flatten@{If[n0==1,0,{}],If[n1==1,1,{}],If[n2==1,2,{}],If[n3==1,3,{}],If[n4==1,4,{}],If[n5==1,5,{}],If[n6==1,6,{}],If[n7==1,7,{}],If[n8==1,8,{}],If[n9==1,9,{}],If[n10==1,10,{}],If[n11==1,11,{}]};graph@Flatten[{If[pd1==1,tones@chord,{}],If[pd1a==1,tonesa@chord,{}],If[pd2==1,overtones3@chord,{}],If[pd3==1,overtones4@chord,{}],If[pd4==1,overtones5@chord,{}]},1],{{pd1,1,"\:548c\:7d43\:4e3b\:97f3\:ff1a"},{0,1}},Delimiter,{{pd1a,0,Style["\:81ea\:7136\:6cdb\:97f3\:ff1a",Darker@Gray]},{0,1}},{{pd3,0,Style["\:56db\:5ea6\:6cdb\:97f3\:ff1a",Darker@Green]},{0,1}},{{pd4,0,Style["\:4e94\:5ea6\:6cdb\:97f3\:ff1a",Blue]},{0,1}},{{pd2,0,Style["\:4e09\:5ea6\:6cdb\:97f3\:ff1a",Red]},{0,1}},Delimiter,{{n0,0,Style["\[FilledSquare] C",Hue[0],Bold]},{0,1}},{{n1,0,Style["\[FilledSquare] C#",Hue[1/12],Bold]},{0,1}},{{n2,0,Style["\[FilledSquare] D",Hue[1/6],Bold]},{0,1}},{{n3,0,Style["\[FilledSquare] D#",Hue[1/4],Bold]},{0,1}},{{n4,0,Style["\[FilledSquare] E",Hue[1/3],Bold]},{0,1}},{{n5,0,Style["\[FilledSquare] F",Hue[5/12],Bold]},{0,1}},{{n6,0,Style["\[FilledSquare] F#",Hue[1/2],Bold]},{0,1}},{{n7,0,Style["\[FilledSquare] G",Hue[7/12],Bold]},{0,1}},{{n8,0,Style["\[FilledSquare] G#",Hue[2/3],Bold]},{0,1}},{{n9,0,Style["\[FilledSquare] A",Hue[3/4],Bold]},{0,1}},{{n10,0,Style["\[FilledSquare] A#",Hue[5/6],Bold]},{0,1}},{{n11,0,Style["\[FilledSquare] B",Hue[11/12],Bold]},{0,1}},ControlPlacement->Left,LabelStyle->15]]



