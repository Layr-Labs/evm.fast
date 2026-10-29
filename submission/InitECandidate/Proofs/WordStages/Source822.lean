import InitECandidate.Proofs.WordStages.Source806
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody822_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody822_1 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody822_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody822_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody822_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody822_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody822_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody822_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 14) sourceBody822_5 sourceBody822_6

def sourceBody822_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody822_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_7 sourceBody822_8

def sourceBody822_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody822_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody822_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def sourceBody822_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_12 sourceBody822_0

def sourceBody822_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_13 sourceBody822_0

def sourceBody822_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_11 sourceBody822_14

def sourceBody822_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_15

def sourceBody822_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody822_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody822_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_17 sourceBody822_18

def sourceBody822_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_16 sourceBody822_19

def sourceBody822_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody822_20 sourceBody822_0

def sourceBody822_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_21 sourceBody822_8

def sourceBody822_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_22 sourceBody822_0

def sourceBody822_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_10 sourceBody822_23

def sourceBody822_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_9 sourceBody822_24

def sourceBody822_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_4 sourceBody822_25

def sourceBody822_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_3 sourceBody822_26

def sourceBody822_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 26)

def sourceBody822_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 160#64)

def sourceBody822_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody822_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 22]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody822_0, 822, 2)) (some 94) ([14, 30]) (some (14, sourceBody822_30, 822, 3))

def sourceBody822_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_31 sourceBody822_8

def sourceBody822_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_32 sourceBody822_0

def sourceBody822_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_29 sourceBody822_33

def sourceBody822_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_28 sourceBody822_34

def sourceBody822_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody822_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody822_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody822_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 4) sourceBody822_37 sourceBody822_38

def sourceBody822_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_39 sourceBody822_8

def sourceBody822_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody822_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody822_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 14)

def sourceBody822_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_43 sourceBody822_0

def sourceBody822_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_44 sourceBody822_0

def sourceBody822_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_42 sourceBody822_45

def sourceBody822_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_46

def sourceBody822_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody822_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_48 sourceBody822_30

def sourceBody822_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_47 sourceBody822_49

def sourceBody822_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody822_50 sourceBody822_0

def sourceBody822_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_51 sourceBody822_8

def sourceBody822_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_52 sourceBody822_0

def sourceBody822_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_41 sourceBody822_53

def sourceBody822_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_40 sourceBody822_54

def sourceBody822_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_36 sourceBody822_55

def sourceBody822_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_10 sourceBody822_56

def sourceBody822_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody822_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 14)

def sourceBody822_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody822_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody822_0, 822, 4)) (some 819) ([4]) (some (4, sourceBody822_60, 822, 5))

def sourceBody822_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_61 sourceBody822_8

def sourceBody822_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_62 sourceBody822_0

def sourceBody822_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_59 sourceBody822_63

def sourceBody822_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody822_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 12000#64)

def sourceBody822_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 8 8 12 28))

def sourceBody822_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody822_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 30)

def sourceBody822_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 32 32 24 16))

def sourceBody822_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody822_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1000#64)

def sourceBody822_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody822_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([4, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody822_0, 822, 6)) (some 94) ([2, 18]) (some (12, sourceBody822_73, 822, 7))

def sourceBody822_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_74 sourceBody822_8

def sourceBody822_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_75 sourceBody822_0

def sourceBody822_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_72 sourceBody822_76

def sourceBody822_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_71 sourceBody822_77

def sourceBody822_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_70 sourceBody822_78

def sourceBody822_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_69 sourceBody822_79

def sourceBody822_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_68 sourceBody822_80

def sourceBody822_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_67 sourceBody822_81

def sourceBody822_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_66 sourceBody822_82

def sourceBody822_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_65 sourceBody822_83

def sourceBody822_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody822_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody822_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody822_0, 822, 8)) (some 470) ([28]) (some (28, sourceBody822_86, 822, 9))

def sourceBody822_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_87 sourceBody822_8

def sourceBody822_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_88 sourceBody822_0

def sourceBody822_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_85 sourceBody822_89

def sourceBody822_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_90

def sourceBody822_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_91

def sourceBody822_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody822_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody822_0, 822, 10)) (some 68) ([28]) (some (28, sourceBody822_86, 822, 11))

def sourceBody822_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_94 sourceBody822_8

def sourceBody822_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_95 sourceBody822_0

def sourceBody822_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_93 sourceBody822_96

def sourceBody822_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody822_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody822_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody822_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody822_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody822_0, 822, 12)) (some 811) ([8, 24, 16]) (some (8, sourceBody822_101, 822, 13))

def sourceBody822_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_102 sourceBody822_8

def sourceBody822_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_103 sourceBody822_0

def sourceBody822_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_100 sourceBody822_104

def sourceBody822_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_99 sourceBody822_105

def sourceBody822_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_98 sourceBody822_106

def sourceBody822_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody822_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody822_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody822_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody822_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 16) sourceBody822_110 sourceBody822_111

def sourceBody822_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_112 sourceBody822_8

def sourceBody822_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody822_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody822_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody822_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_116 sourceBody822_0

def sourceBody822_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_117 sourceBody822_0

def sourceBody822_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_115 sourceBody822_118

def sourceBody822_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_119

def sourceBody822_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody822_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_121 sourceBody822_101

def sourceBody822_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_120 sourceBody822_122

def sourceBody822_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody822_123 sourceBody822_0

def sourceBody822_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_124 sourceBody822_8

def sourceBody822_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_125 sourceBody822_0

def sourceBody822_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_114 sourceBody822_126

def sourceBody822_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_113 sourceBody822_127

def sourceBody822_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_109 sourceBody822_128

def sourceBody822_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_108 sourceBody822_129

def sourceBody822_131 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody822_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody822_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody822_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 16

def sourceBody822_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_134 sourceBody822_0

def sourceBody822_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_133 sourceBody822_135

def sourceBody822_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_136 sourceBody822_0

def sourceBody822_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_132 sourceBody822_137

def sourceBody822_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_138

def sourceBody822_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_131 sourceBody822_139

def sourceBody822_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_140

def sourceBody822_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_130 sourceBody822_141

def sourceBody822_143 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody822_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody822_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_144 sourceBody822_137

def sourceBody822_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_145

def sourceBody822_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_143 sourceBody822_146

def sourceBody822_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_147

def sourceBody822_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_142 sourceBody822_148

def sourceBody822_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody822_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody822_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_151 sourceBody822_0

def sourceBody822_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_150 sourceBody822_152

def sourceBody822_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_149 sourceBody822_153

def sourceBody822_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_107 sourceBody822_154

def sourceBody822_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_155

def sourceBody822_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_156

def sourceBody822_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_97 sourceBody822_157

def sourceBody822_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_158

def sourceBody822_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_159

def sourceBody822_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_92 sourceBody822_160

def sourceBody822_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_84 sourceBody822_161

def sourceBody822_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_162

def sourceBody822_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_163

def sourceBody822_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_164

def sourceBody822_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_165

def sourceBody822_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_64 sourceBody822_166

def sourceBody822_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_167

def sourceBody822_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_168

def sourceBody822_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_58 sourceBody822_169

def sourceBody822_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_170

def sourceBody822_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_57 sourceBody822_171

def sourceBody822_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_35 sourceBody822_172

def sourceBody822_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_173

def sourceBody822_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_174

def sourceBody822_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_175

def sourceBody822_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_176

def sourceBody822_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_27 sourceBody822_177

def sourceBody822_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_2 sourceBody822_178

def sourceBody822_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_179

def sourceBody822_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_1 sourceBody822_180

def sourceBody822_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody822_0 sourceBody822_181

def source822 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (822, 1, sourceBody822_182)
end InitECandidate.Proofs.WordStages
