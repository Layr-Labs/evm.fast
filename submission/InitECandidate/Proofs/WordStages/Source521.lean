import InitECandidate.Proofs.WordStages.Source505
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody521_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody521_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody521_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody521_0, 521, 2)) (some 475) ([]) (some (16, sourceBody521_1, 521, 3))

def sourceBody521_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody521_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_2 sourceBody521_3

def sourceBody521_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_4 sourceBody521_0

def sourceBody521_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody521_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 34, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody521_0, 521, 4)) (some 475) ([]) (some (14, sourceBody521_6, 521, 5))

def sourceBody521_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_7 sourceBody521_3

def sourceBody521_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_8 sourceBody521_0

def sourceBody521_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody521_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody521_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody521_0, 521, 6)) (some 470) ([32]) (some (32, sourceBody521_11, 521, 7))

def sourceBody521_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_12 sourceBody521_3

def sourceBody521_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_13 sourceBody521_0

def sourceBody521_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_10 sourceBody521_14

def sourceBody521_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_15

def sourceBody521_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_16

def sourceBody521_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody521_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody521_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody521_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody521_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody521_0, 521, 8)) (some 462) ([32, 8, 26, 18]) (some (32, sourceBody521_11, 521, 9))

def sourceBody521_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_22 sourceBody521_3

def sourceBody521_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_23 sourceBody521_0

def sourceBody521_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_21 sourceBody521_24

def sourceBody521_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_20 sourceBody521_25

def sourceBody521_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_19 sourceBody521_26

def sourceBody521_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_18 sourceBody521_27

def sourceBody521_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 16)

def sourceBody521_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 34)

def sourceBody521_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody521_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody521_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody521_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody521_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 8, 26, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody521_0, 521, 10)) (some 143) ([36, 2, 20, 12, 30]) (some (36, sourceBody521_34, 521, 11))

def sourceBody521_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_35 sourceBody521_3

def sourceBody521_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_36 sourceBody521_0

def sourceBody521_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_33 sourceBody521_37

def sourceBody521_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_32 sourceBody521_38

def sourceBody521_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_31 sourceBody521_39

def sourceBody521_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_30 sourceBody521_40

def sourceBody521_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_29 sourceBody521_41

def sourceBody521_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody521_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody521_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody521_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody521_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody521_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody521_0, 521, 12)) (some 476) ([2, 20, 12, 30]) (some (2, sourceBody521_47, 521, 13))

def sourceBody521_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_48 sourceBody521_3

def sourceBody521_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_49 sourceBody521_0

def sourceBody521_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_46 sourceBody521_50

def sourceBody521_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_45 sourceBody521_51

def sourceBody521_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_44 sourceBody521_52

def sourceBody521_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_43 sourceBody521_53

def sourceBody521_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_54

def sourceBody521_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_55

def sourceBody521_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody521_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody521_0, 521, 14)) (some 490) ([2]) (some (2, sourceBody521_47, 521, 15))

def sourceBody521_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_58 sourceBody521_3

def sourceBody521_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_59 sourceBody521_0

def sourceBody521_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_57 sourceBody521_60

def sourceBody521_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_61

def sourceBody521_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_62

def sourceBody521_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_56 sourceBody521_63

def sourceBody521_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody521_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody521_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_66 sourceBody521_0

def sourceBody521_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_65 sourceBody521_67

def sourceBody521_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_64 sourceBody521_68

def sourceBody521_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_42 sourceBody521_69

def sourceBody521_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_70

def sourceBody521_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_71

def sourceBody521_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_72

def sourceBody521_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_73

def sourceBody521_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_74

def sourceBody521_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_75

def sourceBody521_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_76

def sourceBody521_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_77

def sourceBody521_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_28 sourceBody521_78

def sourceBody521_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_79

def sourceBody521_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_80

def sourceBody521_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_17 sourceBody521_81

def sourceBody521_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_9 sourceBody521_82

def sourceBody521_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_83

def sourceBody521_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_84

def sourceBody521_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_85

def sourceBody521_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_86

def sourceBody521_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_87

def sourceBody521_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_88

def sourceBody521_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_89

def sourceBody521_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_90

def sourceBody521_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_5 sourceBody521_91

def sourceBody521_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_92

def sourceBody521_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_93

def sourceBody521_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_94

def sourceBody521_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_95

def sourceBody521_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_96

def sourceBody521_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_97

def sourceBody521_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_98

def sourceBody521_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody521_0 sourceBody521_99

def source521 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (521, 1, sourceBody521_100)
end InitECandidate.Proofs.WordStages
