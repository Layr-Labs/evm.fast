import InitECandidate.Proofs.WordStages.Source481
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody497_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody497_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody497_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 32, 6, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody497_0, 497, 2)) (some 475) ([]) (some (18, sourceBody497_1, 497, 3))

def sourceBody497_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody497_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_2 sourceBody497_3

def sourceBody497_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_4 sourceBody497_0

def sourceBody497_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody497_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 38, 4, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody497_0, 497, 4)) (some 475) ([]) (some (16, sourceBody497_6, 497, 5))

def sourceBody497_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_7 sourceBody497_3

def sourceBody497_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_8 sourceBody497_0

def sourceBody497_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody497_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody497_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody497_0, 497, 6)) (some 470) ([36]) (some (36, sourceBody497_11, 497, 7))

def sourceBody497_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_12 sourceBody497_3

def sourceBody497_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_13 sourceBody497_0

def sourceBody497_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_10 sourceBody497_14

def sourceBody497_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_15

def sourceBody497_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_16

def sourceBody497_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody497_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody497_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody497_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody497_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody497_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody497_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody497_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody497_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody497_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 36, 10, 30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody497_0, 497, 8)) (some 116) ([20, 40, 2, 22, 14, 34, 8, 28]) (some (20, sourceBody497_26, 497, 9))

def sourceBody497_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_27 sourceBody497_3

def sourceBody497_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_28 sourceBody497_0

def sourceBody497_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_25 sourceBody497_29

def sourceBody497_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_24 sourceBody497_30

def sourceBody497_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_23 sourceBody497_31

def sourceBody497_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_22 sourceBody497_32

def sourceBody497_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_21 sourceBody497_33

def sourceBody497_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_20 sourceBody497_34

def sourceBody497_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_19 sourceBody497_35

def sourceBody497_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_18 sourceBody497_36

def sourceBody497_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody497_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 36)

def sourceBody497_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody497_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody497_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody497_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody497_0, 497, 10)) (some 476) ([40, 2, 22, 14]) (some (40, sourceBody497_42, 497, 11))

def sourceBody497_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_43 sourceBody497_3

def sourceBody497_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_44 sourceBody497_0

def sourceBody497_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_41 sourceBody497_45

def sourceBody497_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_40 sourceBody497_46

def sourceBody497_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_39 sourceBody497_47

def sourceBody497_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_38 sourceBody497_48

def sourceBody497_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_49

def sourceBody497_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_50

def sourceBody497_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody497_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody497_0, 497, 12)) (some 490) ([40]) (some (40, sourceBody497_42, 497, 13))

def sourceBody497_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_53 sourceBody497_3

def sourceBody497_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_54 sourceBody497_0

def sourceBody497_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_52 sourceBody497_55

def sourceBody497_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_56

def sourceBody497_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_57

def sourceBody497_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_51 sourceBody497_58

def sourceBody497_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody497_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody497_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_61 sourceBody497_0

def sourceBody497_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_60 sourceBody497_62

def sourceBody497_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_59 sourceBody497_63

def sourceBody497_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_37 sourceBody497_64

def sourceBody497_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_65

def sourceBody497_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_66

def sourceBody497_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_67

def sourceBody497_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_68

def sourceBody497_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_69

def sourceBody497_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_70

def sourceBody497_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_71

def sourceBody497_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_72

def sourceBody497_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_17 sourceBody497_73

def sourceBody497_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_9 sourceBody497_74

def sourceBody497_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_75

def sourceBody497_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_76

def sourceBody497_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_77

def sourceBody497_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_78

def sourceBody497_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_79

def sourceBody497_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_80

def sourceBody497_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_81

def sourceBody497_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_82

def sourceBody497_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_5 sourceBody497_83

def sourceBody497_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_84

def sourceBody497_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_85

def sourceBody497_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_86

def sourceBody497_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_87

def sourceBody497_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_88

def sourceBody497_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_89

def sourceBody497_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_90

def sourceBody497_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody497_0 sourceBody497_91

def source497 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (497, 1, sourceBody497_92)
end InitECandidate.Proofs.WordStages
