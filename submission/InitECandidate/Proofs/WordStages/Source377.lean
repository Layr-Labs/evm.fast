import InitECandidate.Proofs.WordStages.Source361
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody377_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody377_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody377_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody377_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody377_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 8) sourceBody377_2 sourceBody377_3

def sourceBody377_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody377_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_4 sourceBody377_5

def sourceBody377_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody377_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody377_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody377_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 30]

def sourceBody377_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody377_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_10 sourceBody377_11

def sourceBody377_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_9 sourceBody377_12

def sourceBody377_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_8 sourceBody377_13

def sourceBody377_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody377_14 sourceBody377_11

def sourceBody377_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_15 sourceBody377_5

def sourceBody377_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_16 sourceBody377_11

def sourceBody377_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_7 sourceBody377_17

def sourceBody377_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_6 sourceBody377_18

def sourceBody377_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_1 sourceBody377_19

def sourceBody377_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_0 sourceBody377_20

def sourceBody377_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64]))

def sourceBody377_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody377_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody377_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody377_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 12)

def sourceBody377_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 30)

def sourceBody377_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody377_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody377_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody377_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody377_11, 377, 2)) (some 101) ([36, 6, 24, 16]) (some (36, sourceBody377_30, 377, 3))

def sourceBody377_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_31 sourceBody377_5

def sourceBody377_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_32 sourceBody377_11

def sourceBody377_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_29 sourceBody377_33

def sourceBody377_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_28 sourceBody377_34

def sourceBody377_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_27 sourceBody377_35

def sourceBody377_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_26 sourceBody377_36

def sourceBody377_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody377_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody377_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody377_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody377_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 24) sourceBody377_40 sourceBody377_41

def sourceBody377_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_42 sourceBody377_5

def sourceBody377_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody377_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody377_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 27#64)

def sourceBody377_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 24) sourceBody377_40 sourceBody377_41

def sourceBody377_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_47 sourceBody377_5

def sourceBody377_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 12)

def sourceBody377_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 28#64)

def sourceBody377_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody377_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody377_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 10) sourceBody377_51 sourceBody377_52

def sourceBody377_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_53 sourceBody377_5

def sourceBody377_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody377_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 34])

def sourceBody377_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody377_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 38) sourceBody377_57 sourceBody377_55

def sourceBody377_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_58 sourceBody377_5

def sourceBody377_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 20)

def sourceBody377_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody377_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36, 6]

def sourceBody377_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_62 sourceBody377_11

def sourceBody377_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_41 sourceBody377_63

def sourceBody377_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_61 sourceBody377_64

def sourceBody377_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody377_65 sourceBody377_11

def sourceBody377_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_66 sourceBody377_5

def sourceBody377_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_67 sourceBody377_11

def sourceBody377_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_60 sourceBody377_68

def sourceBody377_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_59 sourceBody377_69

def sourceBody377_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_56 sourceBody377_70

def sourceBody377_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_55 sourceBody377_71

def sourceBody377_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_54 sourceBody377_72

def sourceBody377_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_50 sourceBody377_73

def sourceBody377_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_49 sourceBody377_74

def sourceBody377_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_48 sourceBody377_75

def sourceBody377_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_46 sourceBody377_76

def sourceBody377_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_45 sourceBody377_77

def sourceBody377_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 35#64)

def sourceBody377_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 24) sourceBody377_40 sourceBody377_41

def sourceBody377_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_80 sourceBody377_5

def sourceBody377_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 44#64)

def sourceBody377_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 36)

def sourceBody377_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_83 sourceBody377_11

def sourceBody377_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_84 sourceBody377_11

def sourceBody377_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_82 sourceBody377_85

def sourceBody377_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_86

def sourceBody377_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody377_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_88 sourceBody377_30

def sourceBody377_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_87 sourceBody377_89

def sourceBody377_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody377_90 sourceBody377_11

def sourceBody377_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_91 sourceBody377_5

def sourceBody377_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_92 sourceBody377_11

def sourceBody377_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_44 sourceBody377_93

def sourceBody377_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_81 sourceBody377_94

def sourceBody377_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_79 sourceBody377_95

def sourceBody377_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_45 sourceBody377_96

def sourceBody377_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_78 sourceBody377_97

def sourceBody377_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody377_98 sourceBody377_11

def sourceBody377_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_99 sourceBody377_5

def sourceBody377_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_100 sourceBody377_11

def sourceBody377_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_44 sourceBody377_101

def sourceBody377_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_43 sourceBody377_102

def sourceBody377_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_39 sourceBody377_103

def sourceBody377_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_38 sourceBody377_104

def sourceBody377_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 30)

def sourceBody377_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody377_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody377_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 35#64)

def sourceBody377_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody377_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody377_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody377_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody377_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 6, 24, 16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody377_11, 377, 4)) (some 117) ([34, 10, 28, 20, 38, 4, 22, 14]) (some (34, sourceBody377_113, 377, 5))

def sourceBody377_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_114 sourceBody377_5

def sourceBody377_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_115 sourceBody377_11

def sourceBody377_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_112 sourceBody377_116

def sourceBody377_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_111 sourceBody377_117

def sourceBody377_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_110 sourceBody377_118

def sourceBody377_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_109 sourceBody377_119

def sourceBody377_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_108 sourceBody377_120

def sourceBody377_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_107 sourceBody377_121

def sourceBody377_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_106 sourceBody377_122

def sourceBody377_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_49 sourceBody377_123

def sourceBody377_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 36)

def sourceBody377_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody377_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody377_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody377_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody377_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody377_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([34, 10, 28, 20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody377_11, 377, 6)) (some 142) ([38, 4, 22, 14, 32]) (some (38, sourceBody377_130, 377, 7))

def sourceBody377_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_131 sourceBody377_5

def sourceBody377_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_132 sourceBody377_11

def sourceBody377_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_129 sourceBody377_133

def sourceBody377_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_128 sourceBody377_134

def sourceBody377_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_127 sourceBody377_135

def sourceBody377_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_126 sourceBody377_136

def sourceBody377_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_125 sourceBody377_137

def sourceBody377_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody377_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody377_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody377_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody377_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody377_11, 377, 8)) (some 101) ([38, 4, 22, 14]) (some (38, sourceBody377_130, 377, 9))

def sourceBody377_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_143 sourceBody377_5

def sourceBody377_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_144 sourceBody377_11

def sourceBody377_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_142 sourceBody377_145

def sourceBody377_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_141 sourceBody377_146

def sourceBody377_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_140 sourceBody377_147

def sourceBody377_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_139 sourceBody377_148

def sourceBody377_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody377_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody377_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 22) sourceBody377_151 sourceBody377_110

def sourceBody377_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_152 sourceBody377_5

def sourceBody377_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody377_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 45#64)

def sourceBody377_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 38)

def sourceBody377_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_156 sourceBody377_11

def sourceBody377_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_157 sourceBody377_11

def sourceBody377_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_155 sourceBody377_158

def sourceBody377_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_159

def sourceBody377_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody377_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_161 sourceBody377_130

def sourceBody377_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_160 sourceBody377_162

def sourceBody377_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody377_163 sourceBody377_11

def sourceBody377_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_164 sourceBody377_5

def sourceBody377_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_165 sourceBody377_11

def sourceBody377_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_154 sourceBody377_166

def sourceBody377_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_153 sourceBody377_167

def sourceBody377_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_111 sourceBody377_168

def sourceBody377_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_150 sourceBody377_169

def sourceBody377_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_149 sourceBody377_170

def sourceBody377_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody377_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 34)

def sourceBody377_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38, 4]

def sourceBody377_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_174 sourceBody377_11

def sourceBody377_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_173 sourceBody377_175

def sourceBody377_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_172 sourceBody377_176

def sourceBody377_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_171 sourceBody377_177

def sourceBody377_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_138 sourceBody377_178

def sourceBody377_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_179

def sourceBody377_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_180

def sourceBody377_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_181

def sourceBody377_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_182

def sourceBody377_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_183

def sourceBody377_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_184

def sourceBody377_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_185

def sourceBody377_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_186

def sourceBody377_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_124 sourceBody377_187

def sourceBody377_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_188

def sourceBody377_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_189

def sourceBody377_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_190

def sourceBody377_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_191

def sourceBody377_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_192

def sourceBody377_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_193

def sourceBody377_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_194

def sourceBody377_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_195

def sourceBody377_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_105 sourceBody377_196

def sourceBody377_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_37 sourceBody377_197

def sourceBody377_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_198

def sourceBody377_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_199

def sourceBody377_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_25 sourceBody377_200

def sourceBody377_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_201

def sourceBody377_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_24 sourceBody377_202

def sourceBody377_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_203

def sourceBody377_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_23 sourceBody377_204

def sourceBody377_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_205

def sourceBody377_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_22 sourceBody377_206

def sourceBody377_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_11 sourceBody377_207

def sourceBody377_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody377_21 sourceBody377_208

def source377 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (377, 2, sourceBody377_209)
end InitECandidate.Proofs.WordStages
