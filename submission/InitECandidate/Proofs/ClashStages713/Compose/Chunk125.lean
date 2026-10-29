import InitECandidate.Proofs.ClashStages713.Conditional.Chunk125
import InitECandidate.Proofs.ClashStages713.Compose.Chunk124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree12000_agree : tree12000 = literal12000 :=
  tree12000_agree_conditional tree11998_agree tree11999_agree
theorem node12000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12000 live12000 coloured12000 = result12000 :=
  node12000_eq_conditional node11998_eq node11999_eq
theorem tree12001_agree : tree12001 = literal12001 :=
  tree12001_agree_conditional tree11995_agree tree12000_agree
theorem node12001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12001 live12001 coloured12001 = result12001 :=
  node12001_eq_conditional node11995_eq node12000_eq
theorem tree12002_agree : tree12002 = literal12002 :=
  tree12002_agree_conditional tree11992_agree tree12001_agree
theorem node12002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12002 live12002 coloured12002 = result12002 :=
  node12002_eq_conditional node11992_eq node12001_eq
theorem tree12003_agree : tree12003 = literal12003 :=
  tree12003_agree_conditional
theorem node12003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12003 live12003 coloured12003 = result12003 :=
  node12003_eq_conditional
theorem tree12004_agree : tree12004 = literal12004 :=
  tree12004_agree_conditional tree12002_agree tree12003_agree
theorem node12004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12004 live12004 coloured12004 = result12004 :=
  node12004_eq_conditional node12002_eq node12003_eq
theorem tree12005_agree : tree12005 = literal12005 :=
  tree12005_agree_conditional
theorem node12005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12005 live12005 coloured12005 = result12005 :=
  node12005_eq_conditional
theorem tree12006_agree : tree12006 = literal12006 :=
  tree12006_agree_conditional tree12004_agree tree12005_agree
theorem node12006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12006 live12006 coloured12006 = result12006 :=
  node12006_eq_conditional node12004_eq node12005_eq
theorem tree12007_agree : tree12007 = literal12007 :=
  tree12007_agree_conditional
theorem node12007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12007 live12007 coloured12007 = result12007 :=
  node12007_eq_conditional
theorem tree12008_agree : tree12008 = literal12008 :=
  tree12008_agree_conditional tree12006_agree tree12007_agree
theorem node12008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12008 live12008 coloured12008 = result12008 :=
  node12008_eq_conditional node12006_eq node12007_eq
theorem tree12009_agree : tree12009 = literal12009 :=
  tree12009_agree_conditional
theorem node12009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12009 live12009 coloured12009 = result12009 :=
  node12009_eq_conditional
theorem tree12010_agree : tree12010 = literal12010 :=
  tree12010_agree_conditional tree12008_agree tree12009_agree
theorem node12010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12010 live12010 coloured12010 = result12010 :=
  node12010_eq_conditional node12008_eq node12009_eq
theorem tree12011_agree : tree12011 = literal12011 :=
  tree12011_agree_conditional
theorem node12011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12011 live12011 coloured12011 = result12011 :=
  node12011_eq_conditional
theorem tree12012_agree : tree12012 = literal12012 :=
  tree12012_agree_conditional
theorem node12012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12012 live12012 coloured12012 = result12012 :=
  node12012_eq_conditional
theorem tree12013_agree : tree12013 = literal12013 :=
  tree12013_agree_conditional tree12011_agree tree12012_agree
theorem node12013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12013 live12013 coloured12013 = result12013 :=
  node12013_eq_conditional node12011_eq node12012_eq
theorem tree12014_agree : tree12014 = literal12014 :=
  tree12014_agree_conditional
theorem node12014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12014 live12014 coloured12014 = result12014 :=
  node12014_eq_conditional
theorem tree12015_agree : tree12015 = literal12015 :=
  tree12015_agree_conditional tree12013_agree tree12014_agree
theorem node12015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12015 live12015 coloured12015 = result12015 :=
  node12015_eq_conditional node12013_eq node12014_eq
theorem tree12016_agree : tree12016 = literal12016 :=
  tree12016_agree_conditional
theorem node12016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12016 live12016 coloured12016 = result12016 :=
  node12016_eq_conditional
theorem tree12017_agree : tree12017 = literal12017 :=
  tree12017_agree_conditional tree12015_agree tree12016_agree
theorem node12017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12017 live12017 coloured12017 = result12017 :=
  node12017_eq_conditional node12015_eq node12016_eq
theorem tree12018_agree : tree12018 = literal12018 :=
  tree12018_agree_conditional
theorem node12018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12018 live12018 coloured12018 = result12018 :=
  node12018_eq_conditional
theorem tree12019_agree : tree12019 = literal12019 :=
  tree12019_agree_conditional tree12017_agree tree12018_agree
theorem node12019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12019 live12019 coloured12019 = result12019 :=
  node12019_eq_conditional node12017_eq node12018_eq
theorem tree12020_agree : tree12020 = literal12020 :=
  tree12020_agree_conditional
theorem node12020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12020 live12020 coloured12020 = result12020 :=
  node12020_eq_conditional
theorem tree12021_agree : tree12021 = literal12021 :=
  tree12021_agree_conditional tree12019_agree tree12020_agree
theorem node12021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12021 live12021 coloured12021 = result12021 :=
  node12021_eq_conditional node12019_eq node12020_eq
theorem tree12022_agree : tree12022 = literal12022 :=
  tree12022_agree_conditional tree12010_agree tree12021_agree
theorem node12022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12022 live12022 coloured12022 = result12022 :=
  node12022_eq_conditional node12010_eq node12021_eq
theorem tree12023_agree : tree12023 = literal12023 :=
  tree12023_agree_conditional
theorem node12023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12023 live12023 coloured12023 = result12023 :=
  node12023_eq_conditional
theorem tree12024_agree : tree12024 = literal12024 :=
  tree12024_agree_conditional tree12022_agree tree12023_agree
theorem node12024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12024 live12024 coloured12024 = result12024 :=
  node12024_eq_conditional node12022_eq node12023_eq
theorem tree12025_agree : tree12025 = literal12025 :=
  tree12025_agree_conditional
theorem node12025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12025 live12025 coloured12025 = result12025 :=
  node12025_eq_conditional
theorem tree12026_agree : tree12026 = literal12026 :=
  tree12026_agree_conditional tree12024_agree tree12025_agree
theorem node12026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12026 live12026 coloured12026 = result12026 :=
  node12026_eq_conditional node12024_eq node12025_eq
theorem tree12027_agree : tree12027 = literal12027 :=
  tree12027_agree_conditional
theorem node12027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12027 live12027 coloured12027 = result12027 :=
  node12027_eq_conditional
theorem tree12028_agree : tree12028 = literal12028 :=
  tree12028_agree_conditional tree12026_agree tree12027_agree
theorem node12028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12028 live12028 coloured12028 = result12028 :=
  node12028_eq_conditional node12026_eq node12027_eq
theorem tree12029_agree : tree12029 = literal12029 :=
  tree12029_agree_conditional
theorem node12029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12029 live12029 coloured12029 = result12029 :=
  node12029_eq_conditional
theorem tree12030_agree : tree12030 = literal12030 :=
  tree12030_agree_conditional tree12028_agree tree12029_agree
theorem node12030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12030 live12030 coloured12030 = result12030 :=
  node12030_eq_conditional node12028_eq node12029_eq
theorem tree12031_agree : tree12031 = literal12031 :=
  tree12031_agree_conditional
theorem node12031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12031 live12031 coloured12031 = result12031 :=
  node12031_eq_conditional
theorem tree12032_agree : tree12032 = literal12032 :=
  tree12032_agree_conditional tree12030_agree tree12031_agree
theorem node12032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12032 live12032 coloured12032 = result12032 :=
  node12032_eq_conditional node12030_eq node12031_eq
theorem tree12033_agree : tree12033 = literal12033 :=
  tree12033_agree_conditional
theorem node12033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12033 live12033 coloured12033 = result12033 :=
  node12033_eq_conditional
theorem tree12034_agree : tree12034 = literal12034 :=
  tree12034_agree_conditional tree12032_agree tree12033_agree
theorem node12034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12034 live12034 coloured12034 = result12034 :=
  node12034_eq_conditional node12032_eq node12033_eq
end InitECandidate.Proofs.ClashStages713
