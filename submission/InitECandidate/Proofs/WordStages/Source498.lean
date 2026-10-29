import InitECandidate.Proofs.WordStages.Source482
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody498_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody498_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody498_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 32, 6, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody498_0, 498, 2)) (some 475) ([]) (some (18, sourceBody498_1, 498, 3))

def sourceBody498_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody498_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_2 sourceBody498_3

def sourceBody498_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_4 sourceBody498_0

def sourceBody498_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody498_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 38, 4, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody498_0, 498, 4)) (some 475) ([]) (some (16, sourceBody498_6, 498, 5))

def sourceBody498_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_7 sourceBody498_3

def sourceBody498_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_8 sourceBody498_0

def sourceBody498_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody498_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody498_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody498_0, 498, 6)) (some 470) ([36]) (some (36, sourceBody498_11, 498, 7))

def sourceBody498_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_12 sourceBody498_3

def sourceBody498_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_13 sourceBody498_0

def sourceBody498_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_10 sourceBody498_14

def sourceBody498_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_15

def sourceBody498_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_16

def sourceBody498_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody498_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody498_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody498_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody498_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody498_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody498_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody498_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody498_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody498_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 36, 10, 30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody498_0, 498, 8)) (some 120) ([20, 40, 2, 22, 14, 34, 8, 28]) (some (20, sourceBody498_26, 498, 9))

def sourceBody498_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_27 sourceBody498_3

def sourceBody498_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_28 sourceBody498_0

def sourceBody498_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_25 sourceBody498_29

def sourceBody498_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_24 sourceBody498_30

def sourceBody498_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_23 sourceBody498_31

def sourceBody498_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_22 sourceBody498_32

def sourceBody498_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_21 sourceBody498_33

def sourceBody498_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_20 sourceBody498_34

def sourceBody498_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_19 sourceBody498_35

def sourceBody498_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_18 sourceBody498_36

def sourceBody498_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody498_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 36)

def sourceBody498_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody498_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody498_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody498_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody498_0, 498, 10)) (some 476) ([40, 2, 22, 14]) (some (40, sourceBody498_42, 498, 11))

def sourceBody498_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_43 sourceBody498_3

def sourceBody498_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_44 sourceBody498_0

def sourceBody498_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_41 sourceBody498_45

def sourceBody498_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_40 sourceBody498_46

def sourceBody498_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_39 sourceBody498_47

def sourceBody498_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_38 sourceBody498_48

def sourceBody498_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_49

def sourceBody498_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_50

def sourceBody498_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody498_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody498_0, 498, 12)) (some 490) ([40]) (some (40, sourceBody498_42, 498, 13))

def sourceBody498_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_53 sourceBody498_3

def sourceBody498_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_54 sourceBody498_0

def sourceBody498_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_52 sourceBody498_55

def sourceBody498_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_56

def sourceBody498_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_57

def sourceBody498_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_51 sourceBody498_58

def sourceBody498_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody498_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody498_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_61 sourceBody498_0

def sourceBody498_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_60 sourceBody498_62

def sourceBody498_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_59 sourceBody498_63

def sourceBody498_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_37 sourceBody498_64

def sourceBody498_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_65

def sourceBody498_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_66

def sourceBody498_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_67

def sourceBody498_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_68

def sourceBody498_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_69

def sourceBody498_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_70

def sourceBody498_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_71

def sourceBody498_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_72

def sourceBody498_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_17 sourceBody498_73

def sourceBody498_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_9 sourceBody498_74

def sourceBody498_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_75

def sourceBody498_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_76

def sourceBody498_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_77

def sourceBody498_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_78

def sourceBody498_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_79

def sourceBody498_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_80

def sourceBody498_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_81

def sourceBody498_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_82

def sourceBody498_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_5 sourceBody498_83

def sourceBody498_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_84

def sourceBody498_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_85

def sourceBody498_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_86

def sourceBody498_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_87

def sourceBody498_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_88

def sourceBody498_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_89

def sourceBody498_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_90

def sourceBody498_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody498_0 sourceBody498_91

def source498 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (498, 1, sourceBody498_92)
end InitECandidate.Proofs.WordStages
