import InitECandidate.Proofs.WordStages.Source485
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody501_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody501_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody501_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 32, 6, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody501_0, 501, 2)) (some 475) ([]) (some (18, sourceBody501_1, 501, 3))

def sourceBody501_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody501_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_2 sourceBody501_3

def sourceBody501_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_4 sourceBody501_0

def sourceBody501_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody501_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 38, 4, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody501_0, 501, 4)) (some 475) ([]) (some (16, sourceBody501_6, 501, 5))

def sourceBody501_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_7 sourceBody501_3

def sourceBody501_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_8 sourceBody501_0

def sourceBody501_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody501_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody501_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody501_0, 501, 6)) (some 470) ([36]) (some (36, sourceBody501_11, 501, 7))

def sourceBody501_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_12 sourceBody501_3

def sourceBody501_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_13 sourceBody501_0

def sourceBody501_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_10 sourceBody501_14

def sourceBody501_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_15

def sourceBody501_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_16

def sourceBody501_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody501_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody501_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody501_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody501_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody501_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody501_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody501_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody501_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody501_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 36, 10, 30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody501_0, 501, 8)) (some 133) ([20, 40, 2, 22, 14, 34, 8, 28]) (some (20, sourceBody501_26, 501, 9))

def sourceBody501_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_27 sourceBody501_3

def sourceBody501_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_28 sourceBody501_0

def sourceBody501_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_25 sourceBody501_29

def sourceBody501_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_24 sourceBody501_30

def sourceBody501_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_23 sourceBody501_31

def sourceBody501_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_22 sourceBody501_32

def sourceBody501_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_21 sourceBody501_33

def sourceBody501_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_20 sourceBody501_34

def sourceBody501_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_19 sourceBody501_35

def sourceBody501_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_18 sourceBody501_36

def sourceBody501_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody501_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 36)

def sourceBody501_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody501_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody501_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody501_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody501_0, 501, 10)) (some 476) ([40, 2, 22, 14]) (some (40, sourceBody501_42, 501, 11))

def sourceBody501_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_43 sourceBody501_3

def sourceBody501_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_44 sourceBody501_0

def sourceBody501_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_41 sourceBody501_45

def sourceBody501_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_40 sourceBody501_46

def sourceBody501_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_39 sourceBody501_47

def sourceBody501_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_38 sourceBody501_48

def sourceBody501_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_49

def sourceBody501_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_50

def sourceBody501_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody501_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody501_0, 501, 12)) (some 490) ([40]) (some (40, sourceBody501_42, 501, 13))

def sourceBody501_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_53 sourceBody501_3

def sourceBody501_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_54 sourceBody501_0

def sourceBody501_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_52 sourceBody501_55

def sourceBody501_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_56

def sourceBody501_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_57

def sourceBody501_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_51 sourceBody501_58

def sourceBody501_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody501_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody501_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_61 sourceBody501_0

def sourceBody501_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_60 sourceBody501_62

def sourceBody501_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_59 sourceBody501_63

def sourceBody501_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_37 sourceBody501_64

def sourceBody501_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_65

def sourceBody501_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_66

def sourceBody501_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_67

def sourceBody501_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_68

def sourceBody501_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_69

def sourceBody501_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_70

def sourceBody501_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_71

def sourceBody501_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_72

def sourceBody501_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_17 sourceBody501_73

def sourceBody501_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_9 sourceBody501_74

def sourceBody501_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_75

def sourceBody501_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_76

def sourceBody501_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_77

def sourceBody501_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_78

def sourceBody501_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_79

def sourceBody501_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_80

def sourceBody501_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_81

def sourceBody501_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_82

def sourceBody501_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_5 sourceBody501_83

def sourceBody501_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_84

def sourceBody501_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_85

def sourceBody501_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_86

def sourceBody501_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_87

def sourceBody501_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_88

def sourceBody501_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_89

def sourceBody501_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_90

def sourceBody501_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody501_0 sourceBody501_91

def source501 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (501, 1, sourceBody501_92)
end InitECandidate.Proofs.WordStages
