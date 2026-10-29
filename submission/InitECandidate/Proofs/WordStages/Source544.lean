import InitECandidate.Proofs.WordStages.Source528
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody544_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody544_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody544_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody544_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody544_0, 544, 2)) (some 470) ([22]) (some (22, sourceBody544_2, 544, 3))

def sourceBody544_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody544_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_3 sourceBody544_4

def sourceBody544_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_5 sourceBody544_0

def sourceBody544_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_1 sourceBody544_6

def sourceBody544_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_7

def sourceBody544_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_8

def sourceBody544_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody544_0, 544, 4)) (some 540) ([]) (some (22, sourceBody544_2, 544, 5))

def sourceBody544_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_10 sourceBody544_4

def sourceBody544_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_11 sourceBody544_0

def sourceBody544_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 81#64)

def sourceBody544_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody544_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody544_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody544_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 18) sourceBody544_15 sourceBody544_16

def sourceBody544_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_17 sourceBody544_4

def sourceBody544_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody544_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody544_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody544_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 2) sourceBody544_21 sourceBody544_19

def sourceBody544_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_22 sourceBody544_4

def sourceBody544_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody544_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody544_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody544_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody544_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 24) sourceBody544_26 sourceBody544_27

def sourceBody544_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_28 sourceBody544_4

def sourceBody544_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody544_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody544_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody544_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 14) sourceBody544_32 sourceBody544_30

def sourceBody544_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_33 sourceBody544_4

def sourceBody544_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 20])

def sourceBody544_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody544_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 22)

def sourceBody544_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_37 sourceBody544_0

def sourceBody544_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_38 sourceBody544_0

def sourceBody544_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_36 sourceBody544_39

def sourceBody544_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_40

def sourceBody544_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody544_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_42 sourceBody544_2

def sourceBody544_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_41 sourceBody544_43

def sourceBody544_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody544_44 sourceBody544_0

def sourceBody544_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_45 sourceBody544_4

def sourceBody544_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_46 sourceBody544_0

def sourceBody544_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_35 sourceBody544_47

def sourceBody544_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_34 sourceBody544_48

def sourceBody544_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_31 sourceBody544_49

def sourceBody544_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_30 sourceBody544_50

def sourceBody544_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_29 sourceBody544_51

def sourceBody544_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_25 sourceBody544_52

def sourceBody544_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_24 sourceBody544_53

def sourceBody544_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_23 sourceBody544_54

def sourceBody544_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_20 sourceBody544_55

def sourceBody544_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_19 sourceBody544_56

def sourceBody544_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_18 sourceBody544_57

def sourceBody544_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_14 sourceBody544_58

def sourceBody544_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_13 sourceBody544_59

def sourceBody544_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 143#64])

def sourceBody544_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22)
    (Flapjack.WordLangExpHOL.const 4#64))

def sourceBody544_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 15#64])

def sourceBody544_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody544_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody544_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody544_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody544_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 10) sourceBody544_66 sourceBody544_67

def sourceBody544_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_68 sourceBody544_4

def sourceBody544_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody544_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody544_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_71 sourceBody544_0

def sourceBody544_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_72 sourceBody544_0

def sourceBody544_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody544_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_74 sourceBody544_0

def sourceBody544_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_75 sourceBody544_0

def sourceBody544_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_73 sourceBody544_76

def sourceBody544_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody544_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_78 sourceBody544_0

def sourceBody544_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_79 sourceBody544_0

def sourceBody544_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 29#64, Flapjack.WordLangExpHOL.var 4])

def sourceBody544_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_81 sourceBody544_0

def sourceBody544_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_82 sourceBody544_0

def sourceBody544_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_80 sourceBody544_83

def sourceBody544_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody544_77 sourceBody544_84

def sourceBody544_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_85 sourceBody544_4

def sourceBody544_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_86 sourceBody544_0

def sourceBody544_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_70 sourceBody544_87

def sourceBody544_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_69 sourceBody544_88

def sourceBody544_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_65 sourceBody544_89

def sourceBody544_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_64 sourceBody544_90

def sourceBody544_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody544_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 26)

def sourceBody544_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody544_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody544_0, 544, 6)) (some 93) ([16, 10]) (some (16, sourceBody544_94, 544, 7))

def sourceBody544_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_95 sourceBody544_4

def sourceBody544_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_96 sourceBody544_0

def sourceBody544_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_93 sourceBody544_97

def sourceBody544_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_92 sourceBody544_98

def sourceBody544_100 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody544_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody544_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody544_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody544_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def sourceBody544_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_104 sourceBody544_0

def sourceBody544_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_105 sourceBody544_0

def sourceBody544_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_103 sourceBody544_106

def sourceBody544_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_107

def sourceBody544_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody544_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_109 sourceBody544_94

def sourceBody544_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_108 sourceBody544_110

def sourceBody544_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody544_111 sourceBody544_0

def sourceBody544_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_112 sourceBody544_4

def sourceBody544_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_113 sourceBody544_0

def sourceBody544_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_102 sourceBody544_114

def sourceBody544_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_29 sourceBody544_115

def sourceBody544_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_101 sourceBody544_116

def sourceBody544_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_100 sourceBody544_117

def sourceBody544_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody544_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody544_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody544_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody544_0, 544, 8)) (some 538) ([10, 24]) (some (10, sourceBody544_121, 544, 9))

def sourceBody544_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_122 sourceBody544_4

def sourceBody544_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_123 sourceBody544_0

def sourceBody544_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_120 sourceBody544_124

def sourceBody544_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_119 sourceBody544_125

def sourceBody544_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_126

def sourceBody544_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_127

def sourceBody544_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_118 sourceBody544_128

def sourceBody544_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody544_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody544_0, 544, 10)) (some 490) ([10]) (some (10, sourceBody544_121, 544, 11))

def sourceBody544_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_131 sourceBody544_4

def sourceBody544_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_132 sourceBody544_0

def sourceBody544_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_130 sourceBody544_133

def sourceBody544_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_134

def sourceBody544_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_135

def sourceBody544_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_129 sourceBody544_136

def sourceBody544_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody544_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_138 sourceBody544_0

def sourceBody544_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_67 sourceBody544_139

def sourceBody544_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_137 sourceBody544_140

def sourceBody544_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_99 sourceBody544_141

def sourceBody544_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_142

def sourceBody544_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_143

def sourceBody544_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_91 sourceBody544_144

def sourceBody544_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_145

def sourceBody544_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_146

def sourceBody544_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_147

def sourceBody544_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_148

def sourceBody544_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_63 sourceBody544_149

def sourceBody544_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_150

def sourceBody544_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_62 sourceBody544_151

def sourceBody544_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_152

def sourceBody544_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_61 sourceBody544_153

def sourceBody544_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_154

def sourceBody544_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_60 sourceBody544_155

def sourceBody544_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_12 sourceBody544_156

def sourceBody544_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_157

def sourceBody544_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_0 sourceBody544_158

def sourceBody544_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody544_9 sourceBody544_159

def source544 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (544, 1, sourceBody544_160)
end InitECandidate.Proofs.WordStages
