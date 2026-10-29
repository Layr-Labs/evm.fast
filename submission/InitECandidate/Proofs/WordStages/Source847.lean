import InitECandidate.Proofs.WordStages.Source831
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody847_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody847_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody847_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody847_0, 847, 2)) (some 69) ([]) (some (18, sourceBody847_1, 847, 3))

def sourceBody847_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody847_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_2 sourceBody847_3

def sourceBody847_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_4 sourceBody847_0

def sourceBody847_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody847_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody847_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody847_0, 847, 4)) (some 68) ([14]) (some (14, sourceBody847_7, 847, 5))

def sourceBody847_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_8 sourceBody847_3

def sourceBody847_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_9 sourceBody847_0

def sourceBody847_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_6 sourceBody847_10

def sourceBody847_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody847_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody847_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody847_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody847_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody847_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 16) sourceBody847_15 sourceBody847_16

def sourceBody847_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_17 sourceBody847_3

def sourceBody847_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody847_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody847_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody847_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody847_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody847_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody847_0, 847, 6)) (some 153) ([8, 16, 12]) (some (8, sourceBody847_23, 847, 7))

def sourceBody847_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_24 sourceBody847_3

def sourceBody847_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_25 sourceBody847_0

def sourceBody847_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_22 sourceBody847_26

def sourceBody847_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_21 sourceBody847_27

def sourceBody847_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_20 sourceBody847_28

def sourceBody847_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_29

def sourceBody847_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_30

def sourceBody847_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody847_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody847_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_33 sourceBody847_0

def sourceBody847_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_34 sourceBody847_0

def sourceBody847_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_32 sourceBody847_35

def sourceBody847_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_36

def sourceBody847_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_31 sourceBody847_37

def sourceBody847_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody847_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_38 sourceBody847_39

def sourceBody847_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody847_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody847_40 sourceBody847_41

def sourceBody847_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_42 sourceBody847_3

def sourceBody847_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_43 sourceBody847_0

def sourceBody847_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_19 sourceBody847_44

def sourceBody847_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_18 sourceBody847_45

def sourceBody847_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_14 sourceBody847_46

def sourceBody847_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_13 sourceBody847_47

def sourceBody847_49 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody847_48 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody847_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_49 sourceBody847_3

def sourceBody847_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_3 sourceBody847_50

def sourceBody847_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody847_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody847_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody847_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody847_0, 847, 8)) (some 153) ([8, 16, 12]) (some (8, sourceBody847_23, 847, 9))

def sourceBody847_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_55 sourceBody847_3

def sourceBody847_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_56 sourceBody847_0

def sourceBody847_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_54 sourceBody847_57

def sourceBody847_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_53 sourceBody847_58

def sourceBody847_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_52 sourceBody847_59

def sourceBody847_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_60

def sourceBody847_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_61

def sourceBody847_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_51 sourceBody847_62

def sourceBody847_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody847_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody847_0, 847, 10)) (some 70) ([8]) (some (8, sourceBody847_23, 847, 11))

def sourceBody847_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_65 sourceBody847_3

def sourceBody847_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_66 sourceBody847_0

def sourceBody847_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_64 sourceBody847_67

def sourceBody847_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_68

def sourceBody847_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_69

def sourceBody847_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_63 sourceBody847_70

def sourceBody847_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody847_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody847_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_73 sourceBody847_0

def sourceBody847_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_72 sourceBody847_74

def sourceBody847_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_71 sourceBody847_75

def sourceBody847_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_12 sourceBody847_76

def sourceBody847_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_77

def sourceBody847_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_11 sourceBody847_78

def sourceBody847_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_79

def sourceBody847_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_80

def sourceBody847_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_5 sourceBody847_81

def sourceBody847_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_82

def sourceBody847_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody847_0 sourceBody847_83

def source847 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (847, 4, sourceBody847_84)
end InitECandidate.Proofs.WordStages
