import InitECandidate.Proofs.WordStages.Source550
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody566_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody566_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody566_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 16, 4, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody566_0, 566, 2)) (some 475) ([]) (some (10, sourceBody566_1, 566, 3))

def sourceBody566_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody566_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_2 sourceBody566_3

def sourceBody566_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_4 sourceBody566_0

def sourceBody566_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody566_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody566_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody566_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody566_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody566_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody566_0, 566, 4)) (some 466) ([20, 2, 12, 8]) (some (20, sourceBody566_10, 566, 5))

def sourceBody566_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_11 sourceBody566_3

def sourceBody566_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_12 sourceBody566_0

def sourceBody566_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_9 sourceBody566_13

def sourceBody566_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_8 sourceBody566_14

def sourceBody566_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_7 sourceBody566_15

def sourceBody566_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_6 sourceBody566_16

def sourceBody566_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 10)

def sourceBody566_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody566_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody566_0, 566, 6)) (some 495) ([2]) (some (2, sourceBody566_19, 566, 7))

def sourceBody566_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_20 sourceBody566_3

def sourceBody566_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_21 sourceBody566_0

def sourceBody566_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_18 sourceBody566_22

def sourceBody566_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 100#64])

def sourceBody566_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody566_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody566_0, 566, 8)) (some 470) ([12]) (some (12, sourceBody566_25, 566, 9))

def sourceBody566_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_26 sourceBody566_3

def sourceBody566_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_27 sourceBody566_0

def sourceBody566_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_24 sourceBody566_28

def sourceBody566_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_29

def sourceBody566_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_30

def sourceBody566_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody566_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody566_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody566_0, 566, 10)) (some 496) ([12, 8]) (some (12, sourceBody566_25, 566, 11))

def sourceBody566_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_34 sourceBody566_3

def sourceBody566_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_35 sourceBody566_0

def sourceBody566_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_33 sourceBody566_36

def sourceBody566_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_32 sourceBody566_37

def sourceBody566_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_38

def sourceBody566_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_39

def sourceBody566_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_31 sourceBody566_40

def sourceBody566_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody566_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody566_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody566_0, 566, 12)) (some 565) ([8]) (some (8, sourceBody566_43, 566, 13))

def sourceBody566_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_44 sourceBody566_3

def sourceBody566_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_45 sourceBody566_0

def sourceBody566_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_42 sourceBody566_46

def sourceBody566_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody566_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody566_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody566_0, 566, 14)) (some 477) ([18]) (some (18, sourceBody566_49, 566, 15))

def sourceBody566_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_50 sourceBody566_3

def sourceBody566_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_51 sourceBody566_0

def sourceBody566_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_48 sourceBody566_52

def sourceBody566_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_53

def sourceBody566_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_54

def sourceBody566_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody566_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody566_0, 566, 16)) (some 490) ([18]) (some (18, sourceBody566_49, 566, 17))

def sourceBody566_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_57 sourceBody566_3

def sourceBody566_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_58 sourceBody566_0

def sourceBody566_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_56 sourceBody566_59

def sourceBody566_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_60

def sourceBody566_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_61

def sourceBody566_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_55 sourceBody566_62

def sourceBody566_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody566_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody566_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_65 sourceBody566_0

def sourceBody566_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_64 sourceBody566_66

def sourceBody566_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_63 sourceBody566_67

def sourceBody566_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_47 sourceBody566_68

def sourceBody566_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_69

def sourceBody566_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_70

def sourceBody566_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_71

def sourceBody566_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_72

def sourceBody566_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_41 sourceBody566_73

def sourceBody566_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_23 sourceBody566_74

def sourceBody566_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_75

def sourceBody566_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_76

def sourceBody566_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_17 sourceBody566_77

def sourceBody566_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_78

def sourceBody566_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_79

def sourceBody566_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_5 sourceBody566_80

def sourceBody566_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_81

def sourceBody566_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_82

def sourceBody566_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_83

def sourceBody566_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_84

def sourceBody566_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_85

def sourceBody566_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_86

def sourceBody566_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_87

def sourceBody566_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody566_0 sourceBody566_88

def source566 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (566, 1, sourceBody566_89)
end InitECandidate.Proofs.WordStages
