import InitECandidate.Proofs.WordStages.Source487
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody503_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody503_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody503_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 32, 6, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody503_0, 503, 2)) (some 475) ([]) (some (18, sourceBody503_1, 503, 3))

def sourceBody503_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody503_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_2 sourceBody503_3

def sourceBody503_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_4 sourceBody503_0

def sourceBody503_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody503_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 38, 4, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody503_0, 503, 4)) (some 475) ([]) (some (16, sourceBody503_6, 503, 5))

def sourceBody503_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_7 sourceBody503_3

def sourceBody503_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_8 sourceBody503_0

def sourceBody503_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody503_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody503_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody503_0, 503, 6)) (some 470) ([36]) (some (36, sourceBody503_11, 503, 7))

def sourceBody503_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_12 sourceBody503_3

def sourceBody503_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_13 sourceBody503_0

def sourceBody503_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_10 sourceBody503_14

def sourceBody503_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_15

def sourceBody503_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_16

def sourceBody503_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody503_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody503_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody503_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody503_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody503_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody503_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody503_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody503_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody503_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 36, 10, 30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody503_0, 503, 8)) (some 134) ([20, 40, 2, 22, 14, 34, 8, 28]) (some (20, sourceBody503_26, 503, 9))

def sourceBody503_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_27 sourceBody503_3

def sourceBody503_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_28 sourceBody503_0

def sourceBody503_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_25 sourceBody503_29

def sourceBody503_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_24 sourceBody503_30

def sourceBody503_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_23 sourceBody503_31

def sourceBody503_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_22 sourceBody503_32

def sourceBody503_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_21 sourceBody503_33

def sourceBody503_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_20 sourceBody503_34

def sourceBody503_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_19 sourceBody503_35

def sourceBody503_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_18 sourceBody503_36

def sourceBody503_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody503_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 36)

def sourceBody503_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody503_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody503_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody503_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody503_0, 503, 10)) (some 476) ([40, 2, 22, 14]) (some (40, sourceBody503_42, 503, 11))

def sourceBody503_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_43 sourceBody503_3

def sourceBody503_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_44 sourceBody503_0

def sourceBody503_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_41 sourceBody503_45

def sourceBody503_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_40 sourceBody503_46

def sourceBody503_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_39 sourceBody503_47

def sourceBody503_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_38 sourceBody503_48

def sourceBody503_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_49

def sourceBody503_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_50

def sourceBody503_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody503_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody503_0, 503, 12)) (some 490) ([40]) (some (40, sourceBody503_42, 503, 13))

def sourceBody503_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_53 sourceBody503_3

def sourceBody503_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_54 sourceBody503_0

def sourceBody503_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_52 sourceBody503_55

def sourceBody503_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_56

def sourceBody503_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_57

def sourceBody503_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_51 sourceBody503_58

def sourceBody503_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody503_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody503_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_61 sourceBody503_0

def sourceBody503_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_60 sourceBody503_62

def sourceBody503_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_59 sourceBody503_63

def sourceBody503_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_37 sourceBody503_64

def sourceBody503_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_65

def sourceBody503_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_66

def sourceBody503_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_67

def sourceBody503_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_68

def sourceBody503_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_69

def sourceBody503_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_70

def sourceBody503_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_71

def sourceBody503_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_72

def sourceBody503_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_17 sourceBody503_73

def sourceBody503_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_9 sourceBody503_74

def sourceBody503_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_75

def sourceBody503_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_76

def sourceBody503_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_77

def sourceBody503_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_78

def sourceBody503_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_79

def sourceBody503_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_80

def sourceBody503_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_81

def sourceBody503_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_82

def sourceBody503_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_5 sourceBody503_83

def sourceBody503_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_84

def sourceBody503_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_85

def sourceBody503_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_86

def sourceBody503_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_87

def sourceBody503_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_88

def sourceBody503_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_89

def sourceBody503_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_90

def sourceBody503_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody503_0 sourceBody503_91

def source503 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (503, 1, sourceBody503_92)
end InitECandidate.Proofs.WordStages
