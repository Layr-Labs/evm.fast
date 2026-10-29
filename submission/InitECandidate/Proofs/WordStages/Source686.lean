import InitECandidate.Proofs.WordStages.Source670
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody686_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody686_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody686_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1152#64)

def sourceBody686_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody686_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody686_0, 686, 2)) (some 78) ([12, 40]) (some (12, sourceBody686_3, 686, 3))

def sourceBody686_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody686_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_4 sourceBody686_5

def sourceBody686_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_6 sourceBody686_0

def sourceBody686_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_2 sourceBody686_7

def sourceBody686_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_1 sourceBody686_8

def sourceBody686_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_9

def sourceBody686_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_10

def sourceBody686_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody686_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 48)

def sourceBody686_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody686_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody686_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody686_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 40 (Flapjack.WordRegImm.reg 26) sourceBody686_15 sourceBody686_16

def sourceBody686_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_17 sourceBody686_5

def sourceBody686_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 40)

def sourceBody686_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
          (Flapjack.WordLangExpHOL.const 6#64)]))

def sourceBody686_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
              (Flapjack.WordLangExpHOL.const 6#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody686_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
              (Flapjack.WordLangExpHOL.const 6#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody686_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
              (Flapjack.WordLangExpHOL.const 6#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody686_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
          (Flapjack.WordLangExpHOL.const 6#64),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody686_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
              (Flapjack.WordLangExpHOL.const 6#64),
            Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody686_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
              (Flapjack.WordLangExpHOL.const 6#64),
            Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody686_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
              (Flapjack.WordLangExpHOL.const 6#64),
            Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody686_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody686_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody686_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody686_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 52)

def sourceBody686_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody686_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody686_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 44, 30, 60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody686_0, 686, 4)) (some 665) ([6, 34, 20, 50, 14]) (some (6, sourceBody686_33, 686, 5))

def sourceBody686_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_34 sourceBody686_5

def sourceBody686_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_35 sourceBody686_0

def sourceBody686_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_32 sourceBody686_36

def sourceBody686_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_31 sourceBody686_37

def sourceBody686_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_30 sourceBody686_38

def sourceBody686_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_29 sourceBody686_39

def sourceBody686_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_28 sourceBody686_40

def sourceBody686_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody686_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody686_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 26)

def sourceBody686_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 56)

def sourceBody686_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody686_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody686_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody686_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 60)

def sourceBody686_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody686_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 34, 20, 50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody686_0, 686, 6)) (some 659) ([14, 42, 28, 58, 10, 38, 24, 54]) (some (14, sourceBody686_50, 686, 7))

def sourceBody686_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_51 sourceBody686_5

def sourceBody686_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_52 sourceBody686_0

def sourceBody686_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_49 sourceBody686_53

def sourceBody686_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_48 sourceBody686_54

def sourceBody686_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_47 sourceBody686_55

def sourceBody686_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_46 sourceBody686_56

def sourceBody686_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_45 sourceBody686_57

def sourceBody686_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_44 sourceBody686_58

def sourceBody686_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_43 sourceBody686_59

def sourceBody686_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_42 sourceBody686_60

def sourceBody686_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody686_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 48)

def sourceBody686_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody686_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody686_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody686_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 58) sourceBody686_65 sourceBody686_66

def sourceBody686_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_67 sourceBody686_5

def sourceBody686_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody686_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody686_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_70 sourceBody686_0

def sourceBody686_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_71 sourceBody686_0

def sourceBody686_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody686_72 sourceBody686_0

def sourceBody686_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_73 sourceBody686_5

def sourceBody686_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_74 sourceBody686_0

def sourceBody686_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_69 sourceBody686_75

def sourceBody686_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_68 sourceBody686_76

def sourceBody686_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_64 sourceBody686_77

def sourceBody686_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_63 sourceBody686_78

def sourceBody686_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody686_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody686_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_81 sourceBody686_0

def sourceBody686_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_82 sourceBody686_0

def sourceBody686_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody686_83 sourceBody686_0

def sourceBody686_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_84 sourceBody686_5

def sourceBody686_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_85 sourceBody686_0

def sourceBody686_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_69 sourceBody686_86

def sourceBody686_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_68 sourceBody686_87

def sourceBody686_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_80 sourceBody686_88

def sourceBody686_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_63 sourceBody686_89

def sourceBody686_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_79 sourceBody686_90

def sourceBody686_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 48)

def sourceBody686_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody686_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 58 58 42 28))

def sourceBody686_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_94 sourceBody686_0

def sourceBody686_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_93 sourceBody686_95

def sourceBody686_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_92 sourceBody686_96

def sourceBody686_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 58])

def sourceBody686_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody686_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody686_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 34)

def sourceBody686_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody686_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 50)

def sourceBody686_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody686_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 38) 32

def sourceBody686_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_105 sourceBody686_0

def sourceBody686_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_104 sourceBody686_106

def sourceBody686_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 54)

def sourceBody686_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64])
  32

def sourceBody686_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_109 sourceBody686_0

def sourceBody686_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_108 sourceBody686_110

def sourceBody686_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 18)

def sourceBody686_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 16#64])
  32

def sourceBody686_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_113 sourceBody686_0

def sourceBody686_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_112 sourceBody686_114

def sourceBody686_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 46)

def sourceBody686_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 24#64])
  32

def sourceBody686_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_117 sourceBody686_0

def sourceBody686_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_116 sourceBody686_118

def sourceBody686_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_119 sourceBody686_0

def sourceBody686_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_115 sourceBody686_120

def sourceBody686_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_111 sourceBody686_121

def sourceBody686_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_107 sourceBody686_122

def sourceBody686_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_103 sourceBody686_123

def sourceBody686_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_124

def sourceBody686_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_102 sourceBody686_125

def sourceBody686_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_126

def sourceBody686_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_101 sourceBody686_127

def sourceBody686_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_128

def sourceBody686_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_100 sourceBody686_129

def sourceBody686_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_130

def sourceBody686_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_99 sourceBody686_131

def sourceBody686_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_132

def sourceBody686_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 6#64])
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody686_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody686_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 36)

def sourceBody686_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody686_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 52)

def sourceBody686_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_138 sourceBody686_123

def sourceBody686_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_139

def sourceBody686_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_137 sourceBody686_140

def sourceBody686_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_141

def sourceBody686_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_136 sourceBody686_142

def sourceBody686_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_143

def sourceBody686_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_135 sourceBody686_144

def sourceBody686_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_145

def sourceBody686_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_134 sourceBody686_146

def sourceBody686_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_147

def sourceBody686_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_133 sourceBody686_148

def sourceBody686_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody686_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 38)

def sourceBody686_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_151 sourceBody686_0

def sourceBody686_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_152 sourceBody686_0

def sourceBody686_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_150 sourceBody686_153

def sourceBody686_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_154

def sourceBody686_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_149 sourceBody686_155

def sourceBody686_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_98 sourceBody686_156

def sourceBody686_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_97 sourceBody686_157

def sourceBody686_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_91 sourceBody686_158

def sourceBody686_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_62 sourceBody686_159

def sourceBody686_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_160

def sourceBody686_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_61 sourceBody686_161

def sourceBody686_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_162

def sourceBody686_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_163

def sourceBody686_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_164

def sourceBody686_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_165

def sourceBody686_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_166

def sourceBody686_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_167

def sourceBody686_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_168

def sourceBody686_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_169

def sourceBody686_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_41 sourceBody686_170

def sourceBody686_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_171

def sourceBody686_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_172

def sourceBody686_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_173

def sourceBody686_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_174

def sourceBody686_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_175

def sourceBody686_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_176

def sourceBody686_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_177

def sourceBody686_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_178

def sourceBody686_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_27 sourceBody686_179

def sourceBody686_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_180

def sourceBody686_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_26 sourceBody686_181

def sourceBody686_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_182

def sourceBody686_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_25 sourceBody686_183

def sourceBody686_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_184

def sourceBody686_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_24 sourceBody686_185

def sourceBody686_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_186

def sourceBody686_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_23 sourceBody686_187

def sourceBody686_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_188

def sourceBody686_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_22 sourceBody686_189

def sourceBody686_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_190

def sourceBody686_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_21 sourceBody686_191

def sourceBody686_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_192

def sourceBody686_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_20 sourceBody686_193

def sourceBody686_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_194

def sourceBody686_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody686_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_195 sourceBody686_196

def sourceBody686_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody686_199 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 56 (Flapjack.WordRegImm.imm 0#64) sourceBody686_197 sourceBody686_198

def sourceBody686_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_199 sourceBody686_5

def sourceBody686_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_200 sourceBody686_0

def sourceBody686_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_19 sourceBody686_201

def sourceBody686_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_18 sourceBody686_202

def sourceBody686_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_14 sourceBody686_203

def sourceBody686_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_13 sourceBody686_204

def sourceBody686_206 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) sourceBody686_205 (Flapjack.Spt.ls PUnit.unit)

def sourceBody686_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_206 sourceBody686_5

def sourceBody686_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_5 sourceBody686_207

def sourceBody686_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody686_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody686_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_210 sourceBody686_0

def sourceBody686_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_209 sourceBody686_211

def sourceBody686_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_208 sourceBody686_212

def sourceBody686_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_12 sourceBody686_213

def sourceBody686_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_0 sourceBody686_214

def sourceBody686_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody686_11 sourceBody686_215

def source686 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (686, 3, sourceBody686_216)
end InitECandidate.Proofs.WordStages
