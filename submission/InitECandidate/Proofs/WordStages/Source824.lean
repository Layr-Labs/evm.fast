import InitECandidate.Proofs.WordStages.Source808
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody824_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody824_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody824_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody824_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody824_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody824_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody824_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody824_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 14) sourceBody824_5 sourceBody824_6

def sourceBody824_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody824_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_7 sourceBody824_8

def sourceBody824_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody824_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody824_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def sourceBody824_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_12 sourceBody824_0

def sourceBody824_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_13 sourceBody824_0

def sourceBody824_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_11 sourceBody824_14

def sourceBody824_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_15

def sourceBody824_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody824_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody824_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_17 sourceBody824_18

def sourceBody824_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_16 sourceBody824_19

def sourceBody824_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody824_20 sourceBody824_0

def sourceBody824_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_21 sourceBody824_8

def sourceBody824_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_22 sourceBody824_0

def sourceBody824_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_10 sourceBody824_23

def sourceBody824_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_9 sourceBody824_24

def sourceBody824_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_4 sourceBody824_25

def sourceBody824_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_3 sourceBody824_26

def sourceBody824_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 26)

def sourceBody824_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody824_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody824_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 22]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody824_0, 824, 2)) (some 94) ([14, 30]) (some (14, sourceBody824_30, 824, 3))

def sourceBody824_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_31 sourceBody824_8

def sourceBody824_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_32 sourceBody824_0

def sourceBody824_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_29 sourceBody824_33

def sourceBody824_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_28 sourceBody824_34

def sourceBody824_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody824_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody824_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody824_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 4) sourceBody824_37 sourceBody824_38

def sourceBody824_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_39 sourceBody824_8

def sourceBody824_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody824_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody824_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 14)

def sourceBody824_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_43 sourceBody824_0

def sourceBody824_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_44 sourceBody824_0

def sourceBody824_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_42 sourceBody824_45

def sourceBody824_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_46

def sourceBody824_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody824_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_48 sourceBody824_30

def sourceBody824_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_47 sourceBody824_49

def sourceBody824_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody824_50 sourceBody824_0

def sourceBody824_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_51 sourceBody824_8

def sourceBody824_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_52 sourceBody824_0

def sourceBody824_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_41 sourceBody824_53

def sourceBody824_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_40 sourceBody824_54

def sourceBody824_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_36 sourceBody824_55

def sourceBody824_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_10 sourceBody824_56

def sourceBody824_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody824_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 14)

def sourceBody824_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody824_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody824_0, 824, 4)) (some 820) ([4]) (some (4, sourceBody824_60, 824, 5))

def sourceBody824_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_61 sourceBody824_8

def sourceBody824_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_62 sourceBody824_0

def sourceBody824_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_59 sourceBody824_63

def sourceBody824_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody824_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 22500#64)

def sourceBody824_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 8 8 12 28))

def sourceBody824_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody824_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 30)

def sourceBody824_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 32 32 24 16))

def sourceBody824_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody824_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1000#64)

def sourceBody824_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody824_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([4, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody824_0, 824, 6)) (some 94) ([2, 18]) (some (12, sourceBody824_73, 824, 7))

def sourceBody824_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_74 sourceBody824_8

def sourceBody824_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_75 sourceBody824_0

def sourceBody824_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_72 sourceBody824_76

def sourceBody824_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_71 sourceBody824_77

def sourceBody824_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_70 sourceBody824_78

def sourceBody824_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_69 sourceBody824_79

def sourceBody824_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_68 sourceBody824_80

def sourceBody824_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_67 sourceBody824_81

def sourceBody824_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_66 sourceBody824_82

def sourceBody824_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_65 sourceBody824_83

def sourceBody824_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody824_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody824_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody824_0, 824, 8)) (some 470) ([28]) (some (28, sourceBody824_86, 824, 9))

def sourceBody824_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_87 sourceBody824_8

def sourceBody824_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_88 sourceBody824_0

def sourceBody824_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_85 sourceBody824_89

def sourceBody824_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_90

def sourceBody824_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_91

def sourceBody824_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody824_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody824_0, 824, 10)) (some 68) ([28]) (some (28, sourceBody824_86, 824, 11))

def sourceBody824_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_94 sourceBody824_8

def sourceBody824_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_95 sourceBody824_0

def sourceBody824_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_93 sourceBody824_96

def sourceBody824_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody824_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody824_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody824_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody824_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody824_0, 824, 12)) (some 813) ([8, 24, 16]) (some (8, sourceBody824_101, 824, 13))

def sourceBody824_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_102 sourceBody824_8

def sourceBody824_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_103 sourceBody824_0

def sourceBody824_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_100 sourceBody824_104

def sourceBody824_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_99 sourceBody824_105

def sourceBody824_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_98 sourceBody824_106

def sourceBody824_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody824_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody824_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody824_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody824_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 16) sourceBody824_110 sourceBody824_111

def sourceBody824_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_112 sourceBody824_8

def sourceBody824_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody824_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody824_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody824_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_116 sourceBody824_0

def sourceBody824_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_117 sourceBody824_0

def sourceBody824_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_115 sourceBody824_118

def sourceBody824_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_119

def sourceBody824_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody824_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_121 sourceBody824_101

def sourceBody824_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_120 sourceBody824_122

def sourceBody824_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody824_123 sourceBody824_0

def sourceBody824_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_124 sourceBody824_8

def sourceBody824_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_125 sourceBody824_0

def sourceBody824_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_114 sourceBody824_126

def sourceBody824_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_113 sourceBody824_127

def sourceBody824_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_109 sourceBody824_128

def sourceBody824_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_108 sourceBody824_129

def sourceBody824_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody824_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody824_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody824_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 16

def sourceBody824_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_134 sourceBody824_0

def sourceBody824_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_133 sourceBody824_135

def sourceBody824_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_136 sourceBody824_0

def sourceBody824_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_132 sourceBody824_137

def sourceBody824_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_138

def sourceBody824_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_131 sourceBody824_139

def sourceBody824_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_140

def sourceBody824_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_130 sourceBody824_141

def sourceBody824_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody824_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody824_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_144 sourceBody824_137

def sourceBody824_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_145

def sourceBody824_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_143 sourceBody824_146

def sourceBody824_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_147

def sourceBody824_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_142 sourceBody824_148

def sourceBody824_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody824_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody824_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_151 sourceBody824_0

def sourceBody824_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_150 sourceBody824_152

def sourceBody824_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_149 sourceBody824_153

def sourceBody824_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_107 sourceBody824_154

def sourceBody824_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_155

def sourceBody824_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_156

def sourceBody824_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_97 sourceBody824_157

def sourceBody824_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_158

def sourceBody824_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_159

def sourceBody824_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_92 sourceBody824_160

def sourceBody824_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_84 sourceBody824_161

def sourceBody824_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_162

def sourceBody824_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_163

def sourceBody824_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_164

def sourceBody824_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_165

def sourceBody824_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_64 sourceBody824_166

def sourceBody824_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_167

def sourceBody824_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_168

def sourceBody824_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_58 sourceBody824_169

def sourceBody824_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_170

def sourceBody824_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_57 sourceBody824_171

def sourceBody824_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_35 sourceBody824_172

def sourceBody824_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_173

def sourceBody824_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_174

def sourceBody824_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_175

def sourceBody824_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_176

def sourceBody824_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_27 sourceBody824_177

def sourceBody824_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_2 sourceBody824_178

def sourceBody824_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_179

def sourceBody824_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_1 sourceBody824_180

def sourceBody824_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody824_0 sourceBody824_181

def source824 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (824, 1, sourceBody824_182)
end InitECandidate.Proofs.WordStages
