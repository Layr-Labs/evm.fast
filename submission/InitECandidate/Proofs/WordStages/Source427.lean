import InitECandidate.Proofs.WordStages.Source411
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody427_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody427_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody427_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody427_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody427_0, 427, 2)) (some 407) ([16]) (some (16, sourceBody427_2, 427, 3))

def sourceBody427_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody427_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_3 sourceBody427_4

def sourceBody427_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_5 sourceBody427_0

def sourceBody427_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_1 sourceBody427_6

def sourceBody427_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody427_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody427_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody427_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody427_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody427_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody427_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 10)

def sourceBody427_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody427_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody427_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody427_0, 427, 4)) (some 106) ([30, 24, 38, 20, 34, 26, 42, 14]) (some (30, sourceBody427_16, 427, 5))

def sourceBody427_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_17 sourceBody427_4

def sourceBody427_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_18 sourceBody427_0

def sourceBody427_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_15 sourceBody427_19

def sourceBody427_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_14 sourceBody427_20

def sourceBody427_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_13 sourceBody427_21

def sourceBody427_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_12 sourceBody427_22

def sourceBody427_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_11 sourceBody427_23

def sourceBody427_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_10 sourceBody427_24

def sourceBody427_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_9 sourceBody427_25

def sourceBody427_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_8 sourceBody427_26

def sourceBody427_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody427_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody427_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody427_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody427_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 38) sourceBody427_30 sourceBody427_31

def sourceBody427_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_32 sourceBody427_4

def sourceBody427_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody427_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody427_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 30)

def sourceBody427_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_36 sourceBody427_0

def sourceBody427_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_37 sourceBody427_0

def sourceBody427_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_35 sourceBody427_38

def sourceBody427_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_39

def sourceBody427_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody427_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_41 sourceBody427_16

def sourceBody427_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_40 sourceBody427_42

def sourceBody427_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody427_43 sourceBody427_0

def sourceBody427_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_44 sourceBody427_4

def sourceBody427_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_45 sourceBody427_0

def sourceBody427_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_34 sourceBody427_46

def sourceBody427_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_33 sourceBody427_47

def sourceBody427_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_29 sourceBody427_48

def sourceBody427_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_28 sourceBody427_49

def sourceBody427_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 40)

def sourceBody427_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody427_0, 427, 6)) (some 395) ([30]) (some (30, sourceBody427_16, 427, 7))

def sourceBody427_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_52 sourceBody427_4

def sourceBody427_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_53 sourceBody427_0

def sourceBody427_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_51 sourceBody427_54

def sourceBody427_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_50 sourceBody427_55

def sourceBody427_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody427_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody427_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody427_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody427_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody427_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody427_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def sourceBody427_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody427_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody427_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 24, 38, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody427_0, 427, 8)) (some 117) ([34, 26, 42, 14, 28, 22, 36, 18]) (some (34, sourceBody427_65, 427, 9))

def sourceBody427_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_66 sourceBody427_4

def sourceBody427_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_67 sourceBody427_0

def sourceBody427_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_64 sourceBody427_68

def sourceBody427_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_63 sourceBody427_69

def sourceBody427_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_62 sourceBody427_70

def sourceBody427_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_61 sourceBody427_71

def sourceBody427_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_60 sourceBody427_72

def sourceBody427_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_59 sourceBody427_73

def sourceBody427_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_58 sourceBody427_74

def sourceBody427_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_57 sourceBody427_75

def sourceBody427_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody427_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody427_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 24)

def sourceBody427_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 38)

def sourceBody427_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody427_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody427_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 34) 22

def sourceBody427_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_83 sourceBody427_0

def sourceBody427_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_82 sourceBody427_84

def sourceBody427_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 42)

def sourceBody427_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 8#64])
  22

def sourceBody427_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_87 sourceBody427_0

def sourceBody427_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_86 sourceBody427_88

def sourceBody427_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody427_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 16#64])
  22

def sourceBody427_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_91 sourceBody427_0

def sourceBody427_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_90 sourceBody427_92

def sourceBody427_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody427_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 24#64])
  22

def sourceBody427_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_95 sourceBody427_0

def sourceBody427_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_94 sourceBody427_96

def sourceBody427_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_97 sourceBody427_0

def sourceBody427_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_93 sourceBody427_98

def sourceBody427_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_89 sourceBody427_99

def sourceBody427_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_85 sourceBody427_100

def sourceBody427_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_81 sourceBody427_101

def sourceBody427_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_102

def sourceBody427_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_80 sourceBody427_103

def sourceBody427_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_104

def sourceBody427_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_79 sourceBody427_105

def sourceBody427_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_106

def sourceBody427_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_78 sourceBody427_107

def sourceBody427_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_108

def sourceBody427_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_77 sourceBody427_109

def sourceBody427_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_110

def sourceBody427_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody427_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody427_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody427_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody427_0, 427, 10)) (some 423) ([26, 42]) (some (26, sourceBody427_114, 427, 11))

def sourceBody427_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_115 sourceBody427_4

def sourceBody427_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_116 sourceBody427_0

def sourceBody427_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_113 sourceBody427_117

def sourceBody427_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_112 sourceBody427_118

def sourceBody427_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_119

def sourceBody427_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_120

def sourceBody427_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_111 sourceBody427_121

def sourceBody427_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody427_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody427_0, 427, 12)) (some 407) ([26]) (some (26, sourceBody427_114, 427, 13))

def sourceBody427_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_124 sourceBody427_4

def sourceBody427_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_125 sourceBody427_0

def sourceBody427_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_123 sourceBody427_126

def sourceBody427_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody427_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody427_0, 427, 14)) (some 395) ([26]) (some (26, sourceBody427_114, 427, 15))

def sourceBody427_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_129 sourceBody427_4

def sourceBody427_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_130 sourceBody427_0

def sourceBody427_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_128 sourceBody427_131

def sourceBody427_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody427_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody427_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody427_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody427_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody427_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody427_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody427_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody427_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 24, 38, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody427_0, 427, 16)) (some 116) ([26, 42, 14, 28, 22, 36, 18, 32]) (some (26, sourceBody427_114, 427, 17))

def sourceBody427_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_141 sourceBody427_4

def sourceBody427_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_142 sourceBody427_0

def sourceBody427_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_140 sourceBody427_143

def sourceBody427_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_139 sourceBody427_144

def sourceBody427_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_138 sourceBody427_145

def sourceBody427_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_137 sourceBody427_146

def sourceBody427_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_136 sourceBody427_147

def sourceBody427_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_135 sourceBody427_148

def sourceBody427_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_134 sourceBody427_149

def sourceBody427_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_133 sourceBody427_150

def sourceBody427_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_132 sourceBody427_151

def sourceBody427_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody427_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 30)

def sourceBody427_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody427_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 38)

def sourceBody427_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody427_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 42)

def sourceBody427_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 36

def sourceBody427_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_159 sourceBody427_0

def sourceBody427_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_158 sourceBody427_160

def sourceBody427_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 14)

def sourceBody427_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 8#64])
  36

def sourceBody427_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_163 sourceBody427_0

def sourceBody427_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_162 sourceBody427_164

def sourceBody427_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 28)

def sourceBody427_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 16#64])
  36

def sourceBody427_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_167 sourceBody427_0

def sourceBody427_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_166 sourceBody427_168

def sourceBody427_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody427_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 24#64])
  36

def sourceBody427_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_171 sourceBody427_0

def sourceBody427_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_170 sourceBody427_172

def sourceBody427_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_173 sourceBody427_0

def sourceBody427_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_169 sourceBody427_174

def sourceBody427_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_165 sourceBody427_175

def sourceBody427_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_161 sourceBody427_176

def sourceBody427_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_157 sourceBody427_177

def sourceBody427_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_178

def sourceBody427_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_156 sourceBody427_179

def sourceBody427_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_180

def sourceBody427_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_155 sourceBody427_181

def sourceBody427_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_182

def sourceBody427_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_154 sourceBody427_183

def sourceBody427_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_184

def sourceBody427_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_153 sourceBody427_185

def sourceBody427_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_186

def sourceBody427_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_152 sourceBody427_187

def sourceBody427_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def sourceBody427_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 34)

def sourceBody427_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody427_192 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody427_0, 427, 18)) (some 423) ([42, 14]) (some (42, sourceBody427_191, 427, 19))

def sourceBody427_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_192 sourceBody427_4

def sourceBody427_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_193 sourceBody427_0

def sourceBody427_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_190 sourceBody427_194

def sourceBody427_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_189 sourceBody427_195

def sourceBody427_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_196

def sourceBody427_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_197

def sourceBody427_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_188 sourceBody427_198

def sourceBody427_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody427_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody427_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_201 sourceBody427_0

def sourceBody427_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_200 sourceBody427_202

def sourceBody427_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_199 sourceBody427_203

def sourceBody427_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_127 sourceBody427_204

def sourceBody427_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_205

def sourceBody427_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_206

def sourceBody427_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_122 sourceBody427_207

def sourceBody427_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_76 sourceBody427_208

def sourceBody427_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_209

def sourceBody427_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_210

def sourceBody427_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_211

def sourceBody427_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_212

def sourceBody427_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_213

def sourceBody427_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_214

def sourceBody427_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_215

def sourceBody427_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_216

def sourceBody427_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_56 sourceBody427_217

def sourceBody427_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_27 sourceBody427_218

def sourceBody427_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_219

def sourceBody427_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_220

def sourceBody427_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_7 sourceBody427_221

def sourceBody427_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_222

def sourceBody427_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody427_0 sourceBody427_223

def source427 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (427, 7, sourceBody427_224)
end InitECandidate.Proofs.WordStages
