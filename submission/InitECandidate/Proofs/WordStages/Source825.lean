import InitECandidate.Proofs.WordStages.Source809
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody825_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody825_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
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

def sourceBody825_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody825_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody825_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody825_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody825_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody825_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 12) sourceBody825_5 sourceBody825_6

def sourceBody825_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody825_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_7 sourceBody825_8

def sourceBody825_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody825_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody825_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody825_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_12 sourceBody825_0

def sourceBody825_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_13 sourceBody825_0

def sourceBody825_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_11 sourceBody825_14

def sourceBody825_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_15

def sourceBody825_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody825_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody825_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_17 sourceBody825_18

def sourceBody825_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_16 sourceBody825_19

def sourceBody825_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody825_20 sourceBody825_0

def sourceBody825_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_21 sourceBody825_8

def sourceBody825_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_22 sourceBody825_0

def sourceBody825_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_10 sourceBody825_23

def sourceBody825_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_9 sourceBody825_24

def sourceBody825_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_4 sourceBody825_25

def sourceBody825_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_3 sourceBody825_26

def sourceBody825_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody825_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody825_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody825_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([4, 16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody825_0, 825, 2)) (some 94) ([12, 22]) (some (12, sourceBody825_30, 825, 3))

def sourceBody825_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_31 sourceBody825_8

def sourceBody825_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_32 sourceBody825_0

def sourceBody825_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_29 sourceBody825_33

def sourceBody825_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_28 sourceBody825_34

def sourceBody825_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody825_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody825_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody825_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 2) sourceBody825_37 sourceBody825_38

def sourceBody825_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_39 sourceBody825_8

def sourceBody825_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody825_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody825_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 12)

def sourceBody825_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_43 sourceBody825_0

def sourceBody825_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_44 sourceBody825_0

def sourceBody825_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_42 sourceBody825_45

def sourceBody825_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_46

def sourceBody825_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody825_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_48 sourceBody825_30

def sourceBody825_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_47 sourceBody825_49

def sourceBody825_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody825_50 sourceBody825_0

def sourceBody825_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_51 sourceBody825_8

def sourceBody825_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_52 sourceBody825_0

def sourceBody825_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_41 sourceBody825_53

def sourceBody825_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_40 sourceBody825_54

def sourceBody825_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_36 sourceBody825_55

def sourceBody825_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_10 sourceBody825_56

def sourceBody825_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody825_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 12)

def sourceBody825_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32600#64)

def sourceBody825_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 10 10 2 14))

def sourceBody825_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 37700#64])

def sourceBody825_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody825_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody825_0, 825, 4)) (some 470) ([20]) (some (2, sourceBody825_63, 825, 5))

def sourceBody825_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_64 sourceBody825_8

def sourceBody825_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_65 sourceBody825_0

def sourceBody825_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_62 sourceBody825_66

def sourceBody825_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_61 sourceBody825_67

def sourceBody825_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_60 sourceBody825_68

def sourceBody825_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_59 sourceBody825_69

def sourceBody825_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_70

def sourceBody825_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_71

def sourceBody825_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody825_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody825_0, 825, 6)) (some 68) ([2]) (some (2, sourceBody825_63, 825, 7))

def sourceBody825_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_74 sourceBody825_8

def sourceBody825_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_75 sourceBody825_0

def sourceBody825_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_73 sourceBody825_76

def sourceBody825_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody825_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody825_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody825_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody825_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody825_0, 825, 8)) (some 814) ([14, 10, 20]) (some (14, sourceBody825_81, 825, 9))

def sourceBody825_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_82 sourceBody825_8

def sourceBody825_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_83 sourceBody825_0

def sourceBody825_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_80 sourceBody825_84

def sourceBody825_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_79 sourceBody825_85

def sourceBody825_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_78 sourceBody825_86

def sourceBody825_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody825_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody825_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody825_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody825_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 20) sourceBody825_90 sourceBody825_91

def sourceBody825_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_92 sourceBody825_8

def sourceBody825_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody825_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody825_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 14)

def sourceBody825_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_96 sourceBody825_0

def sourceBody825_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_97 sourceBody825_0

def sourceBody825_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_95 sourceBody825_98

def sourceBody825_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_99

def sourceBody825_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody825_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_101 sourceBody825_81

def sourceBody825_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_100 sourceBody825_102

def sourceBody825_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody825_103 sourceBody825_0

def sourceBody825_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_104 sourceBody825_8

def sourceBody825_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_105 sourceBody825_0

def sourceBody825_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_94 sourceBody825_106

def sourceBody825_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_93 sourceBody825_107

def sourceBody825_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_89 sourceBody825_108

def sourceBody825_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_88 sourceBody825_109

def sourceBody825_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody825_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def sourceBody825_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody825_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 20

def sourceBody825_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_114 sourceBody825_0

def sourceBody825_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_113 sourceBody825_115

def sourceBody825_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_116 sourceBody825_0

def sourceBody825_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_112 sourceBody825_117

def sourceBody825_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_118

def sourceBody825_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_111 sourceBody825_119

def sourceBody825_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_120

def sourceBody825_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_110 sourceBody825_121

def sourceBody825_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody825_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody825_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_124 sourceBody825_117

def sourceBody825_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_125

def sourceBody825_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_123 sourceBody825_126

def sourceBody825_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_127

def sourceBody825_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_122 sourceBody825_128

def sourceBody825_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody825_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody825_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_131 sourceBody825_0

def sourceBody825_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_130 sourceBody825_132

def sourceBody825_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_129 sourceBody825_133

def sourceBody825_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_87 sourceBody825_134

def sourceBody825_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_135

def sourceBody825_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_136

def sourceBody825_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_77 sourceBody825_137

def sourceBody825_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_138

def sourceBody825_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_139

def sourceBody825_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_72 sourceBody825_140

def sourceBody825_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_58 sourceBody825_141

def sourceBody825_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_142

def sourceBody825_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_57 sourceBody825_143

def sourceBody825_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_35 sourceBody825_144

def sourceBody825_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_145

def sourceBody825_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_146

def sourceBody825_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_147

def sourceBody825_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_148

def sourceBody825_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_27 sourceBody825_149

def sourceBody825_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_2 sourceBody825_150

def sourceBody825_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_151

def sourceBody825_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_1 sourceBody825_152

def sourceBody825_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody825_0 sourceBody825_153

def source825 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (825, 1, sourceBody825_154)
end InitECandidate.Proofs.WordStages
