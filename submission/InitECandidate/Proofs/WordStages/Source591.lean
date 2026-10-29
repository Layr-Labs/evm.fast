import InitECandidate.Proofs.WordStages.Source575
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody591_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody591_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody591_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody591_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 18]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody591_0, 591, 2)) (some 565) ([6]) (some (6, sourceBody591_2, 591, 3))

def sourceBody591_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody591_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_3 sourceBody591_4

def sourceBody591_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_5 sourceBody591_0

def sourceBody591_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_1 sourceBody591_6

def sourceBody591_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody591_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody591_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody591_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody591_0, 591, 4)) (some 468) ([16, 12]) (some (16, sourceBody591_10, 591, 5))

def sourceBody591_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_11 sourceBody591_4

def sourceBody591_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_12 sourceBody591_0

def sourceBody591_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_9 sourceBody591_13

def sourceBody591_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_8 sourceBody591_14

def sourceBody591_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody591_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody591_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody591_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody591_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 20) sourceBody591_18 sourceBody591_19

def sourceBody591_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_20 sourceBody591_4

def sourceBody591_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody591_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody591_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody591_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 12, 20]

def sourceBody591_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_25 sourceBody591_0

def sourceBody591_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_17 sourceBody591_26

def sourceBody591_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_24 sourceBody591_27

def sourceBody591_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_23 sourceBody591_28

def sourceBody591_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody591_29 sourceBody591_0

def sourceBody591_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_30 sourceBody591_4

def sourceBody591_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_31 sourceBody591_0

def sourceBody591_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_22 sourceBody591_32

def sourceBody591_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_21 sourceBody591_33

def sourceBody591_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_17 sourceBody591_34

def sourceBody591_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_16 sourceBody591_35

def sourceBody591_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody591_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody591_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody591_0, 591, 6)) (some 68) ([12]) (some (12, sourceBody591_38, 591, 7))

def sourceBody591_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_39 sourceBody591_4

def sourceBody591_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_40 sourceBody591_0

def sourceBody591_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_37 sourceBody591_41

def sourceBody591_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody591_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody591_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody591_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody591_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody591_0, 591, 8)) (some 77) ([20, 4, 14]) (some (20, sourceBody591_46, 591, 9))

def sourceBody591_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_47 sourceBody591_4

def sourceBody591_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_48 sourceBody591_0

def sourceBody591_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_45 sourceBody591_49

def sourceBody591_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_44 sourceBody591_50

def sourceBody591_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_43 sourceBody591_51

def sourceBody591_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_52

def sourceBody591_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_53

def sourceBody591_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody591_0, 591, 10)) (some 493) ([20]) (some (20, sourceBody591_46, 591, 11))

def sourceBody591_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_55 sourceBody591_4

def sourceBody591_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_56 sourceBody591_0

def sourceBody591_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_43 sourceBody591_57

def sourceBody591_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody591_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody591_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody591_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 14) sourceBody591_60 sourceBody591_61

def sourceBody591_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_62 sourceBody591_4

def sourceBody591_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody591_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody591_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 16)

def sourceBody591_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 100#64)

def sourceBody591_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 4, 14]

def sourceBody591_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_68 sourceBody591_0

def sourceBody591_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_67 sourceBody591_69

def sourceBody591_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_66 sourceBody591_70

def sourceBody591_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_65 sourceBody591_71

def sourceBody591_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody591_72 sourceBody591_0

def sourceBody591_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_73 sourceBody591_4

def sourceBody591_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_74 sourceBody591_0

def sourceBody591_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_64 sourceBody591_75

def sourceBody591_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_63 sourceBody591_76

def sourceBody591_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_59 sourceBody591_77

def sourceBody591_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_22 sourceBody591_78

def sourceBody591_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 3000#64)

def sourceBody591_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_80 sourceBody591_69

def sourceBody591_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_66 sourceBody591_81

def sourceBody591_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_65 sourceBody591_82

def sourceBody591_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_79 sourceBody591_83

def sourceBody591_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_58 sourceBody591_84

def sourceBody591_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_85

def sourceBody591_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_86

def sourceBody591_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_54 sourceBody591_87

def sourceBody591_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_42 sourceBody591_88

def sourceBody591_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_89

def sourceBody591_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_90

def sourceBody591_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_36 sourceBody591_91

def sourceBody591_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_15 sourceBody591_92

def sourceBody591_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_93

def sourceBody591_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_94

def sourceBody591_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_7 sourceBody591_95

def sourceBody591_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_96

def sourceBody591_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_97

def sourceBody591_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_98

def sourceBody591_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody591_0 sourceBody591_99

def source591 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (591, 2, sourceBody591_100)
end InitECandidate.Proofs.WordStages
