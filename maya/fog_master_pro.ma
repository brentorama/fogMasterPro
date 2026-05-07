//Maya ASCII 2024 scene
//Name: fog_master_pro.ma
//Last modified: Thu, May 07, 2026 11:29:18 AM
//Codeset: UTF-8
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" "mtoa" "5.4.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Linux 4.18.0-553.63.1.el8_10.x86_64 #1 SMP Thu Jul 24 11:45:38 UTC 2025 x86_64";
fileInfo "UUID" "EF56F240-0000-257D-69FB-F8FE00005521";
createNode transform -s -n "persp";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -107.63357355790788 168.93619533062019 267.6290626001354 ;
	setAttr ".r" -type "double3" -30.938352729605153 -24.99999999999952 8.7733845139490325e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054BC";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 378.61280797479645;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054BD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054BE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054C0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054C1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054C2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "fog_rigging_MASTER_root";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054CC";
createNode transform -n "fog_rigging_MASTER_anim_GP" -p "fog_rigging_MASTER_root";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054CD";
createNode transform -n "fog_rigging_MASTER_CTL_GP" -p "fog_rigging_MASTER_anim_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054CE";
createNode transform -n "fog_rigging_MASTER_jet_A_CTL" -p "fog_rigging_MASTER_CTL_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054CF";
	addAttr -ci true -sn "density" -ln "density" -at "double";
	addAttr -ci true -sn "speed" -ln "speed" -at "double";
	addAttr -ci true -sn "turbulence" -ln "turbulence" -at "double";
	addAttr -ci true -sn "colorOffset" -ln "colorOffset" -at "double";
	addAttr -ci true -sn "start" -ln "start" -at "double";
	addAttr -ci true -sn "end" -ln "end" -at "double";
	addAttr -ci true -sn "particleSize" -ln "particleSize" -at "double";
	addAttr -ci true -sn "densityMulti" -ln "densityMulti" -dv 3000 -at "double";
	setAttr ".t" -type "double3" 32.967535908621201 26.667294748241485 5.7893256811736951 ;
	setAttr ".r" -type "double3" 180 0 -90 ;
	setAttr ".s" -type "double3" 3.2733990404126012 3.2733990404126012 3.2733990404126012 ;
	setAttr -k on ".density" 10;
	setAttr -k on ".speed" 50;
	setAttr -k on ".turbulence" 1;
	setAttr -k on ".colorOffset" 15;
	setAttr -k on ".start" 1;
	setAttr -k on ".end" 50;
	setAttr -k on ".particleSize" 0.05;
	setAttr -k on ".densityMulti" 300;
createNode nurbsCurve -n "fog_rigging_MASTER_jet_A_CTLShape" -p "fog_rigging_MASTER_jet_A_CTL";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054D0";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fog_rigging_MASTER_kill_CTL" -p "fog_rigging_MASTER_CTL_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054D1";
	addAttr -ci true -sn "killAmt" -ln "killAmt" -at "double";
	setAttr ".t" -type "double3" 0 6.1129242200884022 0 ;
	setAttr ".s" -type "double3" 6 6 6 ;
	setAttr -k on ".killAmt";
createNode nurbsCurve -n "fog_rigging_MASTER_kill_CTLShape" -p "fog_rigging_MASTER_kill_CTL";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054D2";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fog_rigging_MASTER_jet_B_CTL" -p "fog_rigging_MASTER_CTL_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054D3";
	addAttr -ci true -sn "density" -ln "density" -at "double";
	addAttr -ci true -sn "speed" -ln "speed" -at "double";
	addAttr -ci true -sn "turbulence" -ln "turbulence" -at "double";
	addAttr -ci true -sn "colorOffset" -ln "colorOffset" -at "double";
	addAttr -ci true -sn "start" -ln "start" -at "double";
	addAttr -ci true -sn "end" -ln "end" -at "double";
	addAttr -ci true -sn "particleSize" -ln "particleSize" -at "double";
	addAttr -ci true -sn "densityMulti" -ln "densityMulti" -dv 3000 -at "double";
	setAttr ".t" -type "double3" -42.618871029668817 25.000014449500132 2.9654773247971526 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 3.5225773612167628 3.5225773612167628 3.5225773612167628 ;
	setAttr -k on ".density" 10;
	setAttr -k on ".speed" 50;
	setAttr -k on ".turbulence" 1;
	setAttr -k on ".colorOffset";
	setAttr -k on ".start" 1;
	setAttr -k on ".end" 50;
	setAttr -k on ".particleSize" 0.05;
	setAttr -k on ".densityMulti" 300;
createNode nurbsCurve -n "fog_rigging_MASTER_jet_B_CTLShape" -p "fog_rigging_MASTER_jet_B_CTL";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054D4";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fog_rigging_MASTER_CTL" -p "fog_rigging_MASTER_anim_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054D5";
	addAttr -ci true -sn "particleSize" -ln "particleSize" -at "double";
	addAttr -ci true -sn "densityScale" -ln "densityScale" -at "double";
	addAttr -ci true -sn "bouyancy" -ln "bouyancy" -at "double";
	addAttr -ci true -k true -sn "dissipation" -ln "dissipation" -at "double";
	addAttr -ci true -k true -sn "swirl" -ln "swirl" -at "double";
	addAttr -ci true -k true -sn "turbulence" -ln "turbulence" -at "double";
	addAttr -ci true -k true -sn "frequency" -ln "frequency" -at "double";
	addAttr -ci true -k true -sn "speed" -ln "speed" -at "double";
	addAttr -ci true -sn "viscosity" -ln "viscosity" -at "double";
	addAttr -ci true -sn "particleMaxCount" -ln "particleMaxCount" -dv 1500 -at "double";
	addAttr -ci true -sn "start" -ln "start" -at "double";
	addAttr -ci true -sn "frame" -ln "frame" -at "double";
	setAttr ".ra" -type "double3" 0 45.000000000000007 0 ;
	setAttr -k on ".particleSize" 0.080000000000000016;
	setAttr -k on ".densityScale" 0.15999999999999998;
	setAttr -k on ".bouyancy" -4;
	setAttr -k on ".dissipation" 0.1;
	setAttr -k on ".swirl" 3;
	setAttr -k on ".turbulence" 0.1;
	setAttr -k on ".frequency" 0.1;
	setAttr -k on ".speed" 0.1;
	setAttr -k on ".viscosity" 0.3;
	setAttr -k on ".particleMaxCount" 8000;
	setAttr -k on ".start" 1;
	setAttr -k on ".frame";
createNode nurbsCurve -n "fog_rigging_MASTER_CTLShape" -p "fog_rigging_MASTER_CTL";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054D6";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fog_rigging_MASTER_setup_GP" -p "fog_rigging_MASTER_root";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054D7";
	setAttr ".ovdt" 1;
createNode nucleus -n "fog_rigging_MASTER_nuke" -p "fog_rigging_MASTER_setup_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054D8";
createNode transform -n "fog_rigging_MASTER_fluid_Dyn_GP" -p "fog_rigging_MASTER_setup_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054D9";
createNode transform -n "fog_rigging_MASTER_jet_a_GP" -p "fog_rigging_MASTER_fluid_Dyn_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054DA";
	addAttr -ci true -sn "rate" -ln "rate" -at "double";
	addAttr -ci true -sn "speed" -ln "speed" -at "double";
	addAttr -ci true -sn "turbulence" -ln "turbulence" -at "double";
	setAttr -k on ".rate";
	setAttr -k on ".speed";
	setAttr -k on ".turbulence";
createNode fluidEmitter -n "fog_rigging_MASTER_jet_A" -p "fog_rigging_MASTER_jet_a_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054DB";
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".emt" 4;
	setAttr -k off ".sro";
	setAttr -l on -k off ".urpp";
	setAttr -k off ".npuv";
	setAttr ".max" 1;
	setAttr ".d" -type "double3" 0 1 0 ;
	setAttr -k off ".spr";
	setAttr -k off ".spd";
	setAttr -k off ".srnd";
	setAttr ".vol" 2;
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr -k off ".rnd";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".fdo" 0;
	setAttr ".trt" 1;
	setAttr ".fjt" no;
	setAttr ".hmth" 0;
	setAttr ".fmth" 0;
	setAttr ".efc" yes;
	setAttr ".smth" 1;
createNode volumeAxisField -n "fog_rigging_MASTER_blower_A" -p "fog_rigging_MASTER_jet_a_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054DC";
	setAttr ".s" -type "double3" 4 4 4 ;
	setAttr -k off ".apv";
	setAttr ".vol" 3;
	setAttr -k off ".vex";
	setAttr ".fc[0]"  0 1 1;
	setAttr ".amag[0]"  0 1 1;
	setAttr ".crad[0]"  0 1 1;
	setAttr ".afa" 0;
	setAttr ".alx" 1;
createNode pointEmitter -n "fog_rigging_MASTER_pt_Emit_A" -p "fog_rigging_MASTER_jet_a_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054DD";
	setAttr ".s" -type "double3" 3 3 3 ;
	setAttr ".emt" 4;
	setAttr ".sro" no;
	setAttr -l on ".urpp";
	setAttr ".vol" 2;
	setAttr ".afa" 0;
createNode transform -n "fog_rigging_MASTER_jet_B_GP" -p "fog_rigging_MASTER_fluid_Dyn_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054DE";
	addAttr -ci true -sn "rate" -ln "rate" -at "double";
	addAttr -ci true -sn "speed" -ln "speed" -at "double";
	addAttr -ci true -sn "turbulence" -ln "turbulence" -at "double";
	setAttr -k on ".rate";
	setAttr -k on ".speed";
	setAttr -k on ".turbulence";
createNode volumeAxisField -n "fog_rigging_MASTER_blower_B" -p "fog_rigging_MASTER_jet_B_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054DF";
	setAttr ".s" -type "double3" 4 4 4 ;
	setAttr -k off ".apv";
	setAttr ".vol" 3;
	setAttr -k off ".vex";
	setAttr ".fc[0]"  0 1 1;
	setAttr ".amag[0]"  0 1 1;
	setAttr ".crad[0]"  0 1 1;
	setAttr ".afa" 0;
	setAttr ".alx" 1;
createNode fluidEmitter -n "fog_rigging_MASTER_jet_B" -p "fog_rigging_MASTER_jet_B_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054E0";
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".emt" 4;
	setAttr -k off ".sro";
	setAttr -l on -k off ".urpp";
	setAttr -k off ".npuv";
	setAttr ".max" 1;
	setAttr ".d" -type "double3" 0 0 0 ;
	setAttr -k off ".spr";
	setAttr -k off ".spd";
	setAttr -k off ".srnd";
	setAttr ".vol" 2;
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr -k off ".rnd";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".fdo" 0;
	setAttr ".trt" 1;
	setAttr ".fjt" no;
	setAttr ".hmth" 0;
	setAttr ".fhe" 1;
	setAttr ".fmth" 0;
	setAttr ".ffe" 1;
	setAttr ".efc" yes;
	setAttr ".smth" 1;
createNode pointEmitter -n "fog_rigging_MASTER_pt_Emit_B" -p "fog_rigging_MASTER_jet_B_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054E1";
	setAttr ".s" -type "double3" 3 3 3 ;
	setAttr ".emt" 4;
	setAttr ".sro" no;
	setAttr -l on ".urpp";
	setAttr -s 2 ".full[0:1]" yes yes;
	setAttr ".vol" 2;
	setAttr ".afa" 0;
	setAttr ".alx" 100;
createNode transform -n "fog_rigging_MASTER_destroy_GP" -p "fog_rigging_MASTER_fluid_Dyn_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054E2";
createNode fluidEmitter -n "fog_rigging_MASTER_fluidDestroyer" -p "fog_rigging_MASTER_destroy_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054E3";
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".emt" 4;
	setAttr -k off ".sro";
	setAttr -l on -k off ".urpp";
	setAttr -k off ".npuv";
	setAttr ".max" 1;
	setAttr ".d" -type "double3" 0 0 0 ;
	setAttr -k off ".spr";
	setAttr -k off ".spd";
	setAttr -k off ".srnd";
	setAttr ".vol" 1;
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr -k off ".rnd";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".fdo" 3;
	setAttr ".trt" 1;
	setAttr ".trb" 1;
	setAttr ".trs" 0.5;
	setAttr ".hmth" 0;
	setAttr ".fhe" 1;
	setAttr ".fmth" 0;
	setAttr ".ffe" 1;
	setAttr ".efc" yes;
	setAttr ".smth" 1;
	setAttr ".invl" 1;
	setAttr ".mstr" yes;
createNode fluidEmitter -n "fog_rigging_MASTER_turbA" -p "fog_rigging_MASTER_destroy_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054E4";
	setAttr ".lodv" no;
	setAttr ".s" -type "double3" 1.45 1.45 1.45 ;
	setAttr ".emt" 4;
	setAttr -k off ".sro";
	setAttr -l on -k off ".urpp";
	setAttr -k off ".npuv";
	setAttr ".max" 1;
	setAttr ".d" -type "double3" 0 0 0 ;
	setAttr -k off ".spr";
	setAttr -k off ".spd";
	setAttr -k off ".srnd";
	setAttr ".vol" 4;
	setAttr ".vsw" 180;
	setAttr ".vsr" 0.59800000000000009;
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr ".alx" 1;
	setAttr -k off ".rnd";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".trt" 1;
	setAttr ".trb" 1;
	setAttr ".trs" 1;
	setAttr ".fde" -1;
	setAttr ".hmth" 0;
	setAttr ".fhe" 1;
	setAttr ".fmth" 0;
	setAttr ".ffe" 1;
	setAttr ".efc" yes;
createNode fluidEmitter -n "fog_rigging_MASTER_turbB" -p "fog_rigging_MASTER_destroy_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054E5";
	setAttr ".lodv" no;
	setAttr ".s" -type "double3" 1.45 1.45 1.45 ;
	setAttr ".emt" 4;
	setAttr -k off ".sro";
	setAttr -l on -k off ".urpp";
	setAttr -k off ".npuv";
	setAttr ".max" 1;
	setAttr -k off ".spr";
	setAttr -k off ".spd";
	setAttr -k off ".srnd";
	setAttr ".vol" 4;
	setAttr ".vsw" 180;
	setAttr ".vsr" 0.59800000000000009;
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr ".alx" 1;
	setAttr -k off ".rnd";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".trb" 1;
	setAttr ".trs" 1;
	setAttr ".fde" -1;
	setAttr ".hmth" 0;
	setAttr ".fhe" 1;
	setAttr ".fmth" 0;
	setAttr ".ffe" 1;
	setAttr ".efc" yes;
createNode fluidEmitter -n "fog_rigging_MASTER_ptEmit" -p "fog_rigging_MASTER_fluid_Dyn_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054E6";
	setAttr -k off ".sro";
	setAttr -l on -k off ".urpp";
	setAttr -k off ".npuv";
	setAttr ".max" 0.5;
	setAttr -k off ".spr";
	setAttr -k off ".spd";
	setAttr -k off ".srnd";
	setAttr -k off ".afc";
	setAttr -k off ".afa";
	setAttr -k off ".rnd";
	setAttr -k off ".ssz";
	setAttr -k off ".dss";
	setAttr ".fdo" 0;
	setAttr ".trt" 1;
	setAttr ".fjt" no;
	setAttr ".trb" 0.5;
	setAttr ".trs" 0.5;
	setAttr ".dtr" 1;
	setAttr ".fde" -1;
	setAttr ".hmth" 0;
	setAttr ".fhe" 1;
	setAttr ".fmth" 0;
	setAttr ".ffe" 1;
	setAttr ".efc" yes;
	setAttr ".smth" 1;
	setAttr ".invl" 0.1;
	setAttr ".uprd" yes;
createNode transform -n "fog_rigging_MASTER_render_GP" -p "fog_rigging_MASTER_root";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054E7";
createNode transform -n "fog_rigging_MASTER_fluid_GP" -p "fog_rigging_MASTER_render_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054E8";
createNode transform -n "fog_rigging_MASTER_smokeBox" -p "fog_rigging_MASTER_fluid_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054E9";
	setAttr ".ovdt" 2;
createNode fluidShape -n "fog_rigging_MASTER_smokeBoxShape" -p "fog_rigging_MASTER_smokeBox";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054EA";
	setAttr -k off ".v";
	setAttr ".rt" 1;
	setAttr ".vf" 0;
	setAttr ".iss" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bres" 120;
	setAttr ".sqvx" yes;
	setAttr ".rw" 120;
	setAttr ".rh" 53;
	setAttr ".rd" 100;
	setAttr ".dw" 180;
	setAttr ".dh" 80;
	setAttr ".dd" 150;
	setAttr -s 2 ".ifc";
	setAttr -s 6 ".sd";
	setAttr -s 6 ".fce";
	setAttr -s 6 ".eml";
	setAttr ".vqu" 2;
	setAttr ".bod" 4;
	setAttr ".cmet" 1;
	setAttr ".hds" 3;
	setAttr ".dsb" -3;
	setAttr ".dsns" 0.0099999997764825821;
	setAttr ".sfrp" 0;
	setAttr ".vsw" 2;
	setAttr ".vsns" 0.0099999997764825821;
	setAttr ".cmt" 2;
	setAttr -s 2 ".of";
	setAttr ".ss" yes;
	setAttr ".qua" 0.10000000149011612;
	setAttr -s 3 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 1 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 0.47826087474822998;
	setAttr ".cl[1].clc" -type "float3" 0 1 0 ;
	setAttr ".cl[1].cli" 1;
	setAttr ".cl[2].clp" 1;
	setAttr ".cl[2].clc" -type "float3" 0 0 1 ;
	setAttr ".cl[2].cli" 1;
	setAttr ".coi" 5;
	setAttr ".cib" 0.15966387093067169;
	setAttr -s 2 ".opa[0:1]"  0 0 1 1 1 1;
	setAttr ".t" -type "float3" 0.56493509 0.56493509 0.56493509 ;
	setAttr ".shp" 0.69999998807907104;
	setAttr ".lbrt" 0.60000002384185791;
	setAttr ".abrt" 0.20000000298023224;
	setAttr ".ambc" -type "float3" 0.21428572 0.21428572 0.21428572 ;
	setAttr -s 5 ".i";
	setAttr ".i[1].ip" 1;
	setAttr ".i[1].ic" -type "float3" 1 0 0 ;
	setAttr ".i[1].ii" 1;
	setAttr ".i[2].ip" 0.17391304671764374;
	setAttr ".i[2].ic" -type "float3" 0 0 0 ;
	setAttr ".i[2].ii" 1;
	setAttr ".i[3].ip" 0.078260868787765503;
	setAttr ".i[3].ic" -type "float3" 0 0.107 0 ;
	setAttr ".i[3].ii" 1;
	setAttr ".i[4].ip" 0.11304347962141037;
	setAttr ".i[4].ic" -type "float3" 0 0 1 ;
	setAttr ".i[4].ii" 1;
	setAttr ".i[5].ip" 0.80000001192092896;
	setAttr ".i[5].ic" -type "float3" 0 0 0 ;
	setAttr ".i[5].ii" 1;
	setAttr ".ili" 9;
	setAttr ".iib" 0.15966387093067169;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
	setAttr ".dos" 2;
	setAttr ".edr" 0.10000000149011612;
	setAttr ".srt" 0.0010000000474974513;
	setAttr ".ssf" yes;
	setAttr ".smpm" 0;
	setAttr ".rl" no;
	setAttr ".dl" -type "float3" 0 0.80000001 0.5 ;
	setAttr ".tty" 1;
	setAttr ".ctx" yes;
	setAttr ".otx" yes;
	setAttr ".a" 0.80000001192092896;
	setAttr ".ra" 0.60000002384185791;
	setAttr ".th" 0.5;
	setAttr ".txsc" -type "float3" 1 0.75999999 1 ;
	setAttr ".fr" 0.85000002384185791;
	setAttr ".falo" 1;
	setAttr ".zfc" 1.4285714626312256;
	setAttr ".ctmp" no;
	setAttr ".ltmp" no;
	setAttr ".crea" no;
	setAttr ".lrea" no;
	setAttr ".lfal" no;
	setAttr ".csd" 0.2142857164144516;
createNode transform -n "fog_rigging_MASTER_dust" -p "fog_rigging_MASTER_fluid_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054EB";
createNode nParticle -n "fog_rigging_MASTER_dustShape" -p "fog_rigging_MASTER_dust";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054EC";
	addAttr -s false -ci true -sn "lifespanPP" -ln "lifespanPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "lifespanPP0" -ln "lifespanPP0" -dt "doubleArray";
	addAttr -ci true -sn "lifespan" -ln "lifespan" -at "double";
	addAttr -is true -ci true -sn "colorAccum" -ln "colorAccum" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -sn "useLighting" -ln "useLighting" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -sn "pointSize" -ln "pointSize" -dv 2 -min 1 -max 60 -at "long";
	addAttr -is true -ci true -sn "normalDir" -ln "normalDir" -dv 2 -min 1 -max 3 -at "long";
	addAttr -s false -ci true -sn "radiusPP" -ln "radiusPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "radiusPP0" -ln "radiusPP0" -dt "doubleArray";
	addAttr -is true -ci true -sn "betterIllumination" -ln "betterIllumination" -min 
		0 -max 1 -at "bool";
	addAttr -is true -ci true -sn "surfaceShading" -ln "surfaceShading" -min 0 -max 
		1 -at "float";
	addAttr -is true -ci true -sn "flatShaded" -ln "flatShaded" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -sn "radius0" -ln "radius0" -dv 1 -min 0 -max 10 -at "float";
	addAttr -is true -ci true -sn "radius1" -ln "radius1" -dv 1 -min 0 -max 10 -at "float";
	addAttr -is true -ci true -sn "tailSize" -ln "tailSize" -dv 1 -min 0 -max 30 -at "float";
	addAttr -s false -ci true -sn "rgbPP" -ln "rgbPP" -dt "vectorArray";
	addAttr -ci true -h true -sn "rgbPP0" -ln "rgbPP0" -dt "vectorArray";
	addAttr -s false -ci true -sn "incandescencePP" -ln "incandescencePP" -dt "vectorArray";
	addAttr -ci true -h true -sn "incandescencePP0" -ln "incandescencePP0" -dt "vectorArray";
	addAttr -s false -ci true -sn "opacityPP" -ln "opacityPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "opacityPP0" -ln "opacityPP0" -dt "doubleArray";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr -s 3 ".ifc";
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 8166;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -s 2 ".npt";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" ".O[0] = 1;";
	setAttr -s 2 ".sd";
	setAttr ".cts" 72;
	setAttr ".chw" 120;
	setAttr ".prt" 8;
	setAttr ".cofl" 1;
	setAttr ".pmss" 0.0099999997764825821;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
	setAttr ".vssc[0]"  0 1 1;
	setAttr ".stns[0]"  0 1 1;
	setAttr ".rsph" 10;
	setAttr -s 2 ".rdc[0:1]"  0 0 1 1 1 1;
	setAttr ".rci" 5;
	setAttr ".rsr" 0.58791208749248103;
	setAttr ".mssc[0]"  0 1 1;
	setAttr ".pfsc[0]"  0 1 1;
	setAttr ".frsc[0]"  0 1 1;
	setAttr ".stsc[0]"  0 1 1;
	setAttr ".clsc[0]"  0 1 1;
	setAttr ".bosc[0]"  0 1 1;
	setAttr -s 2 ".opc[0:1]"  0 1 1 1 1 1;
	setAttr ".osr" 1;
	setAttr -s 6 ".cl";
	setAttr ".cl[0].clp" 0.095652170479297638;
	setAttr ".cl[0].clc" -type "float3" 1 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 0 1 ;
	setAttr ".cl[1].cli" 1;
	setAttr ".cl[2].clp" 0.23478260636329651;
	setAttr ".cl[2].clc" -type "float3" 1 1 0 ;
	setAttr ".cl[2].cli" 1;
	setAttr ".cl[3].clp" 0.42608696222305298;
	setAttr ".cl[3].clc" -type "float3" 0 1 0 ;
	setAttr ".cl[3].cli" 1;
	setAttr ".cl[4].clp" 0.63478302955627441;
	setAttr ".cl[4].clc" -type "float3" 0 1 1 ;
	setAttr ".cl[4].cli" 1;
	setAttr ".cl[5].clp" 0.80000001192092896;
	setAttr ".cl[5].clc" -type "float3" 0 0 1 ;
	setAttr ".cl[5].cli" 1;
	setAttr ".coi" 6;
	setAttr ".cimx" 5;
	setAttr ".colr" 0.093406593601045376;
	setAttr -s 2 ".inca";
	setAttr ".inca[0].incap" 0.7130434513092041;
	setAttr ".inca[0].incac" -type "float3" 0 0 0 ;
	setAttr ".inca[0].incai" 1;
	setAttr ".inca[1].incap" 1;
	setAttr ".inca[1].incac" -type "float3" 1 1 1 ;
	setAttr ".inca[1].incai" 1;
	setAttr ".ini" 3;
	setAttr ".iimx" 50;
	setAttr ".icar" 0.25824175823152395;
	setAttr ".caat" 0;
	setAttr ".pcre" yes;
	setAttr ".lifespanPP0" -type "doubleArray" 0 ;
	setAttr -k on ".lifespan" 1;
	setAttr ".radiusPP0" -type "doubleArray" 0 ;
	setAttr -k on ".betterIllumination";
	setAttr -k on ".surfaceShading" 1;
	setAttr -k on ".flatShaded" yes;
	setAttr ".radius0" 0.5;
	setAttr ".rgbPP0" -type "vectorArray" 0 ;
	setAttr ".incandescencePP0" -type "vectorArray" 0 ;
	setAttr ".opacityPP0" -type "doubleArray" 0 ;
createNode radialField -n "fog_rigging_MASTER_particleKeeper" -p "fog_rigging_MASTER_fluid_GP";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054ED";
	setAttr ".mag" -20;
	setAttr ".att" 0.5;
	setAttr ".max" 0;
	setAttr ".vol" 1;
	setAttr ".vex" yes;
	setAttr ".fc[0]"  0 1 1;
	setAttr ".amag[0]"  0 1 1;
	setAttr ".crad[0]"  0 1 1;
	setAttr ".typ" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054C3";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054C4";
	setAttr ".GI_diffuse_samples" 0;
	setAttr ".GI_specular_samples" 0;
	setAttr ".GI_transmission_samples" 1;
	setAttr ".GI_sss_samples" 3;
	setAttr ".llnk" 0;
	setAttr ".rgtp" 0;
	setAttr ".texture_max_memory_MB" 2048;
	setAttr ".autotx" no;
	setAttr ".logv" 0;
	setAttr ".pspath" -type "string" "[ARNOLD_PROCEDURAL_PATH]";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054C5";
	setAttr ".ai_translator" -type "string" "exr";
	setAttr ".exr_compression" 2;
	setAttr ".half_precision" yes;
	setAttr ".tiled" no;
createNode displayLayerManager -n "layerManager";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054C6";
createNode displayLayer -n "defaultLayer";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054C7";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054C8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054C9";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054CA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EF56F240-0000-257D-69FB-F7E3000054CB";
createNode makeNurbCircle -n "fog_rigging_MASTER_makeNurbCircle1";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054F4";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 5.1000000000000005;
createNode makeNurbCircle -n "fog_rigging_MASTER_makeNurbCircle2";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054F5";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 2.18;
createNode makeNurbCircle -n "fog_rigging_MASTER_makeNurbCircle4";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054F6";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 5.1000000000000005;
createNode expression -n "fog_rigging_MASTER_expression1";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054F7";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = frame;";
createNode makeNurbCircle -n "fog_rigging_MASTER_makeNurbCircle3";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054F8";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 160;
	setAttr ".d" 1;
	setAttr ".s" 4;
createNode multiplyDivide -n "fog_rigging_MASTER_multiplyDivide2";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054F9";
	setAttr ".i2" -type "float3" 3 3 3 ;
createNode hsvToRgb -n "fog_rigging_MASTER_hsvToRgb1";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054FA";
	setAttr ".i" -type "float3" 2.2160947 1 1 ;
createNode multDoubleLinear -n "fog_rigging_MASTER_multDoubleLinear1";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054FB";
	setAttr ".i2" 360;
createNode ramp -n "fog_rigging_MASTER_ramp1";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054FC";
	setAttr ".in" 4;
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 1;
	setAttr ".cel[1].ec" -type "float3" 1 1 1 ;
createNode multDoubleLinear -n "fog_rigging_MASTER_multDoubleLinear2";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054FD";
	setAttr ".i2" 0.01;
createNode addDoubleLinear -n "fog_rigging_MASTER_addDoubleLinear1";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054FE";
	setAttr ".ihi" 2;
createNode timeToUnitConversion -n "fog_rigging_MASTER_timeToUnit";
	rename -uid "EF56F240-0000-257D-69FB-F7E5000054FF";
	setAttr ".cf" 0.005;
createNode multiplyDivide -n "fog_rigging_MASTER_multiplyDivide1";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005500";
createNode condition -n "fog_rigging_MASTER_condition3";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005501";
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode condition -n "fog_rigging_MASTER_condition2";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005502";
	setAttr ".op" 5;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode condition -n "fog_rigging_MASTER_condition1";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005503";
	setAttr ".op" 3;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode multDoubleLinear -n "fog_rigging_MASTER_multDoubleLinear3";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005504";
	setAttr ".i2" 200;
createNode multiplyDivide -n "fog_rigging_MASTER_multiplyDivide3";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005505";
createNode condition -n "fog_rigging_MASTER_condition6";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005506";
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode condition -n "fog_rigging_MASTER_condition5";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005507";
	setAttr ".op" 5;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode condition -n "fog_rigging_MASTER_condition4";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005508";
	setAttr ".op" 3;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "fog_rigging_MASTER_multiplyDivide4";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005509";
	setAttr ".i2" -type "float3" 5 5 5 ;
createNode hsvToRgb -n "fog_rigging_MASTER_hsvToRgb2";
	rename -uid "EF56F240-0000-257D-69FB-F7E50000550A";
	setAttr ".i" -type "float3" 248.7597 1 1 ;
createNode multDoubleLinear -n "fog_rigging_MASTER_multDoubleLinear5";
	rename -uid "EF56F240-0000-257D-69FB-F7E50000550B";
	setAttr ".i2" 255;
createNode ramp -n "fog_rigging_MASTER_ramp2";
	rename -uid "EF56F240-0000-257D-69FB-F7E50000550C";
	setAttr ".in" 4;
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 1;
	setAttr ".cel[1].ec" -type "float3" 1 1 1 ;
createNode multDoubleLinear -n "fog_rigging_MASTER_multDoubleLinear6";
	rename -uid "EF56F240-0000-257D-69FB-F7E50000550D";
	setAttr ".i2" 0.01;
createNode addDoubleLinear -n "fog_rigging_MASTER_addDoubleLinear2";
	rename -uid "EF56F240-0000-257D-69FB-F7E50000550E";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "fog_rigging_MASTER_multDoubleLinear7";
	rename -uid "EF56F240-0000-257D-69FB-F7E50000550F";
	setAttr ".i2" 200;
createNode multDoubleLinear -n "fog_rigging_MASTER_multDoubleLinear4";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005510";
	setAttr ".i2" -1;
createNode animBlendNodeAdditiveRotation -n "fog_rigging_MASTER_animBlendNodeAdditiveRotation1";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005511";
	setAttr ".ia" -type "double3" 1 1 0 ;
	setAttr ".ib" -type "double3" 0 180 0 ;
	setAttr ".o" -type "double3" 90 270 0 ;
createNode particleSamplerInfo -n "fog_rigging_MASTER_particleSamplerInfo3";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005512";
createNode multDoubleLinear -n "fog_rigging_MASTER_multDoubleLinear9";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005513";
	setAttr ".i2" 0.5;
createNode multDoubleLinear -n "fog_rigging_MASTER_multDoubleLinear8";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005514";
	setAttr ".i2" 0.05;
createNode materialInfo -n "fog_rigging_MASTER_materialInfo1";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005515";
createNode shadingEngine -n "fog_rigging_MASTER_fluidShape1SG";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005516";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "fog_rigging_MASTER_materialInfo2";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005517";
createNode shadingEngine -n "fog_rigging_MASTER_nParticlePointsSE";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005518";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode blinn -n "fog_rigging_MASTER_npPointsBlinn";
	rename -uid "EF56F240-0000-257D-69FB-F7E500005519";
createNode particleSamplerInfo -n "fog_rigging_MASTER_particleSamplerInfo1";
	rename -uid "EF56F240-0000-257D-69FB-F7E50000551A";
createNode particleCloud -n "fog_rigging_MASTER_npPointsVolume";
	rename -uid "EF56F240-0000-257D-69FB-F7E50000551B";
createNode multiplyDivide -n "fog_rigging_MASTER_multiplyDivide5";
	rename -uid "EF56F240-0000-257D-69FB-F7E50000551C";
	setAttr ".i2" -type "float3" 0.5 0.5 0.5 ;
createNode script -n "fog_rigging_MASTER_sceneConfigurationScriptNode";
	rename -uid "EF56F240-0000-257D-69FB-F7E50000551E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 120 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 72;
	setAttr ".unw" 72;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 25 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".an" yes;
	setAttr ".ef" 24;
	setAttr ".pff" yes;
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".al" yes;
	setAttr ".dar" 1.7777777910232544;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "/marza/proj/REG/tools/ocio/REG_v2.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
	setAttr ".vn" -type "string" "ACES 1.0 - SDR Video";
	setAttr ".dn" -type "string" "sRGB - Display";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
	setAttr ".potn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "fog_rigging_MASTER_CTL.r" "fog_rigging_MASTER_CTL_GP.r";
connectAttr "fog_rigging_MASTER_CTL.s" "fog_rigging_MASTER_CTL_GP.s";
connectAttr "fog_rigging_MASTER_CTL.t" "fog_rigging_MASTER_CTL_GP.t";
connectAttr "fog_rigging_MASTER_makeNurbCircle1.oc" "fog_rigging_MASTER_jet_A_CTLShape.cr"
		;
connectAttr "fog_rigging_MASTER_makeNurbCircle2.oc" "fog_rigging_MASTER_kill_CTLShape.cr"
		;
connectAttr "fog_rigging_MASTER_makeNurbCircle4.oc" "fog_rigging_MASTER_jet_B_CTLShape.cr"
		;
connectAttr "fog_rigging_MASTER_expression1.out[0]" "fog_rigging_MASTER_CTL.frame"
		;
connectAttr "fog_rigging_MASTER_makeNurbCircle3.oc" "fog_rigging_MASTER_CTLShape.cr"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_nuke.cti";
connectAttr "fog_rigging_MASTER_dustShape.cust" "fog_rigging_MASTER_nuke.niao[0]"
		;
connectAttr "fog_rigging_MASTER_dustShape.stst" "fog_rigging_MASTER_nuke.nias[0]"
		;
connectAttr "fog_rigging_MASTER_CTL.start" "fog_rigging_MASTER_nuke.stf";
connectAttr "fog_rigging_MASTER_CTL.r" "fog_rigging_MASTER_fluid_Dyn_GP.r";
connectAttr "fog_rigging_MASTER_CTL.s" "fog_rigging_MASTER_fluid_Dyn_GP.s";
connectAttr "fog_rigging_MASTER_CTL.t" "fog_rigging_MASTER_fluid_Dyn_GP.t";
connectAttr "fog_rigging_MASTER_jet_A_CTL.r" "fog_rigging_MASTER_jet_a_GP.r";
connectAttr "fog_rigging_MASTER_jet_A_CTL.s" "fog_rigging_MASTER_jet_a_GP.s";
connectAttr "fog_rigging_MASTER_jet_A_CTL.t" "fog_rigging_MASTER_jet_a_GP.t";
connectAttr ":time1.o" "fog_rigging_MASTER_jet_A.ct";
connectAttr "fog_rigging_MASTER_smokeBoxShape.ifl" "fog_rigging_MASTER_jet_A.full[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.ots" "fog_rigging_MASTER_jet_A.dt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.inh" "fog_rigging_MASTER_jet_A.inh[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sti" "fog_rigging_MASTER_jet_A.stt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sd[0]" "fog_rigging_MASTER_jet_A.sd[0]"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide2.o" "fog_rigging_MASTER_jet_A.pc"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide1.oz" "fog_rigging_MASTER_jet_A.trb"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide1.ox" "fog_rigging_MASTER_jet_A.fde"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide1.oy" "fog_rigging_MASTER_jet_A.alx"
		;
connectAttr "fog_rigging_MASTER_jet_A_CTL.densityMulti" "fog_rigging_MASTER_jet_A.rat"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.fd" "fog_rigging_MASTER_blower_A.ind[0]"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_blower_A.tim";
connectAttr "fog_rigging_MASTER_multiplyDivide1.oy" "fog_rigging_MASTER_blower_A.mag"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide1.oz" "fog_rigging_MASTER_blower_A.trb"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_pt_Emit_A.ct";
connectAttr "fog_rigging_MASTER_dustShape.ifl" "fog_rigging_MASTER_pt_Emit_A.full[0]"
		;
connectAttr "fog_rigging_MASTER_dustShape.tss" "fog_rigging_MASTER_pt_Emit_A.dt[0]"
		;
connectAttr "fog_rigging_MASTER_dustShape.inh" "fog_rigging_MASTER_pt_Emit_A.inh[0]"
		;
connectAttr "fog_rigging_MASTER_dustShape.stt" "fog_rigging_MASTER_pt_Emit_A.stt[0]"
		;
connectAttr "fog_rigging_MASTER_dustShape.sd[0]" "fog_rigging_MASTER_pt_Emit_A.sd[0]"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide1.oy" "fog_rigging_MASTER_pt_Emit_A.alx"
		;
connectAttr "fog_rigging_MASTER_multDoubleLinear3.o" "fog_rigging_MASTER_pt_Emit_A.rat"
		;
connectAttr "fog_rigging_MASTER_jet_B_CTL.r" "fog_rigging_MASTER_jet_B_GP.r";
connectAttr "fog_rigging_MASTER_jet_B_CTL.s" "fog_rigging_MASTER_jet_B_GP.s";
connectAttr "fog_rigging_MASTER_jet_B_CTL.t" "fog_rigging_MASTER_jet_B_GP.t";
connectAttr ":time1.o" "fog_rigging_MASTER_blower_B.tim";
connectAttr "fog_rigging_MASTER_multiplyDivide3.oy" "fog_rigging_MASTER_blower_B.mag"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide3.oz" "fog_rigging_MASTER_blower_B.trb"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.fd" "fog_rigging_MASTER_blower_B.ind[0]"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_jet_B.ct";
connectAttr "fog_rigging_MASTER_smokeBoxShape.ifl" "fog_rigging_MASTER_jet_B.full[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.ots" "fog_rigging_MASTER_jet_B.dt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.inh" "fog_rigging_MASTER_jet_B.inh[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sti" "fog_rigging_MASTER_jet_B.stt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sd[3]" "fog_rigging_MASTER_jet_B.sd[0]"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide3.oy" "fog_rigging_MASTER_jet_B.alx"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide3.ox" "fog_rigging_MASTER_jet_B.fde"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide4.o" "fog_rigging_MASTER_jet_B.pc"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide3.oz" "fog_rigging_MASTER_jet_B.trb"
		;
connectAttr "fog_rigging_MASTER_jet_B_CTL.densityMulti" "fog_rigging_MASTER_jet_B.rat"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_pt_Emit_B.ct";
connectAttr "fog_rigging_MASTER_dustShape.ifl" "fog_rigging_MASTER_pt_Emit_B.full[1]"
		;
connectAttr "fog_rigging_MASTER_dustShape.tss" "fog_rigging_MASTER_pt_Emit_B.dt[1]"
		;
connectAttr "fog_rigging_MASTER_dustShape.inh" "fog_rigging_MASTER_pt_Emit_B.inh[1]"
		;
connectAttr "fog_rigging_MASTER_dustShape.stt" "fog_rigging_MASTER_pt_Emit_B.stt[1]"
		;
connectAttr "fog_rigging_MASTER_dustShape.sd[2]" "fog_rigging_MASTER_pt_Emit_B.sd[1]"
		;
connectAttr "fog_rigging_MASTER_multDoubleLinear7.o" "fog_rigging_MASTER_pt_Emit_B.rat"
		;
connectAttr "fog_rigging_MASTER_kill_CTL.t" "fog_rigging_MASTER_destroy_GP.t";
connectAttr "fog_rigging_MASTER_kill_CTL.s" "fog_rigging_MASTER_destroy_GP.s";
connectAttr "fog_rigging_MASTER_kill_CTL.r" "fog_rigging_MASTER_destroy_GP.r";
connectAttr ":time1.o" "fog_rigging_MASTER_fluidDestroyer.ct";
connectAttr "fog_rigging_MASTER_smokeBoxShape.ifl" "fog_rigging_MASTER_fluidDestroyer.full[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.ots" "fog_rigging_MASTER_fluidDestroyer.dt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.inh" "fog_rigging_MASTER_fluidDestroyer.inh[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sti" "fog_rigging_MASTER_fluidDestroyer.stt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sd[4]" "fog_rigging_MASTER_fluidDestroyer.sd[0]"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide2.o" "fog_rigging_MASTER_fluidDestroyer.pc"
		;
connectAttr "fog_rigging_MASTER_multDoubleLinear4.o" "fog_rigging_MASTER_fluidDestroyer.fde"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_turbA.ct";
connectAttr "fog_rigging_MASTER_smokeBoxShape.ifl" "fog_rigging_MASTER_turbA.full[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.ots" "fog_rigging_MASTER_turbA.dt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.inh" "fog_rigging_MASTER_turbA.inh[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sti" "fog_rigging_MASTER_turbA.stt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sd[5]" "fog_rigging_MASTER_turbA.sd[0]"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide2.o" "fog_rigging_MASTER_turbA.pc"
		;
connectAttr "fog_rigging_MASTER_animBlendNodeAdditiveRotation1.oy" "fog_rigging_MASTER_turbA.ry"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_turbB.ct";
connectAttr "fog_rigging_MASTER_smokeBoxShape.ifl" "fog_rigging_MASTER_turbB.full[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.ots" "fog_rigging_MASTER_turbB.dt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.inh" "fog_rigging_MASTER_turbB.inh[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sti" "fog_rigging_MASTER_turbB.stt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sd[6]" "fog_rigging_MASTER_turbB.sd[0]"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide4.o" "fog_rigging_MASTER_turbB.pc"
		;
connectAttr "fog_rigging_MASTER_animBlendNodeAdditiveRotation1.ox" "fog_rigging_MASTER_turbB.ry"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_ptEmit.ct";
connectAttr "fog_rigging_MASTER_dustShape.cwcn" "fog_rigging_MASTER_ptEmit.ocd";
connectAttr "fog_rigging_MASTER_dustShape.ctd" "fog_rigging_MASTER_ptEmit.t";
connectAttr "fog_rigging_MASTER_dustShape.cwps" "fog_rigging_MASTER_ptEmit.opd";
connectAttr "fog_rigging_MASTER_dustShape.cwvl" "fog_rigging_MASTER_ptEmit.ovd";
connectAttr "fog_rigging_MASTER_dustShape.id" "fog_rigging_MASTER_ptEmit.paid";
connectAttr "fog_rigging_MASTER_smokeBoxShape.ifl" "fog_rigging_MASTER_ptEmit.full[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.ots" "fog_rigging_MASTER_ptEmit.dt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.inh" "fog_rigging_MASTER_ptEmit.inh[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sti" "fog_rigging_MASTER_ptEmit.stt[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.sd[7]" "fog_rigging_MASTER_ptEmit.sd[0]"
		;
connectAttr "fog_rigging_MASTER_particleSamplerInfo3.rgb" "fog_rigging_MASTER_ptEmit.pc"
		;
connectAttr "fog_rigging_MASTER_dustShape.radiusPP" "fog_rigging_MASTER_ptEmit.rdpp"
		;
connectAttr "fog_rigging_MASTER_CTL.r" "fog_rigging_MASTER_fluid_GP.r";
connectAttr "fog_rigging_MASTER_CTL.s" "fog_rigging_MASTER_fluid_GP.s";
connectAttr "fog_rigging_MASTER_CTL.t" "fog_rigging_MASTER_fluid_GP.t";
connectAttr "fog_rigging_MASTER_multDoubleLinear9.o" "fog_rigging_MASTER_smokeBox.ty"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_smokeBoxShape.cti";
connectAttr "fog_rigging_MASTER_jet_A.ef" "fog_rigging_MASTER_smokeBoxShape.eml[0].emfr"
		;
connectAttr "fog_rigging_MASTER_ptEmit.ef" "fog_rigging_MASTER_smokeBoxShape.eml[1].emfr"
		;
connectAttr "fog_rigging_MASTER_turbA.ef" "fog_rigging_MASTER_smokeBoxShape.eml[2].emfr"
		;
connectAttr "fog_rigging_MASTER_jet_B.ef" "fog_rigging_MASTER_smokeBoxShape.eml[3].emfr"
		;
connectAttr "fog_rigging_MASTER_turbB.ef" "fog_rigging_MASTER_smokeBoxShape.eml[4].emfr"
		;
connectAttr "fog_rigging_MASTER_fluidDestroyer.ef" "fog_rigging_MASTER_smokeBoxShape.eml[5].emfr"
		;
connectAttr "fog_rigging_MASTER_jet_A.efc" "fog_rigging_MASTER_smokeBoxShape.fce[0]"
		;
connectAttr "fog_rigging_MASTER_jet_B.efc" "fog_rigging_MASTER_smokeBoxShape.fce[3]"
		;
connectAttr "fog_rigging_MASTER_fluidDestroyer.efc" "fog_rigging_MASTER_smokeBoxShape.fce[4]"
		;
connectAttr "fog_rigging_MASTER_turbA.efc" "fog_rigging_MASTER_smokeBoxShape.fce[5]"
		;
connectAttr "fog_rigging_MASTER_turbB.efc" "fog_rigging_MASTER_smokeBoxShape.fce[6]"
		;
connectAttr "fog_rigging_MASTER_ptEmit.efc" "fog_rigging_MASTER_smokeBoxShape.fce[7]"
		;
connectAttr "fog_rigging_MASTER_blower_A.of[0]" "fog_rigging_MASTER_smokeBoxShape.ifc[0]"
		;
connectAttr "fog_rigging_MASTER_blower_B.of[0]" "fog_rigging_MASTER_smokeBoxShape.ifc[1]"
		;
connectAttr "fog_rigging_MASTER_CTL.bouyancy" "fog_rigging_MASTER_smokeBoxShape.buo"
		;
connectAttr "fog_rigging_MASTER_CTL.densityScale" "fog_rigging_MASTER_smokeBoxShape.dsc"
		;
connectAttr "fog_rigging_MASTER_CTL.dissipation" "fog_rigging_MASTER_smokeBoxShape.dds"
		;
connectAttr "fog_rigging_MASTER_CTL.speed" "fog_rigging_MASTER_smokeBoxShape.tbs"
		;
connectAttr "fog_rigging_MASTER_CTL.frequency" "fog_rigging_MASTER_smokeBoxShape.tfr"
		;
connectAttr "fog_rigging_MASTER_CTL.turbulence" "fog_rigging_MASTER_smokeBoxShape.tst"
		;
connectAttr "fog_rigging_MASTER_multDoubleLinear8.o" "fog_rigging_MASTER_smokeBoxShape.tti"
		;
connectAttr "fog_rigging_MASTER_CTL.viscosity" "fog_rigging_MASTER_smokeBoxShape.viy"
		;
connectAttr "fog_rigging_MASTER_CTL.start" "fog_rigging_MASTER_smokeBoxShape.stf"
		;
connectAttr "fog_rigging_MASTER_dustShape.fd" "fog_rigging_MASTER_smokeBoxShape.ind[0]"
		;
connectAttr "fog_rigging_MASTER_dustShape.inrr" "fog_rigging_MASTER_dustShape.radiusPP"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_dustShape.cti";
connectAttr "fog_rigging_MASTER_nuke.noao[0]" "fog_rigging_MASTER_dustShape.nxst"
		;
connectAttr "fog_rigging_MASTER_nuke.stf" "fog_rigging_MASTER_dustShape.stf";
connectAttr "fog_rigging_MASTER_pt_Emit_A.ot[0]" "fog_rigging_MASTER_dustShape.npt[0]"
		;
connectAttr "fog_rigging_MASTER_pt_Emit_B.ot[1]" "fog_rigging_MASTER_dustShape.npt[2]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.of[0]" "fog_rigging_MASTER_dustShape.ifc[0]"
		;
connectAttr "fog_rigging_MASTER_particleKeeper.of[0]" "fog_rigging_MASTER_dustShape.ifc[1]"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.of[1]" "fog_rigging_MASTER_dustShape.ifc[2]"
		;
connectAttr "fog_rigging_MASTER_CTL.particleSize" "fog_rigging_MASTER_dustShape.ra"
		;
connectAttr "fog_rigging_MASTER_CTL.particleMaxCount" "fog_rigging_MASTER_dustShape.mxc"
		;
connectAttr "fog_rigging_MASTER_dustShape.incr" "fog_rigging_MASTER_dustShape.rgbPP"
		;
connectAttr "fog_rigging_MASTER_dustShape.inir" "fog_rigging_MASTER_dustShape.incandescencePP"
		;
connectAttr "fog_rigging_MASTER_dustShape.xo[0]" "fog_rigging_MASTER_dustShape.opacityPP"
		;
connectAttr "fog_rigging_MASTER_dustShape.fd" "fog_rigging_MASTER_particleKeeper.ind[0]"
		;
connectAttr "fog_rigging_MASTER_dustShape.ppfd[0]" "fog_rigging_MASTER_particleKeeper.ppda[0]"
		;
connectAttr "fog_rigging_MASTER_smokeBox.ty" "fog_rigging_MASTER_particleKeeper.ty"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide5.o" "fog_rigging_MASTER_particleKeeper.s"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "fog_rigging_MASTER_fluidShape1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "fog_rigging_MASTER_nParticlePointsSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "fog_rigging_MASTER_fluidShape1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "fog_rigging_MASTER_nParticlePointsSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":time1.o" "fog_rigging_MASTER_expression1.tim";
connectAttr "fog_rigging_MASTER_CTL.msg" "fog_rigging_MASTER_expression1.obm";
connectAttr "fog_rigging_MASTER_hsvToRgb1.o" "fog_rigging_MASTER_multiplyDivide2.i1"
		;
connectAttr "fog_rigging_MASTER_multDoubleLinear1.o" "fog_rigging_MASTER_hsvToRgb1.ir"
		;
connectAttr "fog_rigging_MASTER_ramp1.ocr" "fog_rigging_MASTER_multDoubleLinear1.i1"
		;
connectAttr "fog_rigging_MASTER_multDoubleLinear2.o" "fog_rigging_MASTER_ramp1.v"
		;
connectAttr "fog_rigging_MASTER_addDoubleLinear1.o" "fog_rigging_MASTER_multDoubleLinear2.i1"
		;
connectAttr "fog_rigging_MASTER_timeToUnit.o" "fog_rigging_MASTER_addDoubleLinear1.i1"
		;
connectAttr "fog_rigging_MASTER_jet_A_CTL.colorOffset" "fog_rigging_MASTER_addDoubleLinear1.i2"
		;
connectAttr ":time1.o" "fog_rigging_MASTER_timeToUnit.i";
connectAttr "fog_rigging_MASTER_condition3.ocr" "fog_rigging_MASTER_multiplyDivide1.i1x"
		;
connectAttr "fog_rigging_MASTER_condition3.ocr" "fog_rigging_MASTER_multiplyDivide1.i1y"
		;
connectAttr "fog_rigging_MASTER_condition3.ocr" "fog_rigging_MASTER_multiplyDivide1.i1z"
		;
connectAttr "fog_rigging_MASTER_jet_A_CTL.density" "fog_rigging_MASTER_multiplyDivide1.i2x"
		;
connectAttr "fog_rigging_MASTER_jet_A_CTL.speed" "fog_rigging_MASTER_multiplyDivide1.i2y"
		;
connectAttr "fog_rigging_MASTER_jet_A_CTL.turbulence" "fog_rigging_MASTER_multiplyDivide1.i2z"
		;
connectAttr "fog_rigging_MASTER_condition2.ocr" "fog_rigging_MASTER_condition3.ft"
		;
connectAttr "fog_rigging_MASTER_condition1.ocr" "fog_rigging_MASTER_condition3.st"
		;
connectAttr "fog_rigging_MASTER_CTL.frame" "fog_rigging_MASTER_condition2.st";
connectAttr "fog_rigging_MASTER_jet_A_CTL.start" "fog_rigging_MASTER_condition2.ft"
		;
connectAttr "fog_rigging_MASTER_CTL.frame" "fog_rigging_MASTER_condition1.st";
connectAttr "fog_rigging_MASTER_jet_A_CTL.end" "fog_rigging_MASTER_condition1.ft"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide1.ox" "fog_rigging_MASTER_multDoubleLinear3.i1"
		;
connectAttr "fog_rigging_MASTER_condition6.ocr" "fog_rigging_MASTER_multiplyDivide3.i1x"
		;
connectAttr "fog_rigging_MASTER_condition6.ocr" "fog_rigging_MASTER_multiplyDivide3.i1y"
		;
connectAttr "fog_rigging_MASTER_condition6.ocr" "fog_rigging_MASTER_multiplyDivide3.i1z"
		;
connectAttr "fog_rigging_MASTER_jet_B_CTL.density" "fog_rigging_MASTER_multiplyDivide3.i2x"
		;
connectAttr "fog_rigging_MASTER_jet_B_CTL.speed" "fog_rigging_MASTER_multiplyDivide3.i2y"
		;
connectAttr "fog_rigging_MASTER_jet_B_CTL.turbulence" "fog_rigging_MASTER_multiplyDivide3.i2z"
		;
connectAttr "fog_rigging_MASTER_condition5.ocr" "fog_rigging_MASTER_condition6.ft"
		;
connectAttr "fog_rigging_MASTER_condition4.ocr" "fog_rigging_MASTER_condition6.st"
		;
connectAttr "fog_rigging_MASTER_CTL.frame" "fog_rigging_MASTER_condition5.st";
connectAttr "fog_rigging_MASTER_jet_B_CTL.start" "fog_rigging_MASTER_condition5.ft"
		;
connectAttr "fog_rigging_MASTER_CTL.frame" "fog_rigging_MASTER_condition4.st";
connectAttr "fog_rigging_MASTER_jet_B_CTL.end" "fog_rigging_MASTER_condition4.ft"
		;
connectAttr "fog_rigging_MASTER_hsvToRgb2.o" "fog_rigging_MASTER_multiplyDivide4.i1"
		;
connectAttr "fog_rigging_MASTER_multDoubleLinear5.o" "fog_rigging_MASTER_hsvToRgb2.ir"
		;
connectAttr "fog_rigging_MASTER_ramp2.ocr" "fog_rigging_MASTER_multDoubleLinear5.i1"
		;
connectAttr "fog_rigging_MASTER_multDoubleLinear6.o" "fog_rigging_MASTER_ramp2.v"
		;
connectAttr "fog_rigging_MASTER_addDoubleLinear2.o" "fog_rigging_MASTER_multDoubleLinear6.i1"
		;
connectAttr "fog_rigging_MASTER_timeToUnit.o" "fog_rigging_MASTER_addDoubleLinear2.i1"
		;
connectAttr "fog_rigging_MASTER_jet_B_CTL.colorOffset" "fog_rigging_MASTER_addDoubleLinear2.i2"
		;
connectAttr "fog_rigging_MASTER_multiplyDivide3.ox" "fog_rigging_MASTER_multDoubleLinear7.i1"
		;
connectAttr "fog_rigging_MASTER_kill_CTL.killAmt" "fog_rigging_MASTER_multDoubleLinear4.i1"
		;
connectAttr "fog_rigging_MASTER_timeToUnit.o" "fog_rigging_MASTER_animBlendNodeAdditiveRotation1.wa"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.dh" "fog_rigging_MASTER_multDoubleLinear9.i1"
		;
connectAttr "fog_rigging_MASTER_timeToUnit.o" "fog_rigging_MASTER_multDoubleLinear8.i1"
		;
connectAttr "fog_rigging_MASTER_fluidShape1SG.msg" "fog_rigging_MASTER_materialInfo1.sg"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.ocl" "fog_rigging_MASTER_fluidShape1SG.vs"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.iog" "fog_rigging_MASTER_fluidShape1SG.dsm"
		 -na;
connectAttr "fog_rigging_MASTER_nParticlePointsSE.msg" "fog_rigging_MASTER_materialInfo2.sg"
		;
connectAttr "fog_rigging_MASTER_npPointsBlinn.msg" "fog_rigging_MASTER_materialInfo2.m"
		;
connectAttr "fog_rigging_MASTER_particleSamplerInfo1.msg" "fog_rigging_MASTER_materialInfo2.t"
		 -na;
connectAttr "fog_rigging_MASTER_npPointsBlinn.oc" "fog_rigging_MASTER_nParticlePointsSE.ss"
		;
connectAttr "fog_rigging_MASTER_npPointsVolume.oi" "fog_rigging_MASTER_nParticlePointsSE.vs"
		;
connectAttr "fog_rigging_MASTER_dustShape.iog" "fog_rigging_MASTER_nParticlePointsSE.dsm"
		 -na;
connectAttr "fog_rigging_MASTER_particleSamplerInfo1.oc" "fog_rigging_MASTER_npPointsBlinn.c"
		;
connectAttr "fog_rigging_MASTER_particleSamplerInfo1.ot" "fog_rigging_MASTER_npPointsBlinn.it"
		;
connectAttr "fog_rigging_MASTER_particleSamplerInfo1.oi" "fog_rigging_MASTER_npPointsBlinn.ic"
		;
connectAttr "fog_rigging_MASTER_particleSamplerInfo1.ot" "fog_rigging_MASTER_npPointsVolume.t"
		;
connectAttr "fog_rigging_MASTER_particleSamplerInfo1.oc" "fog_rigging_MASTER_npPointsVolume.c"
		;
connectAttr "fog_rigging_MASTER_particleSamplerInfo1.oi" "fog_rigging_MASTER_npPointsVolume.i"
		;
connectAttr "fog_rigging_MASTER_smokeBoxShape.dim" "fog_rigging_MASTER_multiplyDivide5.i1"
		;
connectAttr "fog_rigging_MASTER_fluidShape1SG.pa" ":renderPartition.st" -na;
connectAttr "fog_rigging_MASTER_nParticlePointsSE.pa" ":renderPartition.st" -na;
connectAttr "fog_rigging_MASTER_smokeBoxShape.msg" ":defaultShaderList1.s" -na;
connectAttr "fog_rigging_MASTER_npPointsBlinn.msg" ":defaultShaderList1.s" -na;
connectAttr "fog_rigging_MASTER_npPointsVolume.msg" ":defaultShaderList1.s" -na;
connectAttr "fog_rigging_MASTER_multDoubleLinear1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_hsvToRgb1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fog_rigging_MASTER_addDoubleLinear1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multDoubleLinear2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_condition1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fog_rigging_MASTER_condition2.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fog_rigging_MASTER_condition3.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fog_rigging_MASTER_multiplyDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multiplyDivide2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multDoubleLinear3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multDoubleLinear4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multDoubleLinear5.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_hsvToRgb2.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fog_rigging_MASTER_addDoubleLinear2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multDoubleLinear6.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_condition4.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fog_rigging_MASTER_condition5.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fog_rigging_MASTER_condition6.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fog_rigging_MASTER_multiplyDivide3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multiplyDivide4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multDoubleLinear7.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multDoubleLinear8.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_particleSamplerInfo3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multDoubleLinear9.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fog_rigging_MASTER_multiplyDivide5.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "fog_rigging_MASTER_ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "fog_rigging_MASTER_ramp2.msg" ":defaultTextureList1.tx" -na;
// End of fog_master_pro.ma
