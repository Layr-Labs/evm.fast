import InitECandidate.Proofs.WordStages.Source182
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody198_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody198_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody198_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody198_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody198_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody198_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 34 34 26 18))

def sourceBody198_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody198_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody198_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody198_0, 198, 2)) (some 68) ([6]) (some (26, sourceBody198_7, 198, 3))

def sourceBody198_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody198_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_8 sourceBody198_9

def sourceBody198_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_10 sourceBody198_0

def sourceBody198_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_6 sourceBody198_11

def sourceBody198_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_5 sourceBody198_12

def sourceBody198_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_4 sourceBody198_13

def sourceBody198_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_3 sourceBody198_14

def sourceBody198_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody198_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody198_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody198_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 34)

def sourceBody198_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 30)

def sourceBody198_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody198_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody198_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 24 (Flapjack.WordRegImm.reg 16) sourceBody198_21 sourceBody198_22

def sourceBody198_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_23 sourceBody198_9

def sourceBody198_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody198_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 34)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody198_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 34)

def sourceBody198_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody198_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 10 10 16 32))

def sourceBody198_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody198_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody198_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 36 36 28 20))

def sourceBody198_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 10])

def sourceBody198_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 36])

def sourceBody198_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody198_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody198_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody198_0, 198, 4)) (some 77) ([4, 22, 14]) (some (16, sourceBody198_36, 198, 5))

def sourceBody198_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_37 sourceBody198_9

def sourceBody198_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_38 sourceBody198_0

def sourceBody198_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_35 sourceBody198_39

def sourceBody198_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_34 sourceBody198_40

def sourceBody198_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_33 sourceBody198_41

def sourceBody198_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_32 sourceBody198_42

def sourceBody198_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_31 sourceBody198_43

def sourceBody198_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_30 sourceBody198_44

def sourceBody198_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_29 sourceBody198_45

def sourceBody198_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_28 sourceBody198_46

def sourceBody198_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_27 sourceBody198_47

def sourceBody198_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_48

def sourceBody198_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_49

def sourceBody198_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody198_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 24)

def sourceBody198_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_52 sourceBody198_0

def sourceBody198_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_53 sourceBody198_0

def sourceBody198_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_51 sourceBody198_54

def sourceBody198_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_55

def sourceBody198_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_50 sourceBody198_56

def sourceBody198_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_26 sourceBody198_57

def sourceBody198_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_58

def sourceBody198_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody198_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_59 sourceBody198_60

def sourceBody198_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody198_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody198_61 sourceBody198_62

def sourceBody198_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_63 sourceBody198_9

def sourceBody198_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_64 sourceBody198_0

def sourceBody198_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_25 sourceBody198_65

def sourceBody198_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_24 sourceBody198_66

def sourceBody198_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_20 sourceBody198_67

def sourceBody198_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_19 sourceBody198_68

def sourceBody198_70 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody198_69 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody198_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_70 sourceBody198_9

def sourceBody198_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_9 sourceBody198_71

def sourceBody198_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody198_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody198_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6, 24]

def sourceBody198_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_75 sourceBody198_0

def sourceBody198_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_74 sourceBody198_76

def sourceBody198_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_73 sourceBody198_77

def sourceBody198_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_72 sourceBody198_78

def sourceBody198_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_18 sourceBody198_79

def sourceBody198_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_80

def sourceBody198_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_17 sourceBody198_81

def sourceBody198_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_82

def sourceBody198_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_16 sourceBody198_83

def sourceBody198_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_84

def sourceBody198_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_15 sourceBody198_85

def sourceBody198_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_86

def sourceBody198_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_87

def sourceBody198_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_2 sourceBody198_88

def sourceBody198_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_89

def sourceBody198_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_1 sourceBody198_90

def sourceBody198_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody198_0 sourceBody198_91

def source198 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (198, 2, sourceBody198_92)
end InitECandidate.Proofs.WordStages
