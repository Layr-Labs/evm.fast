import InitECandidate.Proofs.WordStages.Source504
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody520_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody520_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody520_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody520_0, 520, 2)) (some 475) ([]) (some (16, sourceBody520_1, 520, 3))

def sourceBody520_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody520_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_2 sourceBody520_3

def sourceBody520_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_4 sourceBody520_0

def sourceBody520_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody520_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 34, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody520_0, 520, 4)) (some 475) ([]) (some (14, sourceBody520_6, 520, 5))

def sourceBody520_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_7 sourceBody520_3

def sourceBody520_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_8 sourceBody520_0

def sourceBody520_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody520_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody520_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody520_0, 520, 6)) (some 470) ([32]) (some (32, sourceBody520_11, 520, 7))

def sourceBody520_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_12 sourceBody520_3

def sourceBody520_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_13 sourceBody520_0

def sourceBody520_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_10 sourceBody520_14

def sourceBody520_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_15

def sourceBody520_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_16

def sourceBody520_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody520_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody520_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody520_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody520_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody520_0, 520, 8)) (some 462) ([32, 8, 26, 18]) (some (32, sourceBody520_11, 520, 9))

def sourceBody520_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_22 sourceBody520_3

def sourceBody520_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_23 sourceBody520_0

def sourceBody520_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_21 sourceBody520_24

def sourceBody520_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_20 sourceBody520_25

def sourceBody520_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_19 sourceBody520_26

def sourceBody520_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_18 sourceBody520_27

def sourceBody520_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 16)

def sourceBody520_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 34)

def sourceBody520_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody520_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody520_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody520_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody520_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 8, 26, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody520_0, 520, 10)) (some 142) ([36, 2, 20, 12, 30]) (some (36, sourceBody520_34, 520, 11))

def sourceBody520_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_35 sourceBody520_3

def sourceBody520_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_36 sourceBody520_0

def sourceBody520_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_33 sourceBody520_37

def sourceBody520_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_32 sourceBody520_38

def sourceBody520_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_31 sourceBody520_39

def sourceBody520_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_30 sourceBody520_40

def sourceBody520_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_29 sourceBody520_41

def sourceBody520_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody520_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody520_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody520_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody520_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody520_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody520_0, 520, 12)) (some 476) ([2, 20, 12, 30]) (some (2, sourceBody520_47, 520, 13))

def sourceBody520_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_48 sourceBody520_3

def sourceBody520_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_49 sourceBody520_0

def sourceBody520_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_46 sourceBody520_50

def sourceBody520_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_45 sourceBody520_51

def sourceBody520_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_44 sourceBody520_52

def sourceBody520_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_43 sourceBody520_53

def sourceBody520_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_54

def sourceBody520_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_55

def sourceBody520_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody520_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody520_0, 520, 14)) (some 490) ([2]) (some (2, sourceBody520_47, 520, 15))

def sourceBody520_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_58 sourceBody520_3

def sourceBody520_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_59 sourceBody520_0

def sourceBody520_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_57 sourceBody520_60

def sourceBody520_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_61

def sourceBody520_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_62

def sourceBody520_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_56 sourceBody520_63

def sourceBody520_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody520_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody520_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_66 sourceBody520_0

def sourceBody520_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_65 sourceBody520_67

def sourceBody520_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_64 sourceBody520_68

def sourceBody520_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_42 sourceBody520_69

def sourceBody520_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_70

def sourceBody520_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_71

def sourceBody520_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_72

def sourceBody520_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_73

def sourceBody520_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_74

def sourceBody520_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_75

def sourceBody520_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_76

def sourceBody520_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_77

def sourceBody520_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_28 sourceBody520_78

def sourceBody520_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_79

def sourceBody520_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_80

def sourceBody520_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_17 sourceBody520_81

def sourceBody520_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_9 sourceBody520_82

def sourceBody520_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_83

def sourceBody520_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_84

def sourceBody520_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_85

def sourceBody520_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_86

def sourceBody520_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_87

def sourceBody520_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_88

def sourceBody520_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_89

def sourceBody520_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_90

def sourceBody520_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_5 sourceBody520_91

def sourceBody520_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_92

def sourceBody520_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_93

def sourceBody520_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_94

def sourceBody520_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_95

def sourceBody520_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_96

def sourceBody520_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_97

def sourceBody520_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_98

def sourceBody520_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody520_0 sourceBody520_99

def source520 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (520, 1, sourceBody520_100)
end InitECandidate.Proofs.WordStages
