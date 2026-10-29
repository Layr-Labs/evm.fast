import InitECandidate.Proofs.WordStages.Source538
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody554_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody554_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody554_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 20, 4, 16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody554_0, 554, 2)) (some 475) ([]) (some (12, sourceBody554_1, 554, 3))

def sourceBody554_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody554_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_2 sourceBody554_3

def sourceBody554_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_4 sourceBody554_0

def sourceBody554_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody554_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 20)

def sourceBody554_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody554_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody554_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody554_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody554_0, 554, 4)) (some 466) ([24, 2, 14, 10]) (some (24, sourceBody554_10, 554, 5))

def sourceBody554_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_11 sourceBody554_3

def sourceBody554_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_12 sourceBody554_0

def sourceBody554_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_9 sourceBody554_13

def sourceBody554_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_8 sourceBody554_14

def sourceBody554_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_7 sourceBody554_15

def sourceBody554_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_6 sourceBody554_16

def sourceBody554_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 12)

def sourceBody554_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody554_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody554_0, 554, 6)) (some 495) ([2]) (some (2, sourceBody554_19, 554, 7))

def sourceBody554_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_20 sourceBody554_3

def sourceBody554_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_21 sourceBody554_0

def sourceBody554_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_18 sourceBody554_22

def sourceBody554_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody554_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody554_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody554_0, 554, 8)) (some 470) ([14]) (some (14, sourceBody554_25, 554, 9))

def sourceBody554_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_26 sourceBody554_3

def sourceBody554_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_27 sourceBody554_0

def sourceBody554_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_24 sourceBody554_28

def sourceBody554_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_29

def sourceBody554_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_30

def sourceBody554_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody554_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24)

def sourceBody554_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody554_0, 554, 10)) (some 496) ([14, 10]) (some (14, sourceBody554_25, 554, 11))

def sourceBody554_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_34 sourceBody554_3

def sourceBody554_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_35 sourceBody554_0

def sourceBody554_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_33 sourceBody554_36

def sourceBody554_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_32 sourceBody554_37

def sourceBody554_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_38

def sourceBody554_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_39

def sourceBody554_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_31 sourceBody554_40

def sourceBody554_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody554_0, 554, 12)) (some 407) ([14]) (some (14, sourceBody554_25, 554, 13))

def sourceBody554_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_42 sourceBody554_3

def sourceBody554_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_43 sourceBody554_0

def sourceBody554_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_32 sourceBody554_44

def sourceBody554_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody554_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody554_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody554_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody554_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody554_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody554_0, 554, 14)) (some 476) ([10, 22, 6, 18]) (some (10, sourceBody554_50, 554, 15))

def sourceBody554_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_51 sourceBody554_3

def sourceBody554_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_52 sourceBody554_0

def sourceBody554_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_49 sourceBody554_53

def sourceBody554_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_48 sourceBody554_54

def sourceBody554_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_47 sourceBody554_55

def sourceBody554_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_46 sourceBody554_56

def sourceBody554_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_57

def sourceBody554_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_58

def sourceBody554_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody554_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody554_0, 554, 16)) (some 490) ([10]) (some (10, sourceBody554_50, 554, 17))

def sourceBody554_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_61 sourceBody554_3

def sourceBody554_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_62 sourceBody554_0

def sourceBody554_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_60 sourceBody554_63

def sourceBody554_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_64

def sourceBody554_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_65

def sourceBody554_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_59 sourceBody554_66

def sourceBody554_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody554_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody554_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_69 sourceBody554_0

def sourceBody554_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_68 sourceBody554_70

def sourceBody554_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_67 sourceBody554_71

def sourceBody554_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_45 sourceBody554_72

def sourceBody554_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_73

def sourceBody554_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_74

def sourceBody554_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_41 sourceBody554_75

def sourceBody554_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_23 sourceBody554_76

def sourceBody554_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_77

def sourceBody554_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_78

def sourceBody554_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_17 sourceBody554_79

def sourceBody554_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_80

def sourceBody554_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_81

def sourceBody554_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_5 sourceBody554_82

def sourceBody554_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_83

def sourceBody554_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_84

def sourceBody554_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_85

def sourceBody554_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_86

def sourceBody554_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_87

def sourceBody554_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_88

def sourceBody554_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_89

def sourceBody554_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody554_0 sourceBody554_90

def source554 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (554, 1, sourceBody554_91)
end InitECandidate.Proofs.WordStages
