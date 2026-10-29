import InitECandidate.Proofs.WordStages.Source483
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody499_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody499_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody499_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 32, 6, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody499_0, 499, 2)) (some 475) ([]) (some (18, sourceBody499_1, 499, 3))

def sourceBody499_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody499_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_2 sourceBody499_3

def sourceBody499_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_4 sourceBody499_0

def sourceBody499_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody499_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 38, 4, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody499_0, 499, 4)) (some 475) ([]) (some (16, sourceBody499_6, 499, 5))

def sourceBody499_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_7 sourceBody499_3

def sourceBody499_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_8 sourceBody499_0

def sourceBody499_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody499_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody499_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody499_0, 499, 6)) (some 470) ([36]) (some (36, sourceBody499_11, 499, 7))

def sourceBody499_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_12 sourceBody499_3

def sourceBody499_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_13 sourceBody499_0

def sourceBody499_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_10 sourceBody499_14

def sourceBody499_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_15

def sourceBody499_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_16

def sourceBody499_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody499_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody499_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody499_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody499_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody499_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody499_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody499_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody499_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody499_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 36, 10, 30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody499_0, 499, 8)) (some 117) ([20, 40, 2, 22, 14, 34, 8, 28]) (some (20, sourceBody499_26, 499, 9))

def sourceBody499_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_27 sourceBody499_3

def sourceBody499_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_28 sourceBody499_0

def sourceBody499_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_25 sourceBody499_29

def sourceBody499_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_24 sourceBody499_30

def sourceBody499_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_23 sourceBody499_31

def sourceBody499_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_22 sourceBody499_32

def sourceBody499_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_21 sourceBody499_33

def sourceBody499_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_20 sourceBody499_34

def sourceBody499_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_19 sourceBody499_35

def sourceBody499_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_18 sourceBody499_36

def sourceBody499_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody499_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 36)

def sourceBody499_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody499_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody499_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody499_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody499_0, 499, 10)) (some 476) ([40, 2, 22, 14]) (some (40, sourceBody499_42, 499, 11))

def sourceBody499_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_43 sourceBody499_3

def sourceBody499_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_44 sourceBody499_0

def sourceBody499_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_41 sourceBody499_45

def sourceBody499_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_40 sourceBody499_46

def sourceBody499_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_39 sourceBody499_47

def sourceBody499_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_38 sourceBody499_48

def sourceBody499_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_49

def sourceBody499_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_50

def sourceBody499_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody499_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody499_0, 499, 12)) (some 490) ([40]) (some (40, sourceBody499_42, 499, 13))

def sourceBody499_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_53 sourceBody499_3

def sourceBody499_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_54 sourceBody499_0

def sourceBody499_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_52 sourceBody499_55

def sourceBody499_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_56

def sourceBody499_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_57

def sourceBody499_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_51 sourceBody499_58

def sourceBody499_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody499_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody499_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_61 sourceBody499_0

def sourceBody499_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_60 sourceBody499_62

def sourceBody499_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_59 sourceBody499_63

def sourceBody499_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_37 sourceBody499_64

def sourceBody499_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_65

def sourceBody499_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_66

def sourceBody499_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_67

def sourceBody499_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_68

def sourceBody499_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_69

def sourceBody499_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_70

def sourceBody499_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_71

def sourceBody499_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_72

def sourceBody499_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_17 sourceBody499_73

def sourceBody499_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_9 sourceBody499_74

def sourceBody499_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_75

def sourceBody499_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_76

def sourceBody499_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_77

def sourceBody499_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_78

def sourceBody499_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_79

def sourceBody499_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_80

def sourceBody499_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_81

def sourceBody499_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_82

def sourceBody499_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_5 sourceBody499_83

def sourceBody499_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_84

def sourceBody499_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_85

def sourceBody499_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_86

def sourceBody499_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_87

def sourceBody499_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_88

def sourceBody499_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_89

def sourceBody499_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_90

def sourceBody499_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody499_0 sourceBody499_91

def source499 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (499, 1, sourceBody499_92)
end InitECandidate.Proofs.WordStages
