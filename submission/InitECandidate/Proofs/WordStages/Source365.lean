import InitECandidate.Proofs.WordStages.Source349
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody365_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody365_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody365_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody365_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody365_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody365_0, 365, 2)) (some 364) ([26, 18]) (some (26, sourceBody365_3, 365, 3))

def sourceBody365_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody365_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_4 sourceBody365_5

def sourceBody365_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_6 sourceBody365_0

def sourceBody365_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_2 sourceBody365_7

def sourceBody365_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_1 sourceBody365_8

def sourceBody365_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody365_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody365_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody365_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody365_0, 365, 4)) (some 178) ([18, 32]) (some (18, sourceBody365_12, 365, 5))

def sourceBody365_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_13 sourceBody365_5

def sourceBody365_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_14 sourceBody365_0

def sourceBody365_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_11 sourceBody365_15

def sourceBody365_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_10 sourceBody365_16

def sourceBody365_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 26])

def sourceBody365_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody365_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 32)

def sourceBody365_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody365_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody365_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody365_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.WordRegImm.reg 16) sourceBody365_22 sourceBody365_23

def sourceBody365_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_24 sourceBody365_5

def sourceBody365_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody365_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 32)

def sourceBody365_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 120#64)

def sourceBody365_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 16 16 10 24))

def sourceBody365_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_29 sourceBody365_0

def sourceBody365_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_28 sourceBody365_30

def sourceBody365_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_27 sourceBody365_31

def sourceBody365_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 16])

def sourceBody365_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 30)

def sourceBody365_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody365_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody365_0, 365, 6)) (some 363) ([28]) (some (28, sourceBody365_35, 365, 7))

def sourceBody365_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_36 sourceBody365_5

def sourceBody365_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_37 sourceBody365_0

def sourceBody365_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_34 sourceBody365_38

def sourceBody365_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 18)

def sourceBody365_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody365_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody365_0, 365, 8)) (some 178) ([28, 20]) (some (28, sourceBody365_35, 365, 9))

def sourceBody365_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_42 sourceBody365_5

def sourceBody365_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_43 sourceBody365_0

def sourceBody365_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_41 sourceBody365_44

def sourceBody365_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_40 sourceBody365_45

def sourceBody365_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 26])

def sourceBody365_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody365_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_48 sourceBody365_0

def sourceBody365_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_49 sourceBody365_0

def sourceBody365_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_47 sourceBody365_50

def sourceBody365_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_0 sourceBody365_51

def sourceBody365_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_46 sourceBody365_52

def sourceBody365_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody365_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 0#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody365_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 0#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody365_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 0#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody365_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody365_0, 365, 10)) (some 357) ([28, 20, 34, 8, 22]) (some (28, sourceBody365_35, 365, 11))

def sourceBody365_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_58 sourceBody365_5

def sourceBody365_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_59 sourceBody365_0

def sourceBody365_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_57 sourceBody365_60

def sourceBody365_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_56 sourceBody365_61

def sourceBody365_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_55 sourceBody365_62

def sourceBody365_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_54 sourceBody365_63

def sourceBody365_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_40 sourceBody365_64

def sourceBody365_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_53 sourceBody365_65

def sourceBody365_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_66 sourceBody365_52

def sourceBody365_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody365_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody365_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody365_0, 365, 12)) (some 176) ([28, 20, 34]) (some (28, sourceBody365_35, 365, 13))

def sourceBody365_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_70 sourceBody365_5

def sourceBody365_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_71 sourceBody365_0

def sourceBody365_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_69 sourceBody365_72

def sourceBody365_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_68 sourceBody365_73

def sourceBody365_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_40 sourceBody365_74

def sourceBody365_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_67 sourceBody365_75

def sourceBody365_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_76 sourceBody365_52

def sourceBody365_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody365_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody365_0, 365, 14)) (some 177) ([28, 20]) (some (28, sourceBody365_35, 365, 15))

def sourceBody365_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_79 sourceBody365_5

def sourceBody365_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_80 sourceBody365_0

def sourceBody365_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_78 sourceBody365_81

def sourceBody365_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_40 sourceBody365_82

def sourceBody365_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_77 sourceBody365_83

def sourceBody365_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_84 sourceBody365_52

def sourceBody365_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody365_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody365_0, 365, 16)) (some 177) ([28, 20]) (some (28, sourceBody365_35, 365, 17))

def sourceBody365_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_87 sourceBody365_5

def sourceBody365_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_88 sourceBody365_0

def sourceBody365_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_86 sourceBody365_89

def sourceBody365_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_40 sourceBody365_90

def sourceBody365_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_85 sourceBody365_91

def sourceBody365_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_92 sourceBody365_52

def sourceBody365_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody365_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody365_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody365_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody365_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody365_0, 365, 18)) (some 357) ([28, 20, 34, 8, 22]) (some (28, sourceBody365_35, 365, 19))

def sourceBody365_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_98 sourceBody365_5

def sourceBody365_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_99 sourceBody365_0

def sourceBody365_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_97 sourceBody365_100

def sourceBody365_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_96 sourceBody365_101

def sourceBody365_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_95 sourceBody365_102

def sourceBody365_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_94 sourceBody365_103

def sourceBody365_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_40 sourceBody365_104

def sourceBody365_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_93 sourceBody365_105

def sourceBody365_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_106 sourceBody365_52

def sourceBody365_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody365_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 88#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody365_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 88#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody365_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 88#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody365_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody365_0, 365, 20)) (some 357) ([28, 20, 34, 8, 22]) (some (28, sourceBody365_35, 365, 21))

def sourceBody365_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_112 sourceBody365_5

def sourceBody365_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_113 sourceBody365_0

def sourceBody365_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_111 sourceBody365_114

def sourceBody365_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_110 sourceBody365_115

def sourceBody365_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_109 sourceBody365_116

def sourceBody365_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_108 sourceBody365_117

def sourceBody365_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_40 sourceBody365_118

def sourceBody365_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_107 sourceBody365_119

def sourceBody365_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_120 sourceBody365_52

def sourceBody365_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody365_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def sourceBody365_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_123 sourceBody365_0

def sourceBody365_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_124 sourceBody365_0

def sourceBody365_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_122 sourceBody365_125

def sourceBody365_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_0 sourceBody365_126

def sourceBody365_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_121 sourceBody365_127

def sourceBody365_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_39 sourceBody365_128

def sourceBody365_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_0 sourceBody365_129

def sourceBody365_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_0 sourceBody365_130

def sourceBody365_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_33 sourceBody365_131

def sourceBody365_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_32 sourceBody365_132

def sourceBody365_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody365_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_133 sourceBody365_134

def sourceBody365_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody365_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody365_135 sourceBody365_136

def sourceBody365_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_137 sourceBody365_5

def sourceBody365_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_138 sourceBody365_0

def sourceBody365_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_26 sourceBody365_139

def sourceBody365_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_25 sourceBody365_140

def sourceBody365_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_21 sourceBody365_141

def sourceBody365_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_20 sourceBody365_142

def sourceBody365_144 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody365_143 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody365_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_144 sourceBody365_5

def sourceBody365_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_5 sourceBody365_145

def sourceBody365_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 2])

def sourceBody365_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody365_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_148 sourceBody365_0

def sourceBody365_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_147 sourceBody365_149

def sourceBody365_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_146 sourceBody365_150

def sourceBody365_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_19 sourceBody365_151

def sourceBody365_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_0 sourceBody365_152

def sourceBody365_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_18 sourceBody365_153

def sourceBody365_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_0 sourceBody365_154

def sourceBody365_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_17 sourceBody365_155

def sourceBody365_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_0 sourceBody365_156

def sourceBody365_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_0 sourceBody365_157

def sourceBody365_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_9 sourceBody365_158

def sourceBody365_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_0 sourceBody365_159

def sourceBody365_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody365_0 sourceBody365_160

def source365 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (365, 4, sourceBody365_161)
end InitECandidate.Proofs.WordStages
