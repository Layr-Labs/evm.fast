import InitECandidate.Proofs.WordStages.Source153
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody169_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody169_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody169_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody169_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody169_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody169_0, 169, 2)) (some 167) ([8, 16]) (some (8, sourceBody169_3, 169, 3))

def sourceBody169_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody169_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_4 sourceBody169_5

def sourceBody169_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_6 sourceBody169_0

def sourceBody169_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_2 sourceBody169_7

def sourceBody169_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_1 sourceBody169_8

def sourceBody169_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody169_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody169_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody169_0, 169, 4)) (some 68) ([16]) (some (16, sourceBody169_11, 169, 5))

def sourceBody169_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_12 sourceBody169_5

def sourceBody169_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_13 sourceBody169_0

def sourceBody169_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_10 sourceBody169_14

def sourceBody169_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody169_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody169_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody169_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody169_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody169_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody169_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 14) sourceBody169_20 sourceBody169_21

def sourceBody169_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_22 sourceBody169_5

def sourceBody169_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody169_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12])

def sourceBody169_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody169_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody169_0, 169, 6)) (some 168) ([6]) (some (6, sourceBody169_26, 169, 7))

def sourceBody169_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_27 sourceBody169_5

def sourceBody169_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_28 sourceBody169_0

def sourceBody169_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_25 sourceBody169_29

def sourceBody169_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.const 4#64)])

def sourceBody169_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12])

def sourceBody169_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody169_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 10

def sourceBody169_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_34 sourceBody169_0

def sourceBody169_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_33 sourceBody169_35

def sourceBody169_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_36 sourceBody169_0

def sourceBody169_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_32 sourceBody169_37

def sourceBody169_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_38

def sourceBody169_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_31 sourceBody169_39

def sourceBody169_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_40

def sourceBody169_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody169_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody169_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_43 sourceBody169_37

def sourceBody169_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_44

def sourceBody169_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_42 sourceBody169_45

def sourceBody169_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_46

def sourceBody169_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_41 sourceBody169_47

def sourceBody169_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 20])

def sourceBody169_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody169_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_50 sourceBody169_0

def sourceBody169_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_51 sourceBody169_0

def sourceBody169_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_49 sourceBody169_52

def sourceBody169_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_53

def sourceBody169_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_48 sourceBody169_54

def sourceBody169_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody169_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody169_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_57 sourceBody169_0

def sourceBody169_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_58 sourceBody169_0

def sourceBody169_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_56 sourceBody169_59

def sourceBody169_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_60

def sourceBody169_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_55 sourceBody169_61

def sourceBody169_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_30 sourceBody169_62

def sourceBody169_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_63

def sourceBody169_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_64

def sourceBody169_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody169_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_65 sourceBody169_66

def sourceBody169_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody169_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody169_67 sourceBody169_68

def sourceBody169_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_69 sourceBody169_5

def sourceBody169_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_70 sourceBody169_0

def sourceBody169_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_24 sourceBody169_71

def sourceBody169_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_23 sourceBody169_72

def sourceBody169_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_19 sourceBody169_73

def sourceBody169_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_18 sourceBody169_74

def sourceBody169_76 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody169_75 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody169_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_76 sourceBody169_5

def sourceBody169_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_5 sourceBody169_77

def sourceBody169_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody169_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody169_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 6]

def sourceBody169_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_81 sourceBody169_0

def sourceBody169_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_80 sourceBody169_82

def sourceBody169_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_79 sourceBody169_83

def sourceBody169_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_78 sourceBody169_84

def sourceBody169_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_17 sourceBody169_85

def sourceBody169_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_86

def sourceBody169_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_16 sourceBody169_87

def sourceBody169_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_88

def sourceBody169_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_15 sourceBody169_89

def sourceBody169_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_90

def sourceBody169_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_91

def sourceBody169_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_9 sourceBody169_92

def sourceBody169_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_93

def sourceBody169_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody169_0 sourceBody169_94

def source169 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (169, 3, sourceBody169_95)
end InitECandidate.Proofs.WordStages
