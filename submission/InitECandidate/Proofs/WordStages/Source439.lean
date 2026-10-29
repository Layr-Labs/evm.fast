import InitECandidate.Proofs.WordStages.Source423
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody439_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody439_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 216#64]))

def sourceBody439_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody439_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody439_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 18]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody439_0, 439, 2)) (some 186) ([6, 16]) (some (6, sourceBody439_3, 439, 3))

def sourceBody439_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody439_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_4 sourceBody439_5

def sourceBody439_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_6 sourceBody439_0

def sourceBody439_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_2 sourceBody439_7

def sourceBody439_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_1 sourceBody439_8

def sourceBody439_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody439_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody439_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody439_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody439_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 12) sourceBody439_12 sourceBody439_13

def sourceBody439_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_14 sourceBody439_5

def sourceBody439_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody439_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody439_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody439_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_18 sourceBody439_0

def sourceBody439_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_17 sourceBody439_19

def sourceBody439_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody439_20 sourceBody439_0

def sourceBody439_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_21 sourceBody439_5

def sourceBody439_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_22 sourceBody439_0

def sourceBody439_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_16 sourceBody439_23

def sourceBody439_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_15 sourceBody439_24

def sourceBody439_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_11 sourceBody439_25

def sourceBody439_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_10 sourceBody439_26

def sourceBody439_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody439_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody439_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody439_0, 439, 4)) (some 68) ([16]) (some (16, sourceBody439_29, 439, 5))

def sourceBody439_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_30 sourceBody439_5

def sourceBody439_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_31 sourceBody439_0

def sourceBody439_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_28 sourceBody439_32

def sourceBody439_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody439_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody439_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody439_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody439_0, 439, 6)) (some 182) ([12, 20]) (some (12, sourceBody439_36, 439, 7))

def sourceBody439_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_37 sourceBody439_5

def sourceBody439_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_38 sourceBody439_0

def sourceBody439_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_35 sourceBody439_39

def sourceBody439_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_34 sourceBody439_40

def sourceBody439_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody439_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 20)

def sourceBody439_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 4

def sourceBody439_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_44 sourceBody439_0

def sourceBody439_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_43 sourceBody439_45

def sourceBody439_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_46 sourceBody439_0

def sourceBody439_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_16 sourceBody439_47

def sourceBody439_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_48

def sourceBody439_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_42 sourceBody439_49

def sourceBody439_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_50

def sourceBody439_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody439_0, 439, 8)) (some 182) ([12, 20]) (some (12, sourceBody439_36, 439, 9))

def sourceBody439_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_52 sourceBody439_5

def sourceBody439_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_53 sourceBody439_0

def sourceBody439_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_35 sourceBody439_54

def sourceBody439_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_34 sourceBody439_55

def sourceBody439_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_51 sourceBody439_56

def sourceBody439_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody439_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_58 sourceBody439_49

def sourceBody439_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_59

def sourceBody439_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_57 sourceBody439_60

def sourceBody439_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody439_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody439_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody439_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody439_0, 439, 10)) (some 435) ([20, 4]) (some (20, sourceBody439_64, 439, 11))

def sourceBody439_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_65 sourceBody439_5

def sourceBody439_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_66 sourceBody439_0

def sourceBody439_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_63 sourceBody439_67

def sourceBody439_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_62 sourceBody439_68

def sourceBody439_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody439_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody439_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody439_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 14

def sourceBody439_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_73 sourceBody439_0

def sourceBody439_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_72 sourceBody439_74

def sourceBody439_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_75 sourceBody439_0

def sourceBody439_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_71 sourceBody439_76

def sourceBody439_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_77

def sourceBody439_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_70 sourceBody439_78

def sourceBody439_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_79

def sourceBody439_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody439_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody439_0, 439, 12)) (some 435) ([20, 4]) (some (20, sourceBody439_64, 439, 13))

def sourceBody439_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_82 sourceBody439_5

def sourceBody439_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_83 sourceBody439_0

def sourceBody439_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_63 sourceBody439_84

def sourceBody439_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_81 sourceBody439_85

def sourceBody439_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_80 sourceBody439_86

def sourceBody439_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody439_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_88 sourceBody439_78

def sourceBody439_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_89

def sourceBody439_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_87 sourceBody439_90

def sourceBody439_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody439_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody439_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody439_0, 439, 14)) (some 435) ([20, 4]) (some (20, sourceBody439_64, 439, 15))

def sourceBody439_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_94 sourceBody439_5

def sourceBody439_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_95 sourceBody439_0

def sourceBody439_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_93 sourceBody439_96

def sourceBody439_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_92 sourceBody439_97

def sourceBody439_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_91 sourceBody439_98

def sourceBody439_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody439_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_100 sourceBody439_78

def sourceBody439_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_101

def sourceBody439_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_99 sourceBody439_102

def sourceBody439_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 216#64]))

def sourceBody439_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody439_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody439_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody439_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody439_0, 439, 16)) (some 192) ([4, 14, 10]) (some (4, sourceBody439_107, 439, 17))

def sourceBody439_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_108 sourceBody439_5

def sourceBody439_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_109 sourceBody439_0

def sourceBody439_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_106 sourceBody439_110

def sourceBody439_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_105 sourceBody439_111

def sourceBody439_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_104 sourceBody439_112

def sourceBody439_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_113

def sourceBody439_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_114

def sourceBody439_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_103 sourceBody439_115

def sourceBody439_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody439_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody439_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_118 sourceBody439_0

def sourceBody439_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_117 sourceBody439_119

def sourceBody439_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_116 sourceBody439_120

def sourceBody439_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_69 sourceBody439_121

def sourceBody439_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_122

def sourceBody439_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_123

def sourceBody439_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_61 sourceBody439_124

def sourceBody439_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_41 sourceBody439_125

def sourceBody439_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_126

def sourceBody439_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_127

def sourceBody439_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_33 sourceBody439_128

def sourceBody439_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_129

def sourceBody439_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_130

def sourceBody439_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_27 sourceBody439_131

def sourceBody439_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_9 sourceBody439_132

def sourceBody439_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_133

def sourceBody439_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_134

def sourceBody439_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_135

def sourceBody439_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody439_0 sourceBody439_136

def source439 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (439, 2, sourceBody439_137)
end InitECandidate.Proofs.WordStages
