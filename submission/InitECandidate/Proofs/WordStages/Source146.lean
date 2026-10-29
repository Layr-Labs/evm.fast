import InitECandidate.Proofs.WordStages.Source130
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody146_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody146_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody146_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody146_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody146_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 20) sourceBody146_2 sourceBody146_3

def sourceBody146_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody146_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_4 sourceBody146_5

def sourceBody146_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody146_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody146_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody146_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.reg 6) sourceBody146_9 sourceBody146_7

def sourceBody146_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_10 sourceBody146_5

def sourceBody146_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody146_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody146_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody146_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody146_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 26) sourceBody146_14 sourceBody146_15

def sourceBody146_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_16 sourceBody146_5

def sourceBody146_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody146_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody146_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody146_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 16) sourceBody146_20 sourceBody146_18

def sourceBody146_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_21 sourceBody146_5

def sourceBody146_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 22])

def sourceBody146_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody146_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody146_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody146_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody146_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody146_24, 146, 2)) (some 84) ([20]) (some (20, sourceBody146_27, 146, 3))

def sourceBody146_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_28 sourceBody146_5

def sourceBody146_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_29 sourceBody146_24

def sourceBody146_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_26 sourceBody146_30

def sourceBody146_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody146_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_32 sourceBody146_24

def sourceBody146_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_33 sourceBody146_24

def sourceBody146_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody146_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody146_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody146_24, 146, 4)) (some 84) ([14]) (some (14, sourceBody146_36, 146, 5))

def sourceBody146_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_37 sourceBody146_5

def sourceBody146_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_38 sourceBody146_24

def sourceBody146_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_35 sourceBody146_39

def sourceBody146_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody146_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_41 sourceBody146_24

def sourceBody146_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_42 sourceBody146_24

def sourceBody146_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody146_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody146_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody146_24, 146, 6)) (some 84) ([28]) (some (28, sourceBody146_45, 146, 7))

def sourceBody146_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_46 sourceBody146_5

def sourceBody146_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_47 sourceBody146_24

def sourceBody146_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_44 sourceBody146_48

def sourceBody146_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody146_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_50 sourceBody146_24

def sourceBody146_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_51 sourceBody146_24

def sourceBody146_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody146_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody146_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody146_24, 146, 8)) (some 84) ([6]) (some (6, sourceBody146_54, 146, 9))

def sourceBody146_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_55 sourceBody146_5

def sourceBody146_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_56 sourceBody146_24

def sourceBody146_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_53 sourceBody146_57

def sourceBody146_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 28)

def sourceBody146_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody146_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody146_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody146_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6, 18, 12, 26]

def sourceBody146_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_63 sourceBody146_24

def sourceBody146_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_62 sourceBody146_64

def sourceBody146_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_61 sourceBody146_65

def sourceBody146_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_60 sourceBody146_66

def sourceBody146_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_59 sourceBody146_67

def sourceBody146_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_58 sourceBody146_68

def sourceBody146_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_69

def sourceBody146_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_70

def sourceBody146_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_52 sourceBody146_71

def sourceBody146_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_49 sourceBody146_72

def sourceBody146_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_73

def sourceBody146_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_74

def sourceBody146_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_43 sourceBody146_75

def sourceBody146_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_40 sourceBody146_76

def sourceBody146_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_77

def sourceBody146_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_78

def sourceBody146_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_34 sourceBody146_79

def sourceBody146_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_31 sourceBody146_80

def sourceBody146_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_81

def sourceBody146_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_82

def sourceBody146_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_25 sourceBody146_83

def sourceBody146_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_84

def sourceBody146_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody146_85 sourceBody146_24

def sourceBody146_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_86 sourceBody146_5

def sourceBody146_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_87 sourceBody146_24

def sourceBody146_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_23 sourceBody146_88

def sourceBody146_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_22 sourceBody146_89

def sourceBody146_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_19 sourceBody146_90

def sourceBody146_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_18 sourceBody146_91

def sourceBody146_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_17 sourceBody146_92

def sourceBody146_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_13 sourceBody146_93

def sourceBody146_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_12 sourceBody146_94

def sourceBody146_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_11 sourceBody146_95

def sourceBody146_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_8 sourceBody146_96

def sourceBody146_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_7 sourceBody146_97

def sourceBody146_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_6 sourceBody146_98

def sourceBody146_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_1 sourceBody146_99

def sourceBody146_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_0 sourceBody146_100

def sourceBody146_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody146_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody146_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody146_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody146_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody146_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody146_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody146_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 12) sourceBody146_107 sourceBody146_108

def sourceBody146_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_109 sourceBody146_5

def sourceBody146_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody146_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64],
      Flapjack.WordLangExpHOL.var 28])

def sourceBody146_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 28])

def sourceBody146_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody146_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_114 sourceBody146_24

def sourceBody146_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_113 sourceBody146_115

def sourceBody146_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
        [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 7#64])
      (Flapjack.WordLangExpHOL.const 3#64)))

def sourceBody146_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 6)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody146_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody146_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody146_121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 16) sourceBody146_20 sourceBody146_18

def sourceBody146_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_121 sourceBody146_5

def sourceBody146_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody146_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 12])

def sourceBody146_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody146_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_125 sourceBody146_24

def sourceBody146_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_126 sourceBody146_24

def sourceBody146_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_124 sourceBody146_127

def sourceBody146_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_128

def sourceBody146_130 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody146_129 sourceBody146_24

def sourceBody146_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_130 sourceBody146_5

def sourceBody146_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_131 sourceBody146_24

def sourceBody146_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_123 sourceBody146_132

def sourceBody146_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_122 sourceBody146_133

def sourceBody146_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_120 sourceBody146_134

def sourceBody146_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_119 sourceBody146_135

def sourceBody146_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody146_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 12])

def sourceBody146_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody146_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_139 sourceBody146_24

def sourceBody146_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_140 sourceBody146_24

def sourceBody146_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_138 sourceBody146_141

def sourceBody146_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_142

def sourceBody146_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody146_143 sourceBody146_24

def sourceBody146_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_144 sourceBody146_5

def sourceBody146_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_145 sourceBody146_24

def sourceBody146_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_123 sourceBody146_146

def sourceBody146_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_122 sourceBody146_147

def sourceBody146_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_137 sourceBody146_148

def sourceBody146_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_119 sourceBody146_149

def sourceBody146_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_136 sourceBody146_150

def sourceBody146_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody146_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 12])

def sourceBody146_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody146_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_154 sourceBody146_24

def sourceBody146_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_155 sourceBody146_24

def sourceBody146_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_153 sourceBody146_156

def sourceBody146_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_157

def sourceBody146_159 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody146_158 sourceBody146_24

def sourceBody146_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_159 sourceBody146_5

def sourceBody146_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_160 sourceBody146_24

def sourceBody146_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_123 sourceBody146_161

def sourceBody146_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_122 sourceBody146_162

def sourceBody146_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_152 sourceBody146_163

def sourceBody146_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_119 sourceBody146_164

def sourceBody146_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_151 sourceBody146_165

def sourceBody146_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody146_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 12])

def sourceBody146_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody146_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_169 sourceBody146_24

def sourceBody146_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_170 sourceBody146_24

def sourceBody146_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_168 sourceBody146_171

def sourceBody146_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_172

def sourceBody146_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody146_173 sourceBody146_24

def sourceBody146_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_174 sourceBody146_5

def sourceBody146_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_175 sourceBody146_24

def sourceBody146_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_123 sourceBody146_176

def sourceBody146_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_122 sourceBody146_177

def sourceBody146_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_167 sourceBody146_178

def sourceBody146_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_119 sourceBody146_179

def sourceBody146_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_166 sourceBody146_180

def sourceBody146_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody146_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody146_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_183 sourceBody146_24

def sourceBody146_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_184 sourceBody146_24

def sourceBody146_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_182 sourceBody146_185

def sourceBody146_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_186

def sourceBody146_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_181 sourceBody146_187

def sourceBody146_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_118 sourceBody146_188

def sourceBody146_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_189

def sourceBody146_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_117 sourceBody146_190

def sourceBody146_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_116 sourceBody146_191

def sourceBody146_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_112 sourceBody146_192

def sourceBody146_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_193

def sourceBody146_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody146_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_194 sourceBody146_195

def sourceBody146_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody146_198 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody146_196 sourceBody146_197

def sourceBody146_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_198 sourceBody146_5

def sourceBody146_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_199 sourceBody146_24

def sourceBody146_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_111 sourceBody146_200

def sourceBody146_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_110 sourceBody146_201

def sourceBody146_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_106 sourceBody146_202

def sourceBody146_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_105 sourceBody146_203

def sourceBody146_205 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody146_204 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody146_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_205 sourceBody146_5

def sourceBody146_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_5 sourceBody146_206

def sourceBody146_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody146_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody146_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_209 sourceBody146_64

def sourceBody146_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_61 sourceBody146_210

def sourceBody146_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_208 sourceBody146_211

def sourceBody146_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_53 sourceBody146_212

def sourceBody146_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_207 sourceBody146_213

def sourceBody146_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_7 sourceBody146_214

def sourceBody146_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_215

def sourceBody146_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_104 sourceBody146_216

def sourceBody146_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_217

def sourceBody146_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_103 sourceBody146_218

def sourceBody146_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_219

def sourceBody146_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_3 sourceBody146_220

def sourceBody146_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_221

def sourceBody146_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_102 sourceBody146_222

def sourceBody146_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_24 sourceBody146_223

def sourceBody146_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody146_101 sourceBody146_224

def source146 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (146, 3, sourceBody146_225)
end InitECandidate.Proofs.WordStages
