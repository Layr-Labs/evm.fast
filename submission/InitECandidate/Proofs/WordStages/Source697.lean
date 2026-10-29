import InitECandidate.Proofs.WordStages.Source681
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody697_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody697_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody697_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody697_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody697_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody697_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 42)

def sourceBody697_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody697_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 36)

def sourceBody697_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 24)

def sourceBody697_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody697_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody697_0, 697, 2)) (some 102) ([8, 32, 20, 46]) (some (8, sourceBody697_9, 697, 3))

def sourceBody697_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody697_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_10 sourceBody697_11

def sourceBody697_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_12 sourceBody697_0

def sourceBody697_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_8 sourceBody697_13

def sourceBody697_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_7 sourceBody697_14

def sourceBody697_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_6 sourceBody697_15

def sourceBody697_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_5 sourceBody697_16

def sourceBody697_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 50)

def sourceBody697_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody697_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody697_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody697_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 20) sourceBody697_20 sourceBody697_21

def sourceBody697_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_22 sourceBody697_11

def sourceBody697_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 32)

def sourceBody697_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 4)

def sourceBody697_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody697_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody697_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody697_0, 697, 4)) (some 78) ([32, 20]) (some (32, sourceBody697_27, 697, 5))

def sourceBody697_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_28 sourceBody697_11

def sourceBody697_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_29 sourceBody697_0

def sourceBody697_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_26 sourceBody697_30

def sourceBody697_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_25 sourceBody697_31

def sourceBody697_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_32

def sourceBody697_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_33

def sourceBody697_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody697_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody697_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_36 sourceBody697_0

def sourceBody697_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_35 sourceBody697_37

def sourceBody697_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_34 sourceBody697_38

def sourceBody697_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.imm 0#64) sourceBody697_39 sourceBody697_0

def sourceBody697_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_40 sourceBody697_11

def sourceBody697_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_41 sourceBody697_0

def sourceBody697_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_24 sourceBody697_42

def sourceBody697_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_23 sourceBody697_43

def sourceBody697_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_19 sourceBody697_44

def sourceBody697_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_18 sourceBody697_45

def sourceBody697_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 42)

def sourceBody697_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 12)

def sourceBody697_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 36)

def sourceBody697_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 24)

def sourceBody697_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody697_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 32, 20, 46]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody697_0, 697, 6)) (some 664) ([16, 40, 28, 54]) (some (16, sourceBody697_51, 697, 7))

def sourceBody697_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_52 sourceBody697_11

def sourceBody697_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_53 sourceBody697_0

def sourceBody697_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_50 sourceBody697_54

def sourceBody697_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_49 sourceBody697_55

def sourceBody697_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_48 sourceBody697_56

def sourceBody697_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_47 sourceBody697_57

def sourceBody697_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody697_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody697_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody697_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody697_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody697_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody697_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody697_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody697_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody697_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 40)

def sourceBody697_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody697_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 54)

def sourceBody697_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody697_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def sourceBody697_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody697_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 46)

def sourceBody697_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody697_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 40, 28, 54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody697_0, 697, 8)) (some 661) ([14, 38, 26, 52, 10, 34, 22, 48]) (some (14, sourceBody697_75, 697, 9))

def sourceBody697_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_76 sourceBody697_11

def sourceBody697_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_77 sourceBody697_0

def sourceBody697_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_74 sourceBody697_78

def sourceBody697_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_73 sourceBody697_79

def sourceBody697_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_72 sourceBody697_80

def sourceBody697_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_71 sourceBody697_81

def sourceBody697_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_70 sourceBody697_82

def sourceBody697_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_69 sourceBody697_83

def sourceBody697_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_68 sourceBody697_84

def sourceBody697_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_67 sourceBody697_85

def sourceBody697_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody697_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody697_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody697_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 44)

def sourceBody697_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 30, 18, 44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody697_0, 697, 10)) (some 661) ([14, 38, 26, 52, 10, 34, 22, 48]) (some (14, sourceBody697_75, 697, 11))

def sourceBody697_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_91 sourceBody697_11

def sourceBody697_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_92 sourceBody697_0

def sourceBody697_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_74 sourceBody697_93

def sourceBody697_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_73 sourceBody697_94

def sourceBody697_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_72 sourceBody697_95

def sourceBody697_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_71 sourceBody697_96

def sourceBody697_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_90 sourceBody697_97

def sourceBody697_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_89 sourceBody697_98

def sourceBody697_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_88 sourceBody697_99

def sourceBody697_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_87 sourceBody697_100

def sourceBody697_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_86 sourceBody697_101

def sourceBody697_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 40, 28, 54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody697_0, 697, 12)) (some 663) ([14, 38, 26, 52]) (some (14, sourceBody697_75, 697, 13))

def sourceBody697_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_103 sourceBody697_11

def sourceBody697_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_104 sourceBody697_0

def sourceBody697_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_70 sourceBody697_105

def sourceBody697_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_69 sourceBody697_106

def sourceBody697_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_68 sourceBody697_107

def sourceBody697_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_67 sourceBody697_108

def sourceBody697_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_102 sourceBody697_109

def sourceBody697_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 30, 18, 44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody697_0, 697, 14)) (some 663) ([14, 38, 26, 52]) (some (14, sourceBody697_75, 697, 15))

def sourceBody697_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_111 sourceBody697_11

def sourceBody697_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_112 sourceBody697_0

def sourceBody697_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_90 sourceBody697_113

def sourceBody697_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_89 sourceBody697_114

def sourceBody697_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_88 sourceBody697_115

def sourceBody697_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_87 sourceBody697_116

def sourceBody697_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_110 sourceBody697_117

def sourceBody697_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 16)

def sourceBody697_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 40)

def sourceBody697_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def sourceBody697_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 54)

def sourceBody697_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody697_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody697_125 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody697_0, 697, 16)) (some 147) ([38, 26, 52, 10, 34]) (some (38, sourceBody697_124, 697, 17))

def sourceBody697_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_125 sourceBody697_11

def sourceBody697_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_126 sourceBody697_0

def sourceBody697_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_123 sourceBody697_127

def sourceBody697_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_122 sourceBody697_128

def sourceBody697_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_121 sourceBody697_129

def sourceBody697_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_120 sourceBody697_130

def sourceBody697_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_119 sourceBody697_131

def sourceBody697_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_132

def sourceBody697_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_133

def sourceBody697_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_118 sourceBody697_134

def sourceBody697_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 6)

def sourceBody697_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody697_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 18)

def sourceBody697_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 44)

def sourceBody697_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody697_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody697_0, 697, 18)) (some 147) ([38, 26, 52, 10, 34]) (some (38, sourceBody697_124, 697, 19))

def sourceBody697_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_141 sourceBody697_11

def sourceBody697_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_142 sourceBody697_0

def sourceBody697_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_140 sourceBody697_143

def sourceBody697_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_139 sourceBody697_144

def sourceBody697_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_138 sourceBody697_145

def sourceBody697_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_137 sourceBody697_146

def sourceBody697_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_136 sourceBody697_147

def sourceBody697_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_148

def sourceBody697_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_149

def sourceBody697_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_135 sourceBody697_150

def sourceBody697_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody697_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody697_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_153 sourceBody697_0

def sourceBody697_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_152 sourceBody697_154

def sourceBody697_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_151 sourceBody697_155

def sourceBody697_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_66 sourceBody697_156

def sourceBody697_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_157

def sourceBody697_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_65 sourceBody697_158

def sourceBody697_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_159

def sourceBody697_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_64 sourceBody697_160

def sourceBody697_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_161

def sourceBody697_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_63 sourceBody697_162

def sourceBody697_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_163

def sourceBody697_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_62 sourceBody697_164

def sourceBody697_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_165

def sourceBody697_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_61 sourceBody697_166

def sourceBody697_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_167

def sourceBody697_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_60 sourceBody697_168

def sourceBody697_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_169

def sourceBody697_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_59 sourceBody697_170

def sourceBody697_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_171

def sourceBody697_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_58 sourceBody697_172

def sourceBody697_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_173

def sourceBody697_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_174

def sourceBody697_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_175

def sourceBody697_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_176

def sourceBody697_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_177

def sourceBody697_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_178

def sourceBody697_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_179

def sourceBody697_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_180

def sourceBody697_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_46 sourceBody697_181

def sourceBody697_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_17 sourceBody697_182

def sourceBody697_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_183

def sourceBody697_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_184

def sourceBody697_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_4 sourceBody697_185

def sourceBody697_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_186

def sourceBody697_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_3 sourceBody697_187

def sourceBody697_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_188

def sourceBody697_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_2 sourceBody697_189

def sourceBody697_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_190

def sourceBody697_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_1 sourceBody697_191

def sourceBody697_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody697_0 sourceBody697_192

def source697 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (697, 3, sourceBody697_193)
end InitECandidate.Proofs.WordStages
