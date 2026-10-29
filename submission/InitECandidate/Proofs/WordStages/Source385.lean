import InitECandidate.Proofs.WordStages.Source369
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody385_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody385_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody385_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody385_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody385_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 8, 20]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody385_0, 385, 2)) (some 384) ([14, 28]) (some (14, sourceBody385_3, 385, 3))

def sourceBody385_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody385_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_4 sourceBody385_5

def sourceBody385_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_6 sourceBody385_0

def sourceBody385_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_2 sourceBody385_7

def sourceBody385_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_1 sourceBody385_8

def sourceBody385_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 144#64]))

def sourceBody385_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4294967295#64)

def sourceBody385_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody385_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody385_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody385_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 18) sourceBody385_13 sourceBody385_14

def sourceBody385_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_15 sourceBody385_5

def sourceBody385_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody385_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 66#64)

def sourceBody385_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 28)

def sourceBody385_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_19 sourceBody385_0

def sourceBody385_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_20 sourceBody385_0

def sourceBody385_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_18 sourceBody385_21

def sourceBody385_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_22

def sourceBody385_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody385_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody385_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_24 sourceBody385_25

def sourceBody385_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_23 sourceBody385_26

def sourceBody385_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody385_27 sourceBody385_0

def sourceBody385_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_28 sourceBody385_5

def sourceBody385_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_29 sourceBody385_0

def sourceBody385_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_17 sourceBody385_30

def sourceBody385_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_16 sourceBody385_31

def sourceBody385_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_12 sourceBody385_32

def sourceBody385_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_11 sourceBody385_33

def sourceBody385_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody385_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 8])

def sourceBody385_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 60#64)

def sourceBody385_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_37 sourceBody385_21

def sourceBody385_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_38

def sourceBody385_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_39 sourceBody385_26

def sourceBody385_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody385_40 sourceBody385_0

def sourceBody385_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_41 sourceBody385_5

def sourceBody385_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_42 sourceBody385_0

def sourceBody385_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_17 sourceBody385_43

def sourceBody385_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_16 sourceBody385_44

def sourceBody385_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_36 sourceBody385_45

def sourceBody385_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_35 sourceBody385_46

def sourceBody385_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_34 sourceBody385_47

def sourceBody385_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody385_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 61#64)

def sourceBody385_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_50 sourceBody385_21

def sourceBody385_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_51

def sourceBody385_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_52 sourceBody385_26

def sourceBody385_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody385_53 sourceBody385_0

def sourceBody385_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_54 sourceBody385_5

def sourceBody385_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_55 sourceBody385_0

def sourceBody385_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_17 sourceBody385_56

def sourceBody385_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_16 sourceBody385_57

def sourceBody385_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_49 sourceBody385_58

def sourceBody385_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_35 sourceBody385_59

def sourceBody385_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_48 sourceBody385_60

def sourceBody385_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody385_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody385_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 18) sourceBody385_13 sourceBody385_14

def sourceBody385_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_64 sourceBody385_5

def sourceBody385_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 131072#64)

def sourceBody385_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 200#64]))

def sourceBody385_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 62#64)

def sourceBody385_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_68 sourceBody385_21

def sourceBody385_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_69

def sourceBody385_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_70 sourceBody385_26

def sourceBody385_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody385_71 sourceBody385_0

def sourceBody385_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_72 sourceBody385_5

def sourceBody385_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_73 sourceBody385_0

def sourceBody385_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_17 sourceBody385_74

def sourceBody385_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_16 sourceBody385_75

def sourceBody385_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_67 sourceBody385_76

def sourceBody385_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_66 sourceBody385_77

def sourceBody385_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody385_78 sourceBody385_0

def sourceBody385_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_79 sourceBody385_5

def sourceBody385_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_80 sourceBody385_0

def sourceBody385_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_17 sourceBody385_81

def sourceBody385_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_65 sourceBody385_82

def sourceBody385_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_63 sourceBody385_83

def sourceBody385_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_62 sourceBody385_84

def sourceBody385_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_61 sourceBody385_85

def sourceBody385_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 16777216#64)

def sourceBody385_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody385_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 63#64)

def sourceBody385_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_89 sourceBody385_21

def sourceBody385_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_90

def sourceBody385_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_91 sourceBody385_26

def sourceBody385_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody385_92 sourceBody385_0

def sourceBody385_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_93 sourceBody385_5

def sourceBody385_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_94 sourceBody385_0

def sourceBody385_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_17 sourceBody385_95

def sourceBody385_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_16 sourceBody385_96

def sourceBody385_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_88 sourceBody385_97

def sourceBody385_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_87 sourceBody385_98

def sourceBody385_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_86 sourceBody385_99

def sourceBody385_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody385_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_101 sourceBody385_21

def sourceBody385_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_102

def sourceBody385_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_103 sourceBody385_26

def sourceBody385_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody385_104 sourceBody385_0

def sourceBody385_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_105 sourceBody385_5

def sourceBody385_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_106 sourceBody385_0

def sourceBody385_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_17 sourceBody385_107

def sourceBody385_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_16 sourceBody385_108

def sourceBody385_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_49 sourceBody385_109

def sourceBody385_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_87 sourceBody385_110

def sourceBody385_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_100 sourceBody385_111

def sourceBody385_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody385_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody385_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody385_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody385_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody385_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody385_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody385_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 12)

def sourceBody385_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody385_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody385_0, 385, 4)) (some 101) ([10, 22, 16, 30]) (some (10, sourceBody385_121, 385, 5))

def sourceBody385_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_122 sourceBody385_5

def sourceBody385_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_123 sourceBody385_0

def sourceBody385_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_120 sourceBody385_124

def sourceBody385_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_119 sourceBody385_125

def sourceBody385_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_118 sourceBody385_126

def sourceBody385_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_117 sourceBody385_127

def sourceBody385_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody385_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody385_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody385_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody385_133 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 16) sourceBody385_131 sourceBody385_132

def sourceBody385_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_133 sourceBody385_5

def sourceBody385_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody385_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 65#64)

def sourceBody385_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody385_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_137 sourceBody385_0

def sourceBody385_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_138 sourceBody385_0

def sourceBody385_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_136 sourceBody385_139

def sourceBody385_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_140

def sourceBody385_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody385_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_142 sourceBody385_121

def sourceBody385_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_141 sourceBody385_143

def sourceBody385_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody385_144 sourceBody385_0

def sourceBody385_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_145 sourceBody385_5

def sourceBody385_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_146 sourceBody385_0

def sourceBody385_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_135 sourceBody385_147

def sourceBody385_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_134 sourceBody385_148

def sourceBody385_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_130 sourceBody385_149

def sourceBody385_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_129 sourceBody385_150

def sourceBody385_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody385_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody385_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_153 sourceBody385_149

def sourceBody385_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_152 sourceBody385_154

def sourceBody385_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_151 sourceBody385_155

def sourceBody385_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24)

def sourceBody385_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody385_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody385_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10, 22, 16]

def sourceBody385_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_160 sourceBody385_0

def sourceBody385_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_159 sourceBody385_161

def sourceBody385_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_158 sourceBody385_162

def sourceBody385_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_157 sourceBody385_163

def sourceBody385_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_156 sourceBody385_164

def sourceBody385_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_128 sourceBody385_165

def sourceBody385_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_166

def sourceBody385_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_167

def sourceBody385_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_116 sourceBody385_168

def sourceBody385_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_169

def sourceBody385_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_115 sourceBody385_170

def sourceBody385_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_171

def sourceBody385_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_114 sourceBody385_172

def sourceBody385_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_173

def sourceBody385_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_113 sourceBody385_174

def sourceBody385_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_175

def sourceBody385_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_112 sourceBody385_176

def sourceBody385_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_10 sourceBody385_177

def sourceBody385_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_178

def sourceBody385_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_9 sourceBody385_179

def sourceBody385_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_180

def sourceBody385_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_181

def sourceBody385_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_182

def sourceBody385_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_183

def sourceBody385_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_184

def sourceBody385_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody385_0 sourceBody385_185

def source385 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (385, 3, sourceBody385_186)
end InitECandidate.Proofs.WordStages
