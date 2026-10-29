import InitECandidate.Proofs.WordStages.Source308
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody324_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody324_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody324_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody324_0, 324, 2)) (some 75) ([]) (some (32, sourceBody324_1, 324, 3))

def sourceBody324_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody324_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_2 sourceBody324_3

def sourceBody324_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_4 sourceBody324_0

def sourceBody324_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody324_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody324_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody324_0, 324, 4)) (some 74) ([6]) (some (6, sourceBody324_7, 324, 5))

def sourceBody324_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_8 sourceBody324_3

def sourceBody324_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_9 sourceBody324_0

def sourceBody324_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_6 sourceBody324_10

def sourceBody324_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody324_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody324_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody324_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 18

def sourceBody324_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_15 sourceBody324_0

def sourceBody324_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_14 sourceBody324_16

def sourceBody324_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_17 sourceBody324_0

def sourceBody324_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_13 sourceBody324_18

def sourceBody324_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_19

def sourceBody324_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_12 sourceBody324_20

def sourceBody324_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_21

def sourceBody324_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody324_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody324_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_24 sourceBody324_18

def sourceBody324_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_25

def sourceBody324_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_23 sourceBody324_26

def sourceBody324_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_27

def sourceBody324_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_22 sourceBody324_28

def sourceBody324_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody324_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_30 sourceBody324_20

def sourceBody324_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_31

def sourceBody324_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_29 sourceBody324_32

def sourceBody324_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def sourceBody324_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody324_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody324_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody324_0, 324, 6)) (some 321) ([28, 18]) (some (28, sourceBody324_36, 324, 7))

def sourceBody324_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_37 sourceBody324_3

def sourceBody324_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_38 sourceBody324_0

def sourceBody324_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_35 sourceBody324_39

def sourceBody324_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_34 sourceBody324_40

def sourceBody324_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_41

def sourceBody324_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_42

def sourceBody324_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_33 sourceBody324_43

def sourceBody324_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 32)

def sourceBody324_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody324_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody324_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody324_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody324_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 36) sourceBody324_48 sourceBody324_49

def sourceBody324_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_50 sourceBody324_3

def sourceBody324_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody324_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody324_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody324_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody324_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody324_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody324_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody324_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody324_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 34) sourceBody324_58 sourceBody324_59

def sourceBody324_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_60 sourceBody324_3

def sourceBody324_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody324_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody324_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody324_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody324_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody324_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 34

def sourceBody324_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_67 sourceBody324_0

def sourceBody324_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_66 sourceBody324_68

def sourceBody324_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_69 sourceBody324_0

def sourceBody324_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_58 sourceBody324_70

def sourceBody324_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_71

def sourceBody324_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_65 sourceBody324_72

def sourceBody324_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_73

def sourceBody324_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody324_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_75 sourceBody324_0

def sourceBody324_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_76 sourceBody324_0

def sourceBody324_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_74 sourceBody324_77

def sourceBody324_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 36)

def sourceBody324_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody324_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody324_0, 324, 8)) (some 323) ([26]) (some (26, sourceBody324_80, 324, 9))

def sourceBody324_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_81 sourceBody324_3

def sourceBody324_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_82 sourceBody324_0

def sourceBody324_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_79 sourceBody324_83

def sourceBody324_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_78 sourceBody324_84

def sourceBody324_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody324_85 sourceBody324_0

def sourceBody324_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_86 sourceBody324_3

def sourceBody324_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_87 sourceBody324_0

def sourceBody324_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_62 sourceBody324_88

def sourceBody324_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_61 sourceBody324_89

def sourceBody324_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_64 sourceBody324_90

def sourceBody324_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_63 sourceBody324_91

def sourceBody324_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody324_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody324_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody324_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody324_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody324_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 34 (Flapjack.WordRegImm.reg 10) sourceBody324_97 sourceBody324_64

def sourceBody324_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_98 sourceBody324_3

def sourceBody324_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody324_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody324_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody324_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 38) sourceBody324_102 sourceBody324_100

def sourceBody324_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_103 sourceBody324_3

def sourceBody324_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody324_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody324_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody324_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody324_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 14) sourceBody324_107 sourceBody324_108

def sourceBody324_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_109 sourceBody324_3

def sourceBody324_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody324_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody324_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody324_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 30) sourceBody324_113 sourceBody324_111

def sourceBody324_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_114 sourceBody324_3

def sourceBody324_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 8])

def sourceBody324_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 32#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody324_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_117 sourceBody324_0

def sourceBody324_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_118 sourceBody324_0

def sourceBody324_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody324_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody324_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_121 sourceBody324_0

def sourceBody324_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_122 sourceBody324_0

def sourceBody324_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_120 sourceBody324_123

def sourceBody324_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_124

def sourceBody324_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_119 sourceBody324_125

def sourceBody324_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 36)

def sourceBody324_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody324_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody324_0, 324, 10)) (some 323) ([16]) (some (16, sourceBody324_128, 324, 11))

def sourceBody324_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_129 sourceBody324_3

def sourceBody324_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_130 sourceBody324_0

def sourceBody324_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_127 sourceBody324_131

def sourceBody324_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_126 sourceBody324_132

def sourceBody324_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody324_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_133 sourceBody324_134

def sourceBody324_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody324_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody324_135 sourceBody324_136

def sourceBody324_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_137 sourceBody324_3

def sourceBody324_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_138 sourceBody324_0

def sourceBody324_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_116 sourceBody324_139

def sourceBody324_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_115 sourceBody324_140

def sourceBody324_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_112 sourceBody324_141

def sourceBody324_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_111 sourceBody324_142

def sourceBody324_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_110 sourceBody324_143

def sourceBody324_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_106 sourceBody324_144

def sourceBody324_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_105 sourceBody324_145

def sourceBody324_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_104 sourceBody324_146

def sourceBody324_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_101 sourceBody324_147

def sourceBody324_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_100 sourceBody324_148

def sourceBody324_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_99 sourceBody324_149

def sourceBody324_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_96 sourceBody324_150

def sourceBody324_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_95 sourceBody324_151

def sourceBody324_153 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody324_152 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody324_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_153 sourceBody324_3

def sourceBody324_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_3 sourceBody324_154

def sourceBody324_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody324_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 34)

def sourceBody324_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 10

def sourceBody324_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_158 sourceBody324_0

def sourceBody324_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_157 sourceBody324_159

def sourceBody324_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_160 sourceBody324_0

def sourceBody324_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_95 sourceBody324_161

def sourceBody324_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_162

def sourceBody324_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_156 sourceBody324_163

def sourceBody324_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_164

def sourceBody324_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_155 sourceBody324_165

def sourceBody324_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_94 sourceBody324_166

def sourceBody324_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_167

def sourceBody324_169 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody324_168 sourceBody324_0

def sourceBody324_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_169 sourceBody324_3

def sourceBody324_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_170 sourceBody324_0

def sourceBody324_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_62 sourceBody324_171

def sourceBody324_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_61 sourceBody324_172

def sourceBody324_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_93 sourceBody324_173

def sourceBody324_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_56 sourceBody324_174

def sourceBody324_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody324_92 sourceBody324_175

def sourceBody324_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_176 sourceBody324_3

def sourceBody324_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_177 sourceBody324_0

def sourceBody324_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_62 sourceBody324_178

def sourceBody324_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_61 sourceBody324_179

def sourceBody324_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_57 sourceBody324_180

def sourceBody324_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_56 sourceBody324_181

def sourceBody324_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody324_184 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 34) sourceBody324_58 sourceBody324_59

def sourceBody324_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_184 sourceBody324_3

def sourceBody324_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody324_187 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody324_0, 324, 12)) (some 74) ([16]) (some (16, sourceBody324_128, 324, 13))

def sourceBody324_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_187 sourceBody324_3

def sourceBody324_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_188 sourceBody324_0

def sourceBody324_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_186 sourceBody324_189

def sourceBody324_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody324_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody324_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_192 sourceBody324_161

def sourceBody324_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_193

def sourceBody324_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_191 sourceBody324_194

def sourceBody324_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_195

def sourceBody324_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody324_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody324_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_198 sourceBody324_161

def sourceBody324_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_199

def sourceBody324_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_197 sourceBody324_200

def sourceBody324_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_201

def sourceBody324_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_196 sourceBody324_202

def sourceBody324_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody324_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_64 sourceBody324_161

def sourceBody324_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_205

def sourceBody324_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_204 sourceBody324_206

def sourceBody324_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_207

def sourceBody324_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_203 sourceBody324_208

def sourceBody324_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 36)

def sourceBody324_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody324_212 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody324_0, 324, 14)) (some 321) ([34, 10]) (some (34, sourceBody324_211, 324, 15))

def sourceBody324_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_212 sourceBody324_3

def sourceBody324_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_213 sourceBody324_0

def sourceBody324_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_210 sourceBody324_214

def sourceBody324_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_95 sourceBody324_215

def sourceBody324_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_216

def sourceBody324_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_217

def sourceBody324_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_209 sourceBody324_218

def sourceBody324_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 26)

def sourceBody324_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_220 sourceBody324_0

def sourceBody324_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_221 sourceBody324_0

def sourceBody324_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_219 sourceBody324_222

def sourceBody324_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_190 sourceBody324_223

def sourceBody324_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_224

def sourceBody324_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_225

def sourceBody324_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody324_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody324_229 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody324_0, 324, 16)) (some 322) ([16, 34]) (some (16, sourceBody324_128, 324, 17))

def sourceBody324_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_229 sourceBody324_3

def sourceBody324_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_230 sourceBody324_0

def sourceBody324_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_228 sourceBody324_231

def sourceBody324_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_227 sourceBody324_232

def sourceBody324_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_233

def sourceBody324_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_234

def sourceBody324_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody324_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_236 sourceBody324_222

def sourceBody324_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_237

def sourceBody324_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_235 sourceBody324_238

def sourceBody324_240 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody324_226 sourceBody324_239

def sourceBody324_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_240 sourceBody324_3

def sourceBody324_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_241 sourceBody324_0

def sourceBody324_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_62 sourceBody324_242

def sourceBody324_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_185 sourceBody324_243

def sourceBody324_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_64 sourceBody324_244

def sourceBody324_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_183 sourceBody324_245

def sourceBody324_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_182 sourceBody324_246

def sourceBody324_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_55 sourceBody324_247

def sourceBody324_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_248

def sourceBody324_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_47 sourceBody324_249

def sourceBody324_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_250

def sourceBody324_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_54 sourceBody324_251

def sourceBody324_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_252

def sourceBody324_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_53 sourceBody324_253

def sourceBody324_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_254

def sourceBody324_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_255 sourceBody324_134

def sourceBody324_257 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody324_256 sourceBody324_136

def sourceBody324_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_257 sourceBody324_3

def sourceBody324_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_258 sourceBody324_0

def sourceBody324_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_52 sourceBody324_259

def sourceBody324_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_51 sourceBody324_260

def sourceBody324_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_47 sourceBody324_261

def sourceBody324_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_46 sourceBody324_262

def sourceBody324_264 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody324_263 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody324_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_264 sourceBody324_3

def sourceBody324_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_3 sourceBody324_265

def sourceBody324_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody324_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody324_269 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody324_0, 324, 18)) (some 76) ([18]) (some (18, sourceBody324_268, 324, 19))

def sourceBody324_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_269 sourceBody324_3

def sourceBody324_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_270 sourceBody324_0

def sourceBody324_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_267 sourceBody324_271

def sourceBody324_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_272

def sourceBody324_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_273

def sourceBody324_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_266 sourceBody324_274

def sourceBody324_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody324_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_276 sourceBody324_0

def sourceBody324_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_13 sourceBody324_277

def sourceBody324_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_275 sourceBody324_278

def sourceBody324_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_45 sourceBody324_279

def sourceBody324_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_280

def sourceBody324_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_44 sourceBody324_281

def sourceBody324_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_11 sourceBody324_282

def sourceBody324_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_283

def sourceBody324_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_284

def sourceBody324_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_5 sourceBody324_285

def sourceBody324_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_286

def sourceBody324_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody324_0 sourceBody324_287

def source324 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (324, 2, sourceBody324_288)
end InitECandidate.Proofs.WordStages
