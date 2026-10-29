import InitECandidate.Proofs.WordStages.Source652
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody668_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody668_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody668_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody668_0, 668, 2)) (some 69) ([]) (some (44, sourceBody668_1, 668, 3))

def sourceBody668_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody668_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_2 sourceBody668_3

def sourceBody668_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_4 sourceBody668_0

def sourceBody668_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 736#64)

def sourceBody668_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody668_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody668_0, 668, 4)) (some 68) ([30]) (some (30, sourceBody668_7, 668, 5))

def sourceBody668_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_8 sourceBody668_3

def sourceBody668_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_9 sourceBody668_0

def sourceBody668_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_6 sourceBody668_10

def sourceBody668_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody668_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 30)

def sourceBody668_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 23#64)

def sourceBody668_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody668_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody668_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 40) sourceBody668_15 sourceBody668_16

def sourceBody668_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_17 sourceBody668_3

def sourceBody668_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody668_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody668_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody668_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody668_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody668_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody668_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody668_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody668_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody668_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 48 (Flapjack.WordRegImm.reg 34) sourceBody668_26 sourceBody668_27

def sourceBody668_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_28 sourceBody668_3

def sourceBody668_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 48)

def sourceBody668_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 11#64])

def sourceBody668_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_31 sourceBody668_0

def sourceBody668_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_32 sourceBody668_0

def sourceBody668_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 62 (Flapjack.WordRegImm.imm 0#64) sourceBody668_33 sourceBody668_0

def sourceBody668_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_34 sourceBody668_3

def sourceBody668_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_35 sourceBody668_0

def sourceBody668_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_30 sourceBody668_36

def sourceBody668_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_29 sourceBody668_37

def sourceBody668_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_25 sourceBody668_38

def sourceBody668_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_24 sourceBody668_39

def sourceBody668_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody668_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody668_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 20)

def sourceBody668_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody668_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody668_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 62) sourceBody668_44 sourceBody668_45

def sourceBody668_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_46 sourceBody668_3

def sourceBody668_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 34)

def sourceBody668_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody668_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_49 sourceBody668_0

def sourceBody668_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_50 sourceBody668_0

def sourceBody668_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody668_51 sourceBody668_0

def sourceBody668_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_52 sourceBody668_3

def sourceBody668_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_53 sourceBody668_0

def sourceBody668_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_48 sourceBody668_54

def sourceBody668_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_47 sourceBody668_55

def sourceBody668_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_43 sourceBody668_56

def sourceBody668_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_42 sourceBody668_57

def sourceBody668_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 20)

def sourceBody668_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 54)

def sourceBody668_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 34 (Flapjack.WordRegImm.reg 62) sourceBody668_44 sourceBody668_45

def sourceBody668_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_61 sourceBody668_3

def sourceBody668_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody668_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody668_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody668_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody668_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 54])
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody668_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 54])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody668_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 54])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody668_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 54])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody668_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 48)

def sourceBody668_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody668_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 62)

def sourceBody668_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody668_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 38)

def sourceBody668_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody668_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 52)

def sourceBody668_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody668_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody668_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 32, 60, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody668_0, 668, 6)) (some 661) ([42, 28, 56, 22, 50, 36, 64, 8]) (some (42, sourceBody668_79, 668, 7))

def sourceBody668_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_80 sourceBody668_3

def sourceBody668_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_81 sourceBody668_0

def sourceBody668_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_78 sourceBody668_82

def sourceBody668_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_77 sourceBody668_83

def sourceBody668_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_76 sourceBody668_84

def sourceBody668_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_75 sourceBody668_85

def sourceBody668_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_74 sourceBody668_86

def sourceBody668_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_73 sourceBody668_87

def sourceBody668_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_72 sourceBody668_88

def sourceBody668_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_71 sourceBody668_89

def sourceBody668_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 58)

def sourceBody668_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody668_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 40)

def sourceBody668_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody668_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 46)

def sourceBody668_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 32)

def sourceBody668_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 60)

def sourceBody668_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody668_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([58, 12, 40, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody668_0, 668, 8)) (some 658) ([42, 28, 56, 22, 50, 36, 64, 8]) (some (42, sourceBody668_79, 668, 9))

def sourceBody668_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_99 sourceBody668_3

def sourceBody668_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_100 sourceBody668_0

def sourceBody668_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_98 sourceBody668_101

def sourceBody668_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_97 sourceBody668_102

def sourceBody668_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_96 sourceBody668_103

def sourceBody668_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_95 sourceBody668_104

def sourceBody668_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_94 sourceBody668_105

def sourceBody668_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_93 sourceBody668_106

def sourceBody668_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_92 sourceBody668_107

def sourceBody668_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_91 sourceBody668_108

def sourceBody668_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody668_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 42)

def sourceBody668_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_111 sourceBody668_0

def sourceBody668_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_112 sourceBody668_0

def sourceBody668_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_110 sourceBody668_113

def sourceBody668_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_114

def sourceBody668_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_109 sourceBody668_115

def sourceBody668_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_90 sourceBody668_116

def sourceBody668_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_117

def sourceBody668_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_118

def sourceBody668_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_119

def sourceBody668_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_120

def sourceBody668_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_121

def sourceBody668_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_122

def sourceBody668_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_123

def sourceBody668_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_124

def sourceBody668_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_70 sourceBody668_125

def sourceBody668_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_126

def sourceBody668_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_69 sourceBody668_127

def sourceBody668_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_128

def sourceBody668_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_68 sourceBody668_129

def sourceBody668_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_130

def sourceBody668_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_67 sourceBody668_131

def sourceBody668_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_132

def sourceBody668_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_66 sourceBody668_133

def sourceBody668_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_134

def sourceBody668_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_65 sourceBody668_135

def sourceBody668_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_136

def sourceBody668_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_64 sourceBody668_137

def sourceBody668_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_138

def sourceBody668_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_63 sourceBody668_139

def sourceBody668_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_140

def sourceBody668_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody668_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_141 sourceBody668_142

def sourceBody668_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody668_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody668_143 sourceBody668_144

def sourceBody668_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_145 sourceBody668_3

def sourceBody668_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_146 sourceBody668_0

def sourceBody668_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_48 sourceBody668_147

def sourceBody668_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_62 sourceBody668_148

def sourceBody668_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_60 sourceBody668_149

def sourceBody668_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_59 sourceBody668_150

def sourceBody668_152 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody668_151 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody668_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_152 sourceBody668_3

def sourceBody668_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_3 sourceBody668_153

def sourceBody668_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_58 sourceBody668_154

def sourceBody668_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 44,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody668_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 58)

def sourceBody668_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 12)

def sourceBody668_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 40)

def sourceBody668_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 26)

def sourceBody668_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 34)

def sourceBody668_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 48) 24

def sourceBody668_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_162 sourceBody668_0

def sourceBody668_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_161 sourceBody668_163

def sourceBody668_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 62)

def sourceBody668_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 8#64])
  24

def sourceBody668_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_166 sourceBody668_0

def sourceBody668_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_165 sourceBody668_167

def sourceBody668_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody668_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 16#64])
  24

def sourceBody668_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_170 sourceBody668_0

def sourceBody668_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_169 sourceBody668_171

def sourceBody668_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 38)

def sourceBody668_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 24#64])
  24

def sourceBody668_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_174 sourceBody668_0

def sourceBody668_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_173 sourceBody668_175

def sourceBody668_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_176 sourceBody668_0

def sourceBody668_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_172 sourceBody668_177

def sourceBody668_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_168 sourceBody668_178

def sourceBody668_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_164 sourceBody668_179

def sourceBody668_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_160 sourceBody668_180

def sourceBody668_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_181

def sourceBody668_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_159 sourceBody668_182

def sourceBody668_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_183

def sourceBody668_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_158 sourceBody668_184

def sourceBody668_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_185

def sourceBody668_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_157 sourceBody668_186

def sourceBody668_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_187

def sourceBody668_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_156 sourceBody668_188

def sourceBody668_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_189

def sourceBody668_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_155 sourceBody668_190

def sourceBody668_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody668_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 48)

def sourceBody668_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_193 sourceBody668_0

def sourceBody668_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_194 sourceBody668_0

def sourceBody668_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_192 sourceBody668_195

def sourceBody668_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_196

def sourceBody668_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_191 sourceBody668_197

def sourceBody668_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_41 sourceBody668_198

def sourceBody668_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_199

def sourceBody668_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_40 sourceBody668_200

def sourceBody668_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_23 sourceBody668_201

def sourceBody668_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_202

def sourceBody668_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_22 sourceBody668_203

def sourceBody668_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_204

def sourceBody668_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_21 sourceBody668_205

def sourceBody668_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_206

def sourceBody668_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_16 sourceBody668_207

def sourceBody668_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_208

def sourceBody668_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_20 sourceBody668_209

def sourceBody668_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_210

def sourceBody668_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_211 sourceBody668_142

def sourceBody668_213 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody668_212 sourceBody668_144

def sourceBody668_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_213 sourceBody668_3

def sourceBody668_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_214 sourceBody668_0

def sourceBody668_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_19 sourceBody668_215

def sourceBody668_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_18 sourceBody668_216

def sourceBody668_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_14 sourceBody668_217

def sourceBody668_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_13 sourceBody668_218

def sourceBody668_220 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody668_219 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody668_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_220 sourceBody668_3

def sourceBody668_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_3 sourceBody668_221

def sourceBody668_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 44)

def sourceBody668_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody668_225 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody668_0, 668, 10)) (some 667) ([12]) (some (12, sourceBody668_224, 668, 11))

def sourceBody668_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_225 sourceBody668_3

def sourceBody668_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_226 sourceBody668_0

def sourceBody668_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_223 sourceBody668_227

def sourceBody668_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_228

def sourceBody668_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_229

def sourceBody668_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_222 sourceBody668_230

def sourceBody668_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody668_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def sourceBody668_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody668_235 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody668_0, 668, 12)) (some 77) ([12, 40, 26]) (some (12, sourceBody668_224, 668, 13))

def sourceBody668_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_235 sourceBody668_3

def sourceBody668_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_236 sourceBody668_0

def sourceBody668_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_234 sourceBody668_237

def sourceBody668_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_233 sourceBody668_238

def sourceBody668_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_232 sourceBody668_239

def sourceBody668_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_240

def sourceBody668_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_241

def sourceBody668_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_231 sourceBody668_242

def sourceBody668_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody668_245 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody668_0, 668, 14)) (some 70) ([12]) (some (12, sourceBody668_224, 668, 15))

def sourceBody668_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_245 sourceBody668_3

def sourceBody668_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_246 sourceBody668_0

def sourceBody668_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_244 sourceBody668_247

def sourceBody668_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_248

def sourceBody668_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_249

def sourceBody668_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_243 sourceBody668_250

def sourceBody668_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [58]

def sourceBody668_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_252 sourceBody668_0

def sourceBody668_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_20 sourceBody668_253

def sourceBody668_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_251 sourceBody668_254

def sourceBody668_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_12 sourceBody668_255

def sourceBody668_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_256

def sourceBody668_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_11 sourceBody668_257

def sourceBody668_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_258

def sourceBody668_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_259

def sourceBody668_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_5 sourceBody668_260

def sourceBody668_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_261

def sourceBody668_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody668_0 sourceBody668_262

def source668 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (668, 4, sourceBody668_263)
end InitECandidate.Proofs.WordStages
