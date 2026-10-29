import InitECandidate.Proofs.WordStages.Source351
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody367_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody367_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody367_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody367_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 2)) (some 366) ([24]) (some (24, sourceBody367_2, 367, 3))

def sourceBody367_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody367_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_3 sourceBody367_4

def sourceBody367_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_5 sourceBody367_0

def sourceBody367_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_1 sourceBody367_6

def sourceBody367_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody367_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody367_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 4)) (some 68) ([18]) (some (18, sourceBody367_9, 367, 5))

def sourceBody367_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_10 sourceBody367_4

def sourceBody367_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_11 sourceBody367_0

def sourceBody367_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_8 sourceBody367_12

def sourceBody367_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 10#64])

def sourceBody367_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody367_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody367_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody367_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody367_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody367_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody367_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.reg 14) sourceBody367_19 sourceBody367_20

def sourceBody367_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_21 sourceBody367_4

def sourceBody367_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody367_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 30)

def sourceBody367_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody367_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody367_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 6)) (some 177) ([16, 28]) (some (16, sourceBody367_26, 367, 7))

def sourceBody367_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_27 sourceBody367_4

def sourceBody367_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_28 sourceBody367_0

def sourceBody367_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_25 sourceBody367_29

def sourceBody367_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_30

def sourceBody367_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 22])

def sourceBody367_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody367_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_33 sourceBody367_0

def sourceBody367_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_34 sourceBody367_0

def sourceBody367_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_32 sourceBody367_35

def sourceBody367_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_36

def sourceBody367_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_31 sourceBody367_37

def sourceBody367_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody367_38 sourceBody367_0

def sourceBody367_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_39 sourceBody367_4

def sourceBody367_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_40 sourceBody367_0

def sourceBody367_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_23 sourceBody367_41

def sourceBody367_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_22 sourceBody367_42

def sourceBody367_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_18 sourceBody367_43

def sourceBody367_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_17 sourceBody367_44

def sourceBody367_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody367_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody367_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody367_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody367_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 8)) (some 357) ([16, 28, 14, 26, 20]) (some (16, sourceBody367_26, 367, 9))

def sourceBody367_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_50 sourceBody367_4

def sourceBody367_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_51 sourceBody367_0

def sourceBody367_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_49 sourceBody367_52

def sourceBody367_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_48 sourceBody367_53

def sourceBody367_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_47 sourceBody367_54

def sourceBody367_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_46 sourceBody367_55

def sourceBody367_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_56

def sourceBody367_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_45 sourceBody367_57

def sourceBody367_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_58 sourceBody367_37

def sourceBody367_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody367_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 14) sourceBody367_19 sourceBody367_20

def sourceBody367_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_61 sourceBody367_4

def sourceBody367_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody367_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody367_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody367_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody367_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 10)) (some 357) ([16, 28, 14, 26, 20]) (some (16, sourceBody367_26, 367, 11))

def sourceBody367_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_67 sourceBody367_4

def sourceBody367_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_68 sourceBody367_0

def sourceBody367_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_66 sourceBody367_69

def sourceBody367_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_65 sourceBody367_70

def sourceBody367_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_64 sourceBody367_71

def sourceBody367_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_63 sourceBody367_72

def sourceBody367_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_73

def sourceBody367_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_74 sourceBody367_37

def sourceBody367_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64]))

def sourceBody367_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody367_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody367_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody367_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 12)) (some 357) ([16, 28, 14, 26, 20]) (some (16, sourceBody367_26, 367, 13))

def sourceBody367_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_80 sourceBody367_4

def sourceBody367_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_81 sourceBody367_0

def sourceBody367_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_79 sourceBody367_82

def sourceBody367_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_78 sourceBody367_83

def sourceBody367_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_77 sourceBody367_84

def sourceBody367_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_76 sourceBody367_85

def sourceBody367_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_86

def sourceBody367_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_87 sourceBody367_37

def sourceBody367_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody367_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody367_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody367_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody367_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 14)) (some 357) ([16, 28, 14, 26, 20]) (some (16, sourceBody367_26, 367, 15))

def sourceBody367_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_93 sourceBody367_4

def sourceBody367_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_94 sourceBody367_0

def sourceBody367_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_92 sourceBody367_95

def sourceBody367_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_91 sourceBody367_96

def sourceBody367_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_90 sourceBody367_97

def sourceBody367_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_89 sourceBody367_98

def sourceBody367_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_99

def sourceBody367_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_88 sourceBody367_100

def sourceBody367_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_101 sourceBody367_37

def sourceBody367_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody367_75 sourceBody367_102

def sourceBody367_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_103 sourceBody367_4

def sourceBody367_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_104 sourceBody367_0

def sourceBody367_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_23 sourceBody367_105

def sourceBody367_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_62 sourceBody367_106

def sourceBody367_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_60 sourceBody367_107

def sourceBody367_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_19 sourceBody367_108

def sourceBody367_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_59 sourceBody367_109

def sourceBody367_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 144#64]))

def sourceBody367_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 16)) (some 177) ([16, 28]) (some (16, sourceBody367_26, 367, 17))

def sourceBody367_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_112 sourceBody367_4

def sourceBody367_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_113 sourceBody367_0

def sourceBody367_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_111 sourceBody367_114

def sourceBody367_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_115

def sourceBody367_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_110 sourceBody367_116

def sourceBody367_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_117 sourceBody367_37

def sourceBody367_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody367_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 18)) (some 359) ([16, 28]) (some (16, sourceBody367_26, 367, 19))

def sourceBody367_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_120 sourceBody367_4

def sourceBody367_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_121 sourceBody367_0

def sourceBody367_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_119 sourceBody367_122

def sourceBody367_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_123

def sourceBody367_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_118 sourceBody367_124

def sourceBody367_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_125 sourceBody367_37

def sourceBody367_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody367_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody367_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody367_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody367_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 20)) (some 357) ([16, 28, 14, 26, 20]) (some (16, sourceBody367_26, 367, 21))

def sourceBody367_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_131 sourceBody367_4

def sourceBody367_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_132 sourceBody367_0

def sourceBody367_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_130 sourceBody367_133

def sourceBody367_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_129 sourceBody367_134

def sourceBody367_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_128 sourceBody367_135

def sourceBody367_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_127 sourceBody367_136

def sourceBody367_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_137

def sourceBody367_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_126 sourceBody367_138

def sourceBody367_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_139 sourceBody367_37

def sourceBody367_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64]))

def sourceBody367_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 200#64]))

def sourceBody367_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 22)) (some 176) ([16, 28, 14]) (some (16, sourceBody367_26, 367, 23))

def sourceBody367_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_143 sourceBody367_4

def sourceBody367_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_144 sourceBody367_0

def sourceBody367_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_142 sourceBody367_145

def sourceBody367_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_141 sourceBody367_146

def sourceBody367_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_147

def sourceBody367_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_140 sourceBody367_148

def sourceBody367_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_149 sourceBody367_37

def sourceBody367_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 208#64]))

def sourceBody367_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 216#64]))

def sourceBody367_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 24)) (some 361) ([16, 28, 14]) (some (16, sourceBody367_26, 367, 25))

def sourceBody367_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_153 sourceBody367_4

def sourceBody367_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_154 sourceBody367_0

def sourceBody367_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_152 sourceBody367_155

def sourceBody367_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_151 sourceBody367_156

def sourceBody367_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_157

def sourceBody367_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_158 sourceBody367_37

def sourceBody367_160 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody367_159 sourceBody367_0

def sourceBody367_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_160 sourceBody367_4

def sourceBody367_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_161 sourceBody367_0

def sourceBody367_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_23 sourceBody367_162

def sourceBody367_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_22 sourceBody367_163

def sourceBody367_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_18 sourceBody367_164

def sourceBody367_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_17 sourceBody367_165

def sourceBody367_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_150 sourceBody367_166

def sourceBody367_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody367_169 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 14) sourceBody367_19 sourceBody367_20

def sourceBody367_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_169 sourceBody367_4

def sourceBody367_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 224#64]))

def sourceBody367_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 224#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody367_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 224#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody367_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 224#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody367_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 26)) (some 357) ([16, 28, 14, 26, 20]) (some (16, sourceBody367_26, 367, 27))

def sourceBody367_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_175 sourceBody367_4

def sourceBody367_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_176 sourceBody367_0

def sourceBody367_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_174 sourceBody367_177

def sourceBody367_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_173 sourceBody367_178

def sourceBody367_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_172 sourceBody367_179

def sourceBody367_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_171 sourceBody367_180

def sourceBody367_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_181

def sourceBody367_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_182 sourceBody367_37

def sourceBody367_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 256#64]))

def sourceBody367_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody367_186 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 28)) (some 362) ([16, 28, 14]) (some (16, sourceBody367_26, 367, 29))

def sourceBody367_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_186 sourceBody367_4

def sourceBody367_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_187 sourceBody367_0

def sourceBody367_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_185 sourceBody367_188

def sourceBody367_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_184 sourceBody367_189

def sourceBody367_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_190

def sourceBody367_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_183 sourceBody367_191

def sourceBody367_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_192 sourceBody367_37

def sourceBody367_194 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody367_193 sourceBody367_0

def sourceBody367_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_194 sourceBody367_4

def sourceBody367_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_195 sourceBody367_0

def sourceBody367_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_23 sourceBody367_196

def sourceBody367_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_170 sourceBody367_197

def sourceBody367_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_168 sourceBody367_198

def sourceBody367_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_17 sourceBody367_199

def sourceBody367_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_167 sourceBody367_200

def sourceBody367_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody367_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 272#64]))

def sourceBody367_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 280#64]))

def sourceBody367_205 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 30)) (some 365) ([16, 28, 14]) (some (16, sourceBody367_26, 367, 31))

def sourceBody367_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_205 sourceBody367_4

def sourceBody367_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_206 sourceBody367_0

def sourceBody367_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_204 sourceBody367_207

def sourceBody367_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_203 sourceBody367_208

def sourceBody367_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_209

def sourceBody367_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_210 sourceBody367_37

def sourceBody367_212 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody367_211 sourceBody367_0

def sourceBody367_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_212 sourceBody367_4

def sourceBody367_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_213 sourceBody367_0

def sourceBody367_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_23 sourceBody367_214

def sourceBody367_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_170 sourceBody367_215

def sourceBody367_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_202 sourceBody367_216

def sourceBody367_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_17 sourceBody367_217

def sourceBody367_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_201 sourceBody367_218

def sourceBody367_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody367_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64]))

def sourceBody367_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody367_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody367_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody367_225 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 32)) (some 357) ([16, 28, 14, 26, 20]) (some (16, sourceBody367_26, 367, 33))

def sourceBody367_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_225 sourceBody367_4

def sourceBody367_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_226 sourceBody367_0

def sourceBody367_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_224 sourceBody367_227

def sourceBody367_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_223 sourceBody367_228

def sourceBody367_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_222 sourceBody367_229

def sourceBody367_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_221 sourceBody367_230

def sourceBody367_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_231

def sourceBody367_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_232 sourceBody367_37

def sourceBody367_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64]))

def sourceBody367_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody367_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody367_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 320#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody367_238 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 34)) (some 357) ([16, 28, 14, 26, 20]) (some (16, sourceBody367_26, 367, 35))

def sourceBody367_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_238 sourceBody367_4

def sourceBody367_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_239 sourceBody367_0

def sourceBody367_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_237 sourceBody367_240

def sourceBody367_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_236 sourceBody367_241

def sourceBody367_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_235 sourceBody367_242

def sourceBody367_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_234 sourceBody367_243

def sourceBody367_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_244

def sourceBody367_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_233 sourceBody367_245

def sourceBody367_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_246 sourceBody367_37

def sourceBody367_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64]))

def sourceBody367_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody367_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody367_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 352#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody367_252 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 36)) (some 357) ([16, 28, 14, 26, 20]) (some (16, sourceBody367_26, 367, 37))

def sourceBody367_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_252 sourceBody367_4

def sourceBody367_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_253 sourceBody367_0

def sourceBody367_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_251 sourceBody367_254

def sourceBody367_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_250 sourceBody367_255

def sourceBody367_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_249 sourceBody367_256

def sourceBody367_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_248 sourceBody367_257

def sourceBody367_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_258

def sourceBody367_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_247 sourceBody367_259

def sourceBody367_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_260 sourceBody367_37

def sourceBody367_262 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody367_261 sourceBody367_0

def sourceBody367_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_262 sourceBody367_4

def sourceBody367_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_263 sourceBody367_0

def sourceBody367_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_23 sourceBody367_264

def sourceBody367_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_170 sourceBody367_265

def sourceBody367_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_18 sourceBody367_266

def sourceBody367_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_220 sourceBody367_267

def sourceBody367_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_219 sourceBody367_268

def sourceBody367_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody367_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody367_272 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 38)) (some 177) ([16, 28]) (some (16, sourceBody367_26, 367, 39))

def sourceBody367_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_272 sourceBody367_4

def sourceBody367_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_273 sourceBody367_0

def sourceBody367_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_271 sourceBody367_274

def sourceBody367_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_275

def sourceBody367_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_276 sourceBody367_37

def sourceBody367_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody367_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 28 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody367_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_279 sourceBody367_0

def sourceBody367_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_278 sourceBody367_280

def sourceBody367_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_24 sourceBody367_281

def sourceBody367_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_277 sourceBody367_282

def sourceBody367_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody367_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_284 sourceBody367_281

def sourceBody367_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_283 sourceBody367_285

def sourceBody367_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody367_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_287 sourceBody367_35

def sourceBody367_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_288

def sourceBody367_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_286 sourceBody367_289

def sourceBody367_291 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody367_290 sourceBody367_0

def sourceBody367_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_291 sourceBody367_4

def sourceBody367_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_292 sourceBody367_0

def sourceBody367_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_23 sourceBody367_293

def sourceBody367_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_170 sourceBody367_294

def sourceBody367_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_270 sourceBody367_295

def sourceBody367_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_220 sourceBody367_296

def sourceBody367_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_269 sourceBody367_297

def sourceBody367_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 18])

def sourceBody367_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody367_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody367_302 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 40)) (some 180) ([14]) (some (14, sourceBody367_301, 367, 41))

def sourceBody367_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_302 sourceBody367_4

def sourceBody367_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_303 sourceBody367_0

def sourceBody367_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_300 sourceBody367_304

def sourceBody367_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 28])

def sourceBody367_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody367_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 16)

def sourceBody367_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody367_310 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.ls PUnit.unit))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody367_0, 367, 42)) (some 178) ([20, 32]) (some (20, sourceBody367_309, 367, 43))

def sourceBody367_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_310 sourceBody367_4

def sourceBody367_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_311 sourceBody367_0

def sourceBody367_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_308 sourceBody367_312

def sourceBody367_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_307 sourceBody367_313

def sourceBody367_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_314

def sourceBody367_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_315

def sourceBody367_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody367_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody367_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody367_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody367_321 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 32) sourceBody367_319 sourceBody367_320

def sourceBody367_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_321 sourceBody367_4

def sourceBody367_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody367_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody367_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 26)

def sourceBody367_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_325 sourceBody367_0

def sourceBody367_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_326 sourceBody367_0

def sourceBody367_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_324 sourceBody367_327

def sourceBody367_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_328

def sourceBody367_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody367_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 20 (Flapjack.WordLangAddr.addr 26 0#64))

def sourceBody367_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_331 sourceBody367_0

def sourceBody367_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_317 sourceBody367_332

def sourceBody367_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_330 sourceBody367_333

def sourceBody367_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_329 sourceBody367_334

def sourceBody367_336 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody367_335 sourceBody367_0

def sourceBody367_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_336 sourceBody367_4

def sourceBody367_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_337 sourceBody367_0

def sourceBody367_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_323 sourceBody367_338

def sourceBody367_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_322 sourceBody367_339

def sourceBody367_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_318 sourceBody367_340

def sourceBody367_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_317 sourceBody367_341

def sourceBody367_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_316 sourceBody367_342

def sourceBody367_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 14])

def sourceBody367_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26, 20]

def sourceBody367_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_345 sourceBody367_0

def sourceBody367_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_344 sourceBody367_346

def sourceBody367_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_330 sourceBody367_347

def sourceBody367_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_343 sourceBody367_348

def sourceBody367_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_306 sourceBody367_349

def sourceBody367_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_350

def sourceBody367_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_305 sourceBody367_351

def sourceBody367_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_352

def sourceBody367_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_353

def sourceBody367_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_299 sourceBody367_354

def sourceBody367_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_355

def sourceBody367_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_298 sourceBody367_356

def sourceBody367_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_357

def sourceBody367_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_358

def sourceBody367_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_16 sourceBody367_359

def sourceBody367_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_360

def sourceBody367_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_15 sourceBody367_361

def sourceBody367_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_362

def sourceBody367_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_14 sourceBody367_363

def sourceBody367_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_364

def sourceBody367_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_13 sourceBody367_365

def sourceBody367_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_366

def sourceBody367_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_367

def sourceBody367_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_7 sourceBody367_368

def sourceBody367_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_369

def sourceBody367_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody367_0 sourceBody367_370

def source367 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (367, 4, sourceBody367_371)
end InitECandidate.Proofs.WordStages
