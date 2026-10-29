import InitECandidate.Proofs.ClashStages875.Conditional.Chunk000
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages875
theorem tree0_agree : tree0 = literal0 :=
  tree0_agree_conditional
theorem node0_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree0 live0 coloured0 = result0 :=
  node0_eq_conditional
theorem tree1_agree : tree1 = literal1 :=
  tree1_agree_conditional
theorem node1_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1 live1 coloured1 = result1 :=
  node1_eq_conditional
theorem tree2_agree : tree2 = literal2 :=
  tree2_agree_conditional tree0_agree tree1_agree
theorem node2_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2 live2 coloured2 = result2 :=
  node2_eq_conditional node0_eq node1_eq
theorem tree3_agree : tree3 = literal3 :=
  tree3_agree_conditional
theorem node3_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3 live3 coloured3 = result3 :=
  node3_eq_conditional
theorem tree4_agree : tree4 = literal4 :=
  tree4_agree_conditional tree2_agree tree3_agree
theorem node4_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4 live4 coloured4 = result4 :=
  node4_eq_conditional node2_eq node3_eq
theorem tree5_agree : tree5 = literal5 :=
  tree5_agree_conditional
theorem node5_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5 live5 coloured5 = result5 :=
  node5_eq_conditional
theorem tree6_agree : tree6 = literal6 :=
  tree6_agree_conditional tree4_agree tree5_agree
theorem node6_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6 live6 coloured6 = result6 :=
  node6_eq_conditional node4_eq node5_eq
theorem tree7_agree : tree7 = literal7 :=
  tree7_agree_conditional
theorem node7_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7 live7 coloured7 = result7 :=
  node7_eq_conditional
theorem tree8_agree : tree8 = literal8 :=
  tree8_agree_conditional
theorem node8_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8 live8 coloured8 = result8 :=
  node8_eq_conditional
theorem tree9_agree : tree9 = literal9 :=
  tree9_agree_conditional tree7_agree tree8_agree
theorem node9_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9 live9 coloured9 = result9 :=
  node9_eq_conditional node7_eq node8_eq
theorem tree10_agree : tree10 = literal10 :=
  tree10_agree_conditional
theorem node10_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10 live10 coloured10 = result10 :=
  node10_eq_conditional
theorem tree11_agree : tree11 = literal11 :=
  tree11_agree_conditional
theorem node11_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11 live11 coloured11 = result11 :=
  node11_eq_conditional
theorem tree12_agree : tree12 = literal12 :=
  tree12_agree_conditional tree10_agree tree11_agree
theorem node12_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12 live12 coloured12 = result12 :=
  node12_eq_conditional node10_eq node11_eq
theorem tree13_agree : tree13 = literal13 :=
  tree13_agree_conditional
theorem node13_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree13 live13 coloured13 = result13 :=
  node13_eq_conditional
theorem tree14_agree : tree14 = literal14 :=
  tree14_agree_conditional
theorem node14_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree14 live14 coloured14 = result14 :=
  node14_eq_conditional
theorem tree15_agree : tree15 = literal15 :=
  tree15_agree_conditional tree13_agree tree14_agree
theorem node15_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree15 live15 coloured15 = result15 :=
  node15_eq_conditional node13_eq node14_eq
theorem tree16_agree : tree16 = literal16 :=
  tree16_agree_conditional
theorem node16_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree16 live16 coloured16 = result16 :=
  node16_eq_conditional
theorem tree17_agree : tree17 = literal17 :=
  tree17_agree_conditional tree15_agree tree16_agree
theorem node17_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree17 live17 coloured17 = result17 :=
  node17_eq_conditional node15_eq node16_eq
theorem tree18_agree : tree18 = literal18 :=
  tree18_agree_conditional tree12_agree tree17_agree
theorem node18_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree18 live18 coloured18 = result18 :=
  node18_eq_conditional node12_eq node17_eq
theorem tree19_agree : tree19 = literal19 :=
  tree19_agree_conditional tree9_agree tree18_agree
theorem node19_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree19 live19 coloured19 = result19 :=
  node19_eq_conditional node9_eq node18_eq
theorem tree20_agree : tree20 = literal20 :=
  tree20_agree_conditional
theorem node20_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree20 live20 coloured20 = result20 :=
  node20_eq_conditional
theorem tree21_agree : tree21 = literal21 :=
  tree21_agree_conditional tree19_agree tree20_agree
theorem node21_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree21 live21 coloured21 = result21 :=
  node21_eq_conditional node19_eq node20_eq
theorem tree22_agree : tree22 = literal22 :=
  tree22_agree_conditional
theorem node22_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree22 live22 coloured22 = result22 :=
  node22_eq_conditional
theorem tree23_agree : tree23 = literal23 :=
  tree23_agree_conditional tree21_agree tree22_agree
theorem node23_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree23 live23 coloured23 = result23 :=
  node23_eq_conditional node21_eq node22_eq
theorem tree24_agree : tree24 = literal24 :=
  tree24_agree_conditional
theorem node24_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree24 live24 coloured24 = result24 :=
  node24_eq_conditional
theorem tree25_agree : tree25 = literal25 :=
  tree25_agree_conditional tree23_agree tree24_agree
theorem node25_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree25 live25 coloured25 = result25 :=
  node25_eq_conditional node23_eq node24_eq
theorem tree26_agree : tree26 = literal26 :=
  tree26_agree_conditional
theorem node26_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree26 live26 coloured26 = result26 :=
  node26_eq_conditional
theorem tree27_agree : tree27 = literal27 :=
  tree27_agree_conditional tree25_agree tree26_agree
theorem node27_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree27 live27 coloured27 = result27 :=
  node27_eq_conditional node25_eq node26_eq
theorem tree28_agree : tree28 = literal28 :=
  tree28_agree_conditional
theorem node28_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree28 live28 coloured28 = result28 :=
  node28_eq_conditional
theorem tree29_agree : tree29 = literal29 :=
  tree29_agree_conditional
theorem node29_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree29 live29 coloured29 = result29 :=
  node29_eq_conditional
theorem tree30_agree : tree30 = literal30 :=
  tree30_agree_conditional tree28_agree tree29_agree
theorem node30_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree30 live30 coloured30 = result30 :=
  node30_eq_conditional node28_eq node29_eq
theorem tree31_agree : tree31 = literal31 :=
  tree31_agree_conditional
theorem node31_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree31 live31 coloured31 = result31 :=
  node31_eq_conditional
theorem tree32_agree : tree32 = literal32 :=
  tree32_agree_conditional
theorem node32_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree32 live32 coloured32 = result32 :=
  node32_eq_conditional
theorem tree33_agree : tree33 = literal33 :=
  tree33_agree_conditional tree31_agree tree32_agree
theorem node33_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree33 live33 coloured33 = result33 :=
  node33_eq_conditional node31_eq node32_eq
theorem tree34_agree : tree34 = literal34 :=
  tree34_agree_conditional
theorem node34_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree34 live34 coloured34 = result34 :=
  node34_eq_conditional
theorem tree35_agree : tree35 = literal35 :=
  tree35_agree_conditional tree33_agree tree34_agree
theorem node35_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree35 live35 coloured35 = result35 :=
  node35_eq_conditional node33_eq node34_eq
theorem tree36_agree : tree36 = literal36 :=
  tree36_agree_conditional tree30_agree tree35_agree
theorem node36_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree36 live36 coloured36 = result36 :=
  node36_eq_conditional node30_eq node35_eq
theorem tree37_agree : tree37 = literal37 :=
  tree37_agree_conditional tree27_agree tree36_agree
theorem node37_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree37 live37 coloured37 = result37 :=
  node37_eq_conditional node27_eq node36_eq
theorem tree38_agree : tree38 = literal38 :=
  tree38_agree_conditional
theorem node38_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree38 live38 coloured38 = result38 :=
  node38_eq_conditional
theorem tree39_agree : tree39 = literal39 :=
  tree39_agree_conditional tree37_agree tree38_agree
theorem node39_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree39 live39 coloured39 = result39 :=
  node39_eq_conditional node37_eq node38_eq
theorem tree40_agree : tree40 = literal40 :=
  tree40_agree_conditional
theorem node40_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree40 live40 coloured40 = result40 :=
  node40_eq_conditional
theorem tree41_agree : tree41 = literal41 :=
  tree41_agree_conditional tree39_agree tree40_agree
theorem node41_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree41 live41 coloured41 = result41 :=
  node41_eq_conditional node39_eq node40_eq
theorem tree42_agree : tree42 = literal42 :=
  tree42_agree_conditional
theorem node42_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree42 live42 coloured42 = result42 :=
  node42_eq_conditional
theorem tree43_agree : tree43 = literal43 :=
  tree43_agree_conditional
theorem node43_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree43 live43 coloured43 = result43 :=
  node43_eq_conditional
theorem tree44_agree : tree44 = literal44 :=
  tree44_agree_conditional tree42_agree tree43_agree
theorem node44_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree44 live44 coloured44 = result44 :=
  node44_eq_conditional node42_eq node43_eq
theorem tree45_agree : tree45 = literal45 :=
  tree45_agree_conditional tree41_agree tree44_agree
theorem node45_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree45 live45 coloured45 = result45 :=
  node45_eq_conditional node41_eq node44_eq
theorem tree46_agree : tree46 = literal46 :=
  tree46_agree_conditional
theorem node46_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree46 live46 coloured46 = result46 :=
  node46_eq_conditional
theorem tree47_agree : tree47 = literal47 :=
  tree47_agree_conditional tree45_agree tree46_agree
theorem node47_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree47 live47 coloured47 = result47 :=
  node47_eq_conditional node45_eq node46_eq
theorem tree48_agree : tree48 = literal48 :=
  tree48_agree_conditional tree6_agree tree47_agree
theorem node48_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree48 live48 coloured48 = result48 :=
  node48_eq_conditional node6_eq node47_eq
theorem tree49_agree : tree49 = literal49 :=
  tree49_agree_conditional
theorem node49_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree49 live49 coloured49 = result49 :=
  node49_eq_conditional
theorem tree50_agree : tree50 = literal50 :=
  tree50_agree_conditional tree48_agree tree49_agree
theorem node50_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree50 live50 coloured50 = result50 :=
  node50_eq_conditional node48_eq node49_eq
theorem tree51_agree : tree51 = literal51 :=
  tree51_agree_conditional
theorem node51_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree51 live51 coloured51 = result51 :=
  node51_eq_conditional
theorem tree52_agree : tree52 = literal52 :=
  tree52_agree_conditional tree50_agree tree51_agree
theorem node52_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree52 live52 coloured52 = result52 :=
  node52_eq_conditional node50_eq node51_eq
theorem tree53_agree : tree53 = literal53 :=
  tree53_agree_conditional
theorem node53_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree53 live53 coloured53 = result53 :=
  node53_eq_conditional
theorem tree54_agree : tree54 = literal54 :=
  tree54_agree_conditional tree52_agree tree53_agree
theorem node54_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree54 live54 coloured54 = result54 :=
  node54_eq_conditional node52_eq node53_eq
theorem tree55_agree : tree55 = literal55 :=
  tree55_agree_conditional
theorem node55_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree55 live55 coloured55 = result55 :=
  node55_eq_conditional
theorem tree56_agree : tree56 = literal56 :=
  tree56_agree_conditional tree54_agree tree55_agree
theorem node56_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree56 live56 coloured56 = result56 :=
  node56_eq_conditional node54_eq node55_eq
theorem tree57_agree : tree57 = literal57 :=
  tree57_agree_conditional
theorem node57_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree57 live57 coloured57 = result57 :=
  node57_eq_conditional
theorem tree58_agree : tree58 = literal58 :=
  tree58_agree_conditional tree56_agree tree57_agree
theorem node58_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree58 live58 coloured58 = result58 :=
  node58_eq_conditional node56_eq node57_eq
theorem tree59_agree : tree59 = literal59 :=
  tree59_agree_conditional
theorem node59_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree59 live59 coloured59 = result59 :=
  node59_eq_conditional
theorem tree60_agree : tree60 = literal60 :=
  tree60_agree_conditional
theorem node60_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree60 live60 coloured60 = result60 :=
  node60_eq_conditional
theorem tree61_agree : tree61 = literal61 :=
  tree61_agree_conditional tree59_agree tree60_agree
theorem node61_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree61 live61 coloured61 = result61 :=
  node61_eq_conditional node59_eq node60_eq
theorem tree62_agree : tree62 = literal62 :=
  tree62_agree_conditional
theorem node62_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree62 live62 coloured62 = result62 :=
  node62_eq_conditional
theorem tree63_agree : tree63 = literal63 :=
  tree63_agree_conditional
theorem node63_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree63 live63 coloured63 = result63 :=
  node63_eq_conditional
theorem tree64_agree : tree64 = literal64 :=
  tree64_agree_conditional tree62_agree tree63_agree
theorem node64_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree64 live64 coloured64 = result64 :=
  node64_eq_conditional node62_eq node63_eq
theorem tree65_agree : tree65 = literal65 :=
  tree65_agree_conditional
theorem node65_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree65 live65 coloured65 = result65 :=
  node65_eq_conditional
theorem tree66_agree : tree66 = literal66 :=
  tree66_agree_conditional tree64_agree tree65_agree
theorem node66_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree66 live66 coloured66 = result66 :=
  node66_eq_conditional node64_eq node65_eq
theorem tree67_agree : tree67 = literal67 :=
  tree67_agree_conditional tree61_agree tree66_agree
theorem node67_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree67 live67 coloured67 = result67 :=
  node67_eq_conditional node61_eq node66_eq
theorem tree68_agree : tree68 = literal68 :=
  tree68_agree_conditional tree58_agree tree67_agree
theorem node68_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree68 live68 coloured68 = result68 :=
  node68_eq_conditional node58_eq node67_eq
theorem tree69_agree : tree69 = literal69 :=
  tree69_agree_conditional
theorem node69_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree69 live69 coloured69 = result69 :=
  node69_eq_conditional
theorem tree70_agree : tree70 = literal70 :=
  tree70_agree_conditional tree68_agree tree69_agree
theorem node70_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree70 live70 coloured70 = result70 :=
  node70_eq_conditional node68_eq node69_eq
theorem tree71_agree : tree71 = literal71 :=
  tree71_agree_conditional
theorem node71_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree71 live71 coloured71 = result71 :=
  node71_eq_conditional
theorem tree72_agree : tree72 = literal72 :=
  tree72_agree_conditional tree70_agree tree71_agree
theorem node72_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree72 live72 coloured72 = result72 :=
  node72_eq_conditional node70_eq node71_eq
theorem tree73_agree : tree73 = literal73 :=
  tree73_agree_conditional
theorem node73_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree73 live73 coloured73 = result73 :=
  node73_eq_conditional
theorem tree74_agree : tree74 = literal74 :=
  tree74_agree_conditional
theorem node74_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree74 live74 coloured74 = result74 :=
  node74_eq_conditional
theorem tree75_agree : tree75 = literal75 :=
  tree75_agree_conditional tree73_agree tree74_agree
theorem node75_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree75 live75 coloured75 = result75 :=
  node75_eq_conditional node73_eq node74_eq
theorem tree76_agree : tree76 = literal76 :=
  tree76_agree_conditional
theorem node76_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree76 live76 coloured76 = result76 :=
  node76_eq_conditional
theorem tree77_agree : tree77 = literal77 :=
  tree77_agree_conditional
theorem node77_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree77 live77 coloured77 = result77 :=
  node77_eq_conditional
theorem tree78_agree : tree78 = literal78 :=
  tree78_agree_conditional
theorem node78_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree78 live78 coloured78 = result78 :=
  node78_eq_conditional
theorem tree79_agree : tree79 = literal79 :=
  tree79_agree_conditional tree77_agree tree78_agree
theorem node79_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree79 live79 coloured79 = result79 :=
  node79_eq_conditional node77_eq node78_eq
theorem tree80_agree : tree80 = literal80 :=
  tree80_agree_conditional
theorem node80_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree80 live80 coloured80 = result80 :=
  node80_eq_conditional
theorem tree81_agree : tree81 = literal81 :=
  tree81_agree_conditional
theorem node81_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree81 live81 coloured81 = result81 :=
  node81_eq_conditional
theorem tree82_agree : tree82 = literal82 :=
  tree82_agree_conditional tree80_agree tree81_agree
theorem node82_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree82 live82 coloured82 = result82 :=
  node82_eq_conditional node80_eq node81_eq
theorem tree83_agree : tree83 = literal83 :=
  tree83_agree_conditional
theorem node83_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree83 live83 coloured83 = result83 :=
  node83_eq_conditional
theorem tree84_agree : tree84 = literal84 :=
  tree84_agree_conditional tree82_agree tree83_agree
theorem node84_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree84 live84 coloured84 = result84 :=
  node84_eq_conditional node82_eq node83_eq
theorem tree85_agree : tree85 = literal85 :=
  tree85_agree_conditional
theorem node85_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree85 live85 coloured85 = result85 :=
  node85_eq_conditional
theorem tree86_agree : tree86 = literal86 :=
  tree86_agree_conditional tree84_agree tree85_agree
theorem node86_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree86 live86 coloured86 = result86 :=
  node86_eq_conditional node84_eq node85_eq
theorem tree87_agree : tree87 = literal87 :=
  tree87_agree_conditional
theorem node87_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree87 live87 coloured87 = result87 :=
  node87_eq_conditional
theorem tree88_agree : tree88 = literal88 :=
  tree88_agree_conditional tree86_agree tree87_agree
theorem node88_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree88 live88 coloured88 = result88 :=
  node88_eq_conditional node86_eq node87_eq
theorem tree89_agree : tree89 = literal89 :=
  tree89_agree_conditional
theorem node89_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree89 live89 coloured89 = result89 :=
  node89_eq_conditional
theorem tree90_agree : tree90 = literal90 :=
  tree90_agree_conditional
theorem node90_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree90 live90 coloured90 = result90 :=
  node90_eq_conditional
theorem tree91_agree : tree91 = literal91 :=
  tree91_agree_conditional tree89_agree tree90_agree
theorem node91_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree91 live91 coloured91 = result91 :=
  node91_eq_conditional node89_eq node90_eq
theorem tree92_agree : tree92 = literal92 :=
  tree92_agree_conditional
theorem node92_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree92 live92 coloured92 = result92 :=
  node92_eq_conditional
theorem tree93_agree : tree93 = literal93 :=
  tree93_agree_conditional
theorem node93_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree93 live93 coloured93 = result93 :=
  node93_eq_conditional
theorem tree94_agree : tree94 = literal94 :=
  tree94_agree_conditional tree92_agree tree93_agree
theorem node94_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree94 live94 coloured94 = result94 :=
  node94_eq_conditional node92_eq node93_eq
theorem tree95_agree : tree95 = literal95 :=
  tree95_agree_conditional
theorem node95_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree95 live95 coloured95 = result95 :=
  node95_eq_conditional
end InitECandidate.Proofs.ClashStages875
