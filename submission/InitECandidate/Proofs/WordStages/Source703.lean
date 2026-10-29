import InitECandidate.Proofs.WordStages.Source687
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody703_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody703_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
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

def sourceBody703_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody703_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody703_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody703_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody703_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([4, 14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody703_0, 703, 2)) (some 94) ([10, 18]) (some (10, sourceBody703_5, 703, 3))

def sourceBody703_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody703_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_6 sourceBody703_7

def sourceBody703_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_8 sourceBody703_0

def sourceBody703_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_4 sourceBody703_9

def sourceBody703_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_3 sourceBody703_10

def sourceBody703_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody703_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 34000#64)

def sourceBody703_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 12 12 18 2))

def sourceBody703_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 45000#64])

def sourceBody703_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody703_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody703_0, 703, 4)) (some 470) ([8]) (some (18, sourceBody703_16, 703, 5))

def sourceBody703_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_17 sourceBody703_7

def sourceBody703_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_18 sourceBody703_0

def sourceBody703_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_15 sourceBody703_19

def sourceBody703_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_14 sourceBody703_20

def sourceBody703_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_13 sourceBody703_21

def sourceBody703_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_12 sourceBody703_22

def sourceBody703_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_23

def sourceBody703_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_24

def sourceBody703_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody703_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody703_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody703_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody703_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 2) sourceBody703_28 sourceBody703_29

def sourceBody703_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_30 sourceBody703_7

def sourceBody703_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody703_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody703_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody703_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_34 sourceBody703_0

def sourceBody703_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_35 sourceBody703_0

def sourceBody703_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_33 sourceBody703_36

def sourceBody703_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_37

def sourceBody703_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody703_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_39 sourceBody703_5

def sourceBody703_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_38 sourceBody703_40

def sourceBody703_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody703_41 sourceBody703_0

def sourceBody703_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_42 sourceBody703_7

def sourceBody703_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_43 sourceBody703_0

def sourceBody703_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_32 sourceBody703_44

def sourceBody703_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_31 sourceBody703_45

def sourceBody703_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_27 sourceBody703_46

def sourceBody703_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_26 sourceBody703_47

def sourceBody703_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_25 sourceBody703_48

def sourceBody703_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody703_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody703_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody703_0, 703, 6)) (some 700) ([18, 2]) (some (18, sourceBody703_16, 703, 7))

def sourceBody703_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_52 sourceBody703_7

def sourceBody703_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_53 sourceBody703_0

def sourceBody703_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_51 sourceBody703_54

def sourceBody703_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_50 sourceBody703_55

def sourceBody703_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 10)

def sourceBody703_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody703_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody703_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 12) sourceBody703_59 sourceBody703_27

def sourceBody703_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_60 sourceBody703_7

def sourceBody703_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody703_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody703_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 18)

def sourceBody703_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_64 sourceBody703_0

def sourceBody703_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_65 sourceBody703_0

def sourceBody703_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_63 sourceBody703_66

def sourceBody703_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_67

def sourceBody703_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody703_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_69 sourceBody703_16

def sourceBody703_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_68 sourceBody703_70

def sourceBody703_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody703_71 sourceBody703_0

def sourceBody703_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_72 sourceBody703_7

def sourceBody703_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_73 sourceBody703_0

def sourceBody703_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_62 sourceBody703_74

def sourceBody703_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_61 sourceBody703_75

def sourceBody703_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_58 sourceBody703_76

def sourceBody703_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_57 sourceBody703_77

def sourceBody703_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody703_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody703_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody703_0, 703, 8)) (some 68) ([2]) (some (2, sourceBody703_80, 703, 9))

def sourceBody703_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_81 sourceBody703_7

def sourceBody703_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_82 sourceBody703_0

def sourceBody703_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_79 sourceBody703_83

def sourceBody703_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody703_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody703_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody703_0, 703, 10)) (some 78) ([12, 8]) (some (12, sourceBody703_86, 703, 11))

def sourceBody703_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_87 sourceBody703_7

def sourceBody703_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_88 sourceBody703_0

def sourceBody703_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_85 sourceBody703_89

def sourceBody703_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_32 sourceBody703_90

def sourceBody703_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_91

def sourceBody703_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_92

def sourceBody703_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 31#64])

def sourceBody703_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody703_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 2 0#64))

def sourceBody703_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_96 sourceBody703_0

def sourceBody703_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_95 sourceBody703_97

def sourceBody703_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_94 sourceBody703_98

def sourceBody703_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_93 sourceBody703_99

def sourceBody703_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody703_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody703_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 2) 8

def sourceBody703_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_103 sourceBody703_0

def sourceBody703_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_102 sourceBody703_104

def sourceBody703_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_105 sourceBody703_0

def sourceBody703_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_32 sourceBody703_106

def sourceBody703_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_107

def sourceBody703_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_101 sourceBody703_108

def sourceBody703_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_109

def sourceBody703_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_100 sourceBody703_110

def sourceBody703_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody703_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody703_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_113 sourceBody703_106

def sourceBody703_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_114

def sourceBody703_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_112 sourceBody703_115

def sourceBody703_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_116

def sourceBody703_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_111 sourceBody703_117

def sourceBody703_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody703_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_119 sourceBody703_0

def sourceBody703_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_27 sourceBody703_120

def sourceBody703_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_118 sourceBody703_121

def sourceBody703_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_84 sourceBody703_122

def sourceBody703_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_123

def sourceBody703_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_124

def sourceBody703_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_78 sourceBody703_125

def sourceBody703_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_56 sourceBody703_126

def sourceBody703_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_127

def sourceBody703_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_128

def sourceBody703_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_49 sourceBody703_129

def sourceBody703_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_11 sourceBody703_130

def sourceBody703_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_131

def sourceBody703_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_132

def sourceBody703_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_133

def sourceBody703_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_134

def sourceBody703_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_2 sourceBody703_135

def sourceBody703_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_136

def sourceBody703_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_1 sourceBody703_137

def sourceBody703_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody703_0 sourceBody703_138

def source703 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (703, 1, sourceBody703_139)
end InitECandidate.Proofs.WordStages
