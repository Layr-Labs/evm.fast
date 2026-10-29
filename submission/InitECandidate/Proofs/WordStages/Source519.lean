import InitECandidate.Proofs.WordStages.Source503
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody519_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody519_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody519_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody519_0, 519, 2)) (some 475) ([]) (some (16, sourceBody519_1, 519, 3))

def sourceBody519_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody519_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_2 sourceBody519_3

def sourceBody519_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_4 sourceBody519_0

def sourceBody519_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody519_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 34, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody519_0, 519, 4)) (some 475) ([]) (some (14, sourceBody519_6, 519, 5))

def sourceBody519_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_7 sourceBody519_3

def sourceBody519_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_8 sourceBody519_0

def sourceBody519_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody519_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody519_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody519_0, 519, 6)) (some 470) ([32]) (some (32, sourceBody519_11, 519, 7))

def sourceBody519_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_12 sourceBody519_3

def sourceBody519_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_13 sourceBody519_0

def sourceBody519_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_10 sourceBody519_14

def sourceBody519_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_15

def sourceBody519_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_16

def sourceBody519_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody519_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody519_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody519_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody519_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody519_0, 519, 8)) (some 462) ([32, 8, 26, 18]) (some (32, sourceBody519_11, 519, 9))

def sourceBody519_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_22 sourceBody519_3

def sourceBody519_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_23 sourceBody519_0

def sourceBody519_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_21 sourceBody519_24

def sourceBody519_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_20 sourceBody519_25

def sourceBody519_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_19 sourceBody519_26

def sourceBody519_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_18 sourceBody519_27

def sourceBody519_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 16)

def sourceBody519_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 34)

def sourceBody519_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody519_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody519_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody519_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody519_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 8, 26, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody519_0, 519, 10)) (some 141) ([36, 2, 20, 12, 30]) (some (36, sourceBody519_34, 519, 11))

def sourceBody519_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_35 sourceBody519_3

def sourceBody519_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_36 sourceBody519_0

def sourceBody519_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_33 sourceBody519_37

def sourceBody519_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_32 sourceBody519_38

def sourceBody519_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_31 sourceBody519_39

def sourceBody519_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_30 sourceBody519_40

def sourceBody519_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_29 sourceBody519_41

def sourceBody519_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody519_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody519_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody519_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody519_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody519_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody519_0, 519, 12)) (some 476) ([2, 20, 12, 30]) (some (2, sourceBody519_47, 519, 13))

def sourceBody519_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_48 sourceBody519_3

def sourceBody519_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_49 sourceBody519_0

def sourceBody519_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_46 sourceBody519_50

def sourceBody519_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_45 sourceBody519_51

def sourceBody519_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_44 sourceBody519_52

def sourceBody519_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_43 sourceBody519_53

def sourceBody519_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_54

def sourceBody519_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_55

def sourceBody519_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody519_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody519_0, 519, 14)) (some 490) ([2]) (some (2, sourceBody519_47, 519, 15))

def sourceBody519_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_58 sourceBody519_3

def sourceBody519_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_59 sourceBody519_0

def sourceBody519_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_57 sourceBody519_60

def sourceBody519_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_61

def sourceBody519_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_62

def sourceBody519_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_56 sourceBody519_63

def sourceBody519_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody519_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody519_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_66 sourceBody519_0

def sourceBody519_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_65 sourceBody519_67

def sourceBody519_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_64 sourceBody519_68

def sourceBody519_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_42 sourceBody519_69

def sourceBody519_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_70

def sourceBody519_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_71

def sourceBody519_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_72

def sourceBody519_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_73

def sourceBody519_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_74

def sourceBody519_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_75

def sourceBody519_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_76

def sourceBody519_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_77

def sourceBody519_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_28 sourceBody519_78

def sourceBody519_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_79

def sourceBody519_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_80

def sourceBody519_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_17 sourceBody519_81

def sourceBody519_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_9 sourceBody519_82

def sourceBody519_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_83

def sourceBody519_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_84

def sourceBody519_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_85

def sourceBody519_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_86

def sourceBody519_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_87

def sourceBody519_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_88

def sourceBody519_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_89

def sourceBody519_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_90

def sourceBody519_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_5 sourceBody519_91

def sourceBody519_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_92

def sourceBody519_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_93

def sourceBody519_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_94

def sourceBody519_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_95

def sourceBody519_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_96

def sourceBody519_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_97

def sourceBody519_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_98

def sourceBody519_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody519_0 sourceBody519_99

def source519 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (519, 1, sourceBody519_100)
end InitECandidate.Proofs.WordStages
