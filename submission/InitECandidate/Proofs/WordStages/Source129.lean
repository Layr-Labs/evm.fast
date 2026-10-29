import InitECandidate.Proofs.WordStages.Source113
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody129_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.var 16])

def sourceBody129_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody129_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 48) sourceBody129_2 sourceBody129_3

def sourceBody129_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody129_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_4 sourceBody129_5

def sourceBody129_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody129_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38, 28, 48, 24, 44, 34, 52, 18]

def sourceBody129_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody129_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_14 sourceBody129_15

def sourceBody129_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_13 sourceBody129_16

def sourceBody129_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_12 sourceBody129_17

def sourceBody129_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_11 sourceBody129_18

def sourceBody129_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_10 sourceBody129_19

def sourceBody129_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_9 sourceBody129_20

def sourceBody129_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_1 sourceBody129_21

def sourceBody129_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_3 sourceBody129_22

def sourceBody129_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_8 sourceBody129_23

def sourceBody129_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody129_24 sourceBody129_15

def sourceBody129_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_25 sourceBody129_5

def sourceBody129_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_26 sourceBody129_15

def sourceBody129_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_7 sourceBody129_27

def sourceBody129_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_6 sourceBody129_28

def sourceBody129_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_1 sourceBody129_29

def sourceBody129_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_0 sourceBody129_30

def sourceBody129_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody129_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 4)

def sourceBody129_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody129_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 8)

def sourceBody129_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody129_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 12)

def sourceBody129_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody129_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 16)

def sourceBody129_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody129_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody129_15, 129, 2)) (some 106) ([28, 48, 24, 44, 34, 52, 18, 36]) (some (28, sourceBody129_40, 129, 3))

def sourceBody129_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_41 sourceBody129_5

def sourceBody129_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_42 sourceBody129_15

def sourceBody129_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_39 sourceBody129_43

def sourceBody129_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_38 sourceBody129_44

def sourceBody129_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_37 sourceBody129_45

def sourceBody129_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_36 sourceBody129_46

def sourceBody129_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_35 sourceBody129_47

def sourceBody129_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_34 sourceBody129_48

def sourceBody129_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_33 sourceBody129_49

def sourceBody129_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_32 sourceBody129_50

def sourceBody129_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 38)

def sourceBody129_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody129_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody129_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 48 (Flapjack.WordRegImm.reg 24) sourceBody129_54 sourceBody129_1

def sourceBody129_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_55 sourceBody129_5

def sourceBody129_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 48)

def sourceBody129_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody129_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 4)

def sourceBody129_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody129_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody129_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28, 48, 24, 44, 34, 52, 18, 36]

def sourceBody129_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_62 sourceBody129_15

def sourceBody129_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_61 sourceBody129_63

def sourceBody129_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_60 sourceBody129_64

def sourceBody129_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_59 sourceBody129_65

def sourceBody129_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_58 sourceBody129_66

def sourceBody129_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_10 sourceBody129_67

def sourceBody129_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_9 sourceBody129_68

def sourceBody129_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_1 sourceBody129_69

def sourceBody129_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_3 sourceBody129_70

def sourceBody129_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 44 (Flapjack.WordRegImm.imm 0#64) sourceBody129_71 sourceBody129_15

def sourceBody129_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_72 sourceBody129_5

def sourceBody129_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_73 sourceBody129_15

def sourceBody129_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_57 sourceBody129_74

def sourceBody129_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_56 sourceBody129_75

def sourceBody129_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_53 sourceBody129_76

def sourceBody129_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_52 sourceBody129_77

def sourceBody129_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 16])

def sourceBody129_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody129_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 10)

def sourceBody129_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody129_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 48]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody129_15, 129, 4)) (some 94) ([24, 44]) (some (24, sourceBody129_82, 129, 5))

def sourceBody129_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_83 sourceBody129_5

def sourceBody129_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_84 sourceBody129_15

def sourceBody129_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_81 sourceBody129_85

def sourceBody129_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_80 sourceBody129_86

def sourceBody129_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 48)

def sourceBody129_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody129_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24, 44, 34, 52, 18, 36, 26, 46]

def sourceBody129_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_92 sourceBody129_15

def sourceBody129_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_91 sourceBody129_93

def sourceBody129_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_90 sourceBody129_94

def sourceBody129_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_89 sourceBody129_95

def sourceBody129_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_88 sourceBody129_96

def sourceBody129_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_12 sourceBody129_97

def sourceBody129_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_11 sourceBody129_98

def sourceBody129_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_10 sourceBody129_99

def sourceBody129_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_7 sourceBody129_100

def sourceBody129_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_87 sourceBody129_101

def sourceBody129_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_102

def sourceBody129_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_103

def sourceBody129_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_104

def sourceBody129_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_105

def sourceBody129_107 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 44 (Flapjack.WordRegImm.imm 0#64) sourceBody129_106 sourceBody129_15

def sourceBody129_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_107 sourceBody129_5

def sourceBody129_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_108 sourceBody129_15

def sourceBody129_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_57 sourceBody129_109

def sourceBody129_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_56 sourceBody129_110

def sourceBody129_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_9 sourceBody129_111

def sourceBody129_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_79 sourceBody129_112

def sourceBody129_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_78 sourceBody129_113

def sourceBody129_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 40#64]),
      Flapjack.WordLangExpHOL.const 424#64])

def sourceBody129_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 2)

def sourceBody129_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody129_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 6)

def sourceBody129_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody129_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody129_15, 129, 6)) (some 124) ([24, 44, 34, 52, 18]) (some (24, sourceBody129_82, 129, 7))

def sourceBody129_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_120 sourceBody129_5

def sourceBody129_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_121 sourceBody129_15

def sourceBody129_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_119 sourceBody129_122

def sourceBody129_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_118 sourceBody129_123

def sourceBody129_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_117 sourceBody129_124

def sourceBody129_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_116 sourceBody129_125

def sourceBody129_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_7 sourceBody129_126

def sourceBody129_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_127

def sourceBody129_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_128

def sourceBody129_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def sourceBody129_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody129_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def sourceBody129_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody129_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 14)

def sourceBody129_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody129_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody129_137 : WordLangProgHOL (BitVec 64) :=
.call (some (([48, 24, 44, 34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody129_15, 129, 8)) (some 128) ([52, 18, 36, 26, 46, 22]) (some (52, sourceBody129_136, 129, 9))

def sourceBody129_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_137 sourceBody129_5

def sourceBody129_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_138 sourceBody129_15

def sourceBody129_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_135 sourceBody129_139

def sourceBody129_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_134 sourceBody129_140

def sourceBody129_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_133 sourceBody129_141

def sourceBody129_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_132 sourceBody129_142

def sourceBody129_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_131 sourceBody129_143

def sourceBody129_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_130 sourceBody129_144

def sourceBody129_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 40#64]),
      Flapjack.WordLangExpHOL.const 216#64])

def sourceBody129_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody129_148 : WordLangProgHOL (BitVec 64) :=
.call (some (([52, 18, 36, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody129_15, 129, 10)) (some 125) ([46]) (some (46, sourceBody129_147, 129, 11))

def sourceBody129_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_148 sourceBody129_5

def sourceBody129_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_149 sourceBody129_15

def sourceBody129_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_146 sourceBody129_150

def sourceBody129_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 52)

def sourceBody129_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody129_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 36)

def sourceBody129_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody129_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 48)

def sourceBody129_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody129_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def sourceBody129_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 34)

def sourceBody129_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46, 22, 42, 32, 50, 20, 40, 30]

def sourceBody129_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_160 sourceBody129_15

def sourceBody129_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_159 sourceBody129_161

def sourceBody129_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_158 sourceBody129_162

def sourceBody129_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_157 sourceBody129_163

def sourceBody129_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_156 sourceBody129_164

def sourceBody129_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_155 sourceBody129_165

def sourceBody129_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_154 sourceBody129_166

def sourceBody129_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_153 sourceBody129_167

def sourceBody129_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_152 sourceBody129_168

def sourceBody129_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_151 sourceBody129_169

def sourceBody129_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_170

def sourceBody129_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_171

def sourceBody129_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_172

def sourceBody129_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_173

def sourceBody129_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_174

def sourceBody129_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_175

def sourceBody129_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_176

def sourceBody129_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_177

def sourceBody129_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_145 sourceBody129_178

def sourceBody129_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_179

def sourceBody129_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_180

def sourceBody129_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_181

def sourceBody129_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_182

def sourceBody129_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_183

def sourceBody129_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_184

def sourceBody129_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_185

def sourceBody129_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_186

def sourceBody129_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_129 sourceBody129_187

def sourceBody129_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_115 sourceBody129_188

def sourceBody129_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_189

def sourceBody129_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_114 sourceBody129_190

def sourceBody129_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_51 sourceBody129_191

def sourceBody129_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_192

def sourceBody129_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_15 sourceBody129_193

def sourceBody129_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody129_31 sourceBody129_194

def source129 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (129, 9, sourceBody129_195)
end InitECandidate.Proofs.WordStages
