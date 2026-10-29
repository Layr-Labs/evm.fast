import InitECandidate.Proofs.WordStages.Source345
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody361_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody361_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 4)

def sourceBody361_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody361_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody361_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody361_0, 361, 2)) (some 360) ([32, 22]) (some (32, sourceBody361_3, 361, 3))

def sourceBody361_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody361_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_4 sourceBody361_5

def sourceBody361_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_6 sourceBody361_0

def sourceBody361_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_2 sourceBody361_7

def sourceBody361_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_1 sourceBody361_8

def sourceBody361_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody361_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody361_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody361_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody361_0, 361, 4)) (some 178) ([22, 42]) (some (22, sourceBody361_12, 361, 5))

def sourceBody361_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_13 sourceBody361_5

def sourceBody361_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_14 sourceBody361_0

def sourceBody361_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_11 sourceBody361_15

def sourceBody361_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_10 sourceBody361_16

def sourceBody361_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 32])

def sourceBody361_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody361_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def sourceBody361_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody361_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody361_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody361_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 30 (Flapjack.WordRegImm.reg 20) sourceBody361_22 sourceBody361_23

def sourceBody361_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_24 sourceBody361_5

def sourceBody361_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 30)

def sourceBody361_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 42)

def sourceBody361_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody361_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 20 20 10 30))

def sourceBody361_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_29 sourceBody361_0

def sourceBody361_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_28 sourceBody361_30

def sourceBody361_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_27 sourceBody361_31

def sourceBody361_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 20])

def sourceBody361_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody361_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 16)

def sourceBody361_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 33#64)

def sourceBody361_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 46 46 36 26))

def sourceBody361_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_37 sourceBody361_0

def sourceBody361_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_36 sourceBody361_38

def sourceBody361_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_35 sourceBody361_39

def sourceBody361_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 46)

def sourceBody361_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody361_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody361_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody361_0, 361, 6)) (some 180) ([18]) (some (18, sourceBody361_43, 361, 7))

def sourceBody361_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_44 sourceBody361_5

def sourceBody361_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_45 sourceBody361_0

def sourceBody361_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_42 sourceBody361_46

def sourceBody361_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody361_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 21#64, Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 8])

def sourceBody361_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody361_0, 361, 8)) (some 178) ([18, 38]) (some (18, sourceBody361_43, 361, 9))

def sourceBody361_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_50 sourceBody361_5

def sourceBody361_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_51 sourceBody361_0

def sourceBody361_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_49 sourceBody361_52

def sourceBody361_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_48 sourceBody361_53

def sourceBody361_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 32])

def sourceBody361_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody361_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_56 sourceBody361_0

def sourceBody361_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_57 sourceBody361_0

def sourceBody361_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_55 sourceBody361_58

def sourceBody361_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_59

def sourceBody361_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_54 sourceBody361_60

def sourceBody361_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody361_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody361_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody361_0, 361, 10)) (some 176) ([18, 38, 14]) (some (18, sourceBody361_43, 361, 11))

def sourceBody361_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_64 sourceBody361_5

def sourceBody361_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_65 sourceBody361_0

def sourceBody361_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_63 sourceBody361_66

def sourceBody361_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_62 sourceBody361_67

def sourceBody361_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_48 sourceBody361_68

def sourceBody361_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_61 sourceBody361_69

def sourceBody361_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_70 sourceBody361_60

def sourceBody361_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def sourceBody361_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody361_0, 361, 12)) (some 178) ([18, 38]) (some (18, sourceBody361_43, 361, 13))

def sourceBody361_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_73 sourceBody361_5

def sourceBody361_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_74 sourceBody361_0

def sourceBody361_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_72 sourceBody361_75

def sourceBody361_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_48 sourceBody361_76

def sourceBody361_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_71 sourceBody361_77

def sourceBody361_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_78 sourceBody361_60

def sourceBody361_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody361_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody361_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody361_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody361_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody361_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody361_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 24) sourceBody361_84 sourceBody361_85

def sourceBody361_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_86 sourceBody361_5

def sourceBody361_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 34)

def sourceBody361_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody361_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 38)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody361_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody361_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody361_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody361_0, 361, 14)) (some 176) ([14, 34, 24]) (some (14, sourceBody361_92, 361, 15))

def sourceBody361_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_93 sourceBody361_5

def sourceBody361_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_94 sourceBody361_0

def sourceBody361_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_91 sourceBody361_95

def sourceBody361_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_90 sourceBody361_96

def sourceBody361_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_89 sourceBody361_97

def sourceBody361_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 32])

def sourceBody361_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody361_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_100 sourceBody361_0

def sourceBody361_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_101 sourceBody361_0

def sourceBody361_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_99 sourceBody361_102

def sourceBody361_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_103

def sourceBody361_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_98 sourceBody361_104

def sourceBody361_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody361_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 14)

def sourceBody361_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_107 sourceBody361_0

def sourceBody361_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_108 sourceBody361_0

def sourceBody361_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_106 sourceBody361_109

def sourceBody361_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_110

def sourceBody361_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_105 sourceBody361_111

def sourceBody361_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody361_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_112 sourceBody361_113

def sourceBody361_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody361_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 44 (Flapjack.WordRegImm.imm 0#64) sourceBody361_114 sourceBody361_115

def sourceBody361_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_116 sourceBody361_5

def sourceBody361_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_117 sourceBody361_0

def sourceBody361_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_88 sourceBody361_118

def sourceBody361_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_87 sourceBody361_119

def sourceBody361_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_83 sourceBody361_120

def sourceBody361_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_82 sourceBody361_121

def sourceBody361_123 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody361_122 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody361_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_123 sourceBody361_5

def sourceBody361_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_5 sourceBody361_124

def sourceBody361_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody361_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 14)

def sourceBody361_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_127 sourceBody361_0

def sourceBody361_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_128 sourceBody361_0

def sourceBody361_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_126 sourceBody361_129

def sourceBody361_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_130

def sourceBody361_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_125 sourceBody361_131

def sourceBody361_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_81 sourceBody361_132

def sourceBody361_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_133

def sourceBody361_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_80 sourceBody361_134

def sourceBody361_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_135

def sourceBody361_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_79 sourceBody361_136

def sourceBody361_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_47 sourceBody361_137

def sourceBody361_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_138

def sourceBody361_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_139

def sourceBody361_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_41 sourceBody361_140

def sourceBody361_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_40 sourceBody361_141

def sourceBody361_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_34 sourceBody361_142

def sourceBody361_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_143

def sourceBody361_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_33 sourceBody361_144

def sourceBody361_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_32 sourceBody361_145

def sourceBody361_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_146 sourceBody361_113

def sourceBody361_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody361_147 sourceBody361_115

def sourceBody361_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_148 sourceBody361_5

def sourceBody361_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_149 sourceBody361_0

def sourceBody361_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_26 sourceBody361_150

def sourceBody361_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_25 sourceBody361_151

def sourceBody361_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_21 sourceBody361_152

def sourceBody361_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_20 sourceBody361_153

def sourceBody361_155 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody361_154 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody361_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_155 sourceBody361_5

def sourceBody361_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_5 sourceBody361_156

def sourceBody361_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 2])

def sourceBody361_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody361_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_159 sourceBody361_0

def sourceBody361_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_158 sourceBody361_160

def sourceBody361_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_157 sourceBody361_161

def sourceBody361_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_19 sourceBody361_162

def sourceBody361_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_163

def sourceBody361_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_18 sourceBody361_164

def sourceBody361_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_165

def sourceBody361_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_17 sourceBody361_166

def sourceBody361_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_167

def sourceBody361_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_168

def sourceBody361_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_9 sourceBody361_169

def sourceBody361_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_170

def sourceBody361_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody361_0 sourceBody361_171

def source361 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (361, 4, sourceBody361_172)
end InitECandidate.Proofs.WordStages
