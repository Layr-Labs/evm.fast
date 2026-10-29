import InitECandidate.Proofs.WordStages.Source845
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody861_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody861_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody861_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody861_0, 861, 2)) (some 387) ([]) (some (16, sourceBody861_1, 861, 3))

def sourceBody861_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody861_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_2 sourceBody861_3

def sourceBody861_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_4 sourceBody861_0

def sourceBody861_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_5

def sourceBody861_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_6

def sourceBody861_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody861_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody861_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 16]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody861_0, 861, 4)) (some 565) ([6]) (some (6, sourceBody861_9, 861, 5))

def sourceBody861_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_10 sourceBody861_3

def sourceBody861_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_11 sourceBody861_0

def sourceBody861_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_8 sourceBody861_12

def sourceBody861_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody861_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody861_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody861_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody861_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 10) sourceBody861_16 sourceBody861_17

def sourceBody861_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_18 sourceBody861_3

def sourceBody861_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody861_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 70#64)

def sourceBody861_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def sourceBody861_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_22 sourceBody861_0

def sourceBody861_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_23 sourceBody861_0

def sourceBody861_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_21 sourceBody861_24

def sourceBody861_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_25

def sourceBody861_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody861_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_27 sourceBody861_9

def sourceBody861_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_26 sourceBody861_28

def sourceBody861_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody861_29 sourceBody861_0

def sourceBody861_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_30 sourceBody861_3

def sourceBody861_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_31 sourceBody861_0

def sourceBody861_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_20 sourceBody861_32

def sourceBody861_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_19 sourceBody861_33

def sourceBody861_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_15 sourceBody861_34

def sourceBody861_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_14 sourceBody861_35

def sourceBody861_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody861_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody861_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody861_0, 861, 6)) (some 68) ([14]) (some (14, sourceBody861_38, 861, 7))

def sourceBody861_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_39 sourceBody861_3

def sourceBody861_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_40 sourceBody861_0

def sourceBody861_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_37 sourceBody861_41

def sourceBody861_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody861_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody861_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody861_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody861_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody861_0, 861, 8)) (some 860) ([10, 18, 4]) (some (10, sourceBody861_46, 861, 9))

def sourceBody861_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_47 sourceBody861_3

def sourceBody861_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_48 sourceBody861_0

def sourceBody861_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_45 sourceBody861_49

def sourceBody861_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_44 sourceBody861_50

def sourceBody861_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_43 sourceBody861_51

def sourceBody861_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody861_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody861_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody861_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 4) sourceBody861_54 sourceBody861_55

def sourceBody861_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_56 sourceBody861_3

def sourceBody861_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody861_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 71#64)

def sourceBody861_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody861_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_60 sourceBody861_0

def sourceBody861_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_61 sourceBody861_0

def sourceBody861_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_59 sourceBody861_62

def sourceBody861_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_63

def sourceBody861_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody861_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_65 sourceBody861_46

def sourceBody861_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_64 sourceBody861_66

def sourceBody861_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody861_67 sourceBody861_0

def sourceBody861_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_68 sourceBody861_3

def sourceBody861_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_69 sourceBody861_0

def sourceBody861_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_58 sourceBody861_70

def sourceBody861_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_57 sourceBody861_71

def sourceBody861_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_45 sourceBody861_72

def sourceBody861_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_53 sourceBody861_73

def sourceBody861_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody861_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody861_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_76 sourceBody861_0

def sourceBody861_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_75 sourceBody861_77

def sourceBody861_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_74 sourceBody861_78

def sourceBody861_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_52 sourceBody861_79

def sourceBody861_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_80

def sourceBody861_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_81

def sourceBody861_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_42 sourceBody861_82

def sourceBody861_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_83

def sourceBody861_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_84

def sourceBody861_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_36 sourceBody861_85

def sourceBody861_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_13 sourceBody861_86

def sourceBody861_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_87

def sourceBody861_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_88

def sourceBody861_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_89

def sourceBody861_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_0 sourceBody861_90

def sourceBody861_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody861_7 sourceBody861_91

def source861 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (861, 2, sourceBody861_92)
end InitECandidate.Proofs.WordStages
