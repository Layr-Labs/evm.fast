import InitECandidate.Proofs.WordStages.Source305
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody321_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody321_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody321_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody321_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody321_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody321_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 22)

def sourceBody321_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody321_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody321_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody321_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 16) sourceBody321_7 sourceBody321_8

def sourceBody321_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody321_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_9 sourceBody321_10

def sourceBody321_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody321_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody321_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody321_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody321_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody321_0, 321, 2)) (some 68) ([6]) (some (6, sourceBody321_15, 321, 3))

def sourceBody321_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_16 sourceBody321_10

def sourceBody321_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_17 sourceBody321_0

def sourceBody321_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_14 sourceBody321_18

def sourceBody321_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody321_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody321_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody321_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody321_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 24) sourceBody321_22 sourceBody321_23

def sourceBody321_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_24 sourceBody321_10

def sourceBody321_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody321_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_7 sourceBody321_0

def sourceBody321_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_27 sourceBody321_0

def sourceBody321_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody321_28 sourceBody321_0

def sourceBody321_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_29 sourceBody321_10

def sourceBody321_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_30 sourceBody321_0

def sourceBody321_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_26 sourceBody321_31

def sourceBody321_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_25 sourceBody321_32

def sourceBody321_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_21 sourceBody321_33

def sourceBody321_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_20 sourceBody321_34

def sourceBody321_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody321_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody321_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody321_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody321_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody321_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody321_0, 321, 4)) (some 290) ([16, 12, 24, 10]) (some (16, sourceBody321_40, 321, 5))

def sourceBody321_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_41 sourceBody321_10

def sourceBody321_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_42 sourceBody321_0

def sourceBody321_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_39 sourceBody321_43

def sourceBody321_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_38 sourceBody321_44

def sourceBody321_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_37 sourceBody321_45

def sourceBody321_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_36 sourceBody321_46

def sourceBody321_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_35 sourceBody321_47

def sourceBody321_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody321_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody321_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody321_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody321_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody321_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody321_0, 321, 6)) (some 179) ([24, 10]) (some (12, sourceBody321_53, 321, 7))

def sourceBody321_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_54 sourceBody321_10

def sourceBody321_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_55 sourceBody321_0

def sourceBody321_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_52 sourceBody321_56

def sourceBody321_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_51 sourceBody321_57

def sourceBody321_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_50 sourceBody321_58

def sourceBody321_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_49 sourceBody321_59

def sourceBody321_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody321_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_61 sourceBody321_0

def sourceBody321_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_62 sourceBody321_0

def sourceBody321_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody321_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody321_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody321_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 10) sourceBody321_21 sourceBody321_66

def sourceBody321_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_67 sourceBody321_10

def sourceBody321_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody321_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody321_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody321_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody321_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody321_0, 321, 8)) (some 326) ([24, 10]) (some (24, sourceBody321_72, 321, 9))

def sourceBody321_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_73 sourceBody321_10

def sourceBody321_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_74 sourceBody321_0

def sourceBody321_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_71 sourceBody321_75

def sourceBody321_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_70 sourceBody321_76

def sourceBody321_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 12])

def sourceBody321_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 24)

def sourceBody321_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_79 sourceBody321_0

def sourceBody321_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_80 sourceBody321_0

def sourceBody321_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_78 sourceBody321_81

def sourceBody321_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_82

def sourceBody321_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_77 sourceBody321_83

def sourceBody321_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_84

def sourceBody321_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_85

def sourceBody321_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody321_86 sourceBody321_0

def sourceBody321_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_87 sourceBody321_10

def sourceBody321_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_88 sourceBody321_0

def sourceBody321_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_69 sourceBody321_89

def sourceBody321_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_68 sourceBody321_90

def sourceBody321_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_65 sourceBody321_91

def sourceBody321_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_64 sourceBody321_92

def sourceBody321_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_63 sourceBody321_93

def sourceBody321_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_60 sourceBody321_94

def sourceBody321_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_95

def sourceBody321_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_96

def sourceBody321_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_48 sourceBody321_97

def sourceBody321_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_8 sourceBody321_98

def sourceBody321_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_99

def sourceBody321_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_19 sourceBody321_100

def sourceBody321_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_13 sourceBody321_101

def sourceBody321_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_102

def sourceBody321_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody321_103 sourceBody321_0

def sourceBody321_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_104 sourceBody321_10

def sourceBody321_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_105 sourceBody321_0

def sourceBody321_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_12 sourceBody321_106

def sourceBody321_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_11 sourceBody321_107

def sourceBody321_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_6 sourceBody321_108

def sourceBody321_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_5 sourceBody321_109

def sourceBody321_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody321_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody321_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody321_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 16

def sourceBody321_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_114 sourceBody321_0

def sourceBody321_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_113 sourceBody321_115

def sourceBody321_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_116 sourceBody321_0

def sourceBody321_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_112 sourceBody321_117

def sourceBody321_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_118

def sourceBody321_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_111 sourceBody321_119

def sourceBody321_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_120

def sourceBody321_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_110 sourceBody321_121

def sourceBody321_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody321_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody321_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_124 sourceBody321_117

def sourceBody321_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_125

def sourceBody321_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_123 sourceBody321_126

def sourceBody321_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_127

def sourceBody321_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_122 sourceBody321_128

def sourceBody321_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody321_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody321_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_131 sourceBody321_117

def sourceBody321_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_132

def sourceBody321_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_130 sourceBody321_133

def sourceBody321_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_134

def sourceBody321_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_129 sourceBody321_135

def sourceBody321_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody321_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody321_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_138 sourceBody321_0

def sourceBody321_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_137 sourceBody321_139

def sourceBody321_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_136 sourceBody321_140

def sourceBody321_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_4 sourceBody321_141

def sourceBody321_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_142

def sourceBody321_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_3 sourceBody321_143

def sourceBody321_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_144

def sourceBody321_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_2 sourceBody321_145

def sourceBody321_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_146

def sourceBody321_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_1 sourceBody321_147

def sourceBody321_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody321_0 sourceBody321_148

def source321 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (321, 3, sourceBody321_149)
end InitECandidate.Proofs.WordStages
