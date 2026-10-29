import InitECandidate.Proofs.WordStages.Source297
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody313_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody313_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody313_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody313_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def sourceBody313_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody313_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody313_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody313_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 18) sourceBody313_5 sourceBody313_6

def sourceBody313_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody313_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_7 sourceBody313_8

def sourceBody313_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody313_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody313_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody313_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody313_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody313_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody313_0, 313, 2)) (some 79) ([26, 18, 30]) (some (26, sourceBody313_14, 313, 3))

def sourceBody313_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_15 sourceBody313_8

def sourceBody313_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_16 sourceBody313_0

def sourceBody313_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_13 sourceBody313_17

def sourceBody313_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_12 sourceBody313_18

def sourceBody313_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_11 sourceBody313_19

def sourceBody313_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody313_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody313_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody313_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody313_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 30) sourceBody313_23 sourceBody313_24

def sourceBody313_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_25 sourceBody313_8

def sourceBody313_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody313_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody313_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody313_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody313_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 30

def sourceBody313_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_31 sourceBody313_0

def sourceBody313_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_30 sourceBody313_32

def sourceBody313_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_33 sourceBody313_0

def sourceBody313_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_29 sourceBody313_34

def sourceBody313_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_35

def sourceBody313_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_28 sourceBody313_36

def sourceBody313_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_37

def sourceBody313_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody313_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody313_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_40 sourceBody313_34

def sourceBody313_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_41

def sourceBody313_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_39 sourceBody313_42

def sourceBody313_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_43

def sourceBody313_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_38 sourceBody313_44

def sourceBody313_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody313_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody313_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_47 sourceBody313_0

def sourceBody313_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_46 sourceBody313_48

def sourceBody313_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_45 sourceBody313_49

def sourceBody313_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody313_50 sourceBody313_0

def sourceBody313_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_51 sourceBody313_8

def sourceBody313_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_52 sourceBody313_0

def sourceBody313_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_27 sourceBody313_53

def sourceBody313_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_26 sourceBody313_54

def sourceBody313_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_22 sourceBody313_55

def sourceBody313_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_21 sourceBody313_56

def sourceBody313_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_20 sourceBody313_57

def sourceBody313_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_58

def sourceBody313_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_59

def sourceBody313_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody313_60 sourceBody313_0

def sourceBody313_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_61 sourceBody313_8

def sourceBody313_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_62 sourceBody313_0

def sourceBody313_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_10 sourceBody313_63

def sourceBody313_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_9 sourceBody313_64

def sourceBody313_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_4 sourceBody313_65

def sourceBody313_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_3 sourceBody313_66

def sourceBody313_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 32)

def sourceBody313_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody313_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody313_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody313_0, 313, 4)) (some 291) ([26, 18, 30, 16]) (some (26, sourceBody313_14, 313, 5))

def sourceBody313_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_71 sourceBody313_8

def sourceBody313_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_72 sourceBody313_0

def sourceBody313_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_70 sourceBody313_73

def sourceBody313_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_69 sourceBody313_74

def sourceBody313_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_68 sourceBody313_75

def sourceBody313_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_11 sourceBody313_76

def sourceBody313_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 14])

def sourceBody313_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.var 14])

def sourceBody313_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody313_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody313_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 14])

def sourceBody313_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 14])

def sourceBody313_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody313_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody313_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody313_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody313_0, 313, 6)) (some 312) ([18, 30, 16, 28, 22, 34, 12, 24]) (some (18, sourceBody313_86, 313, 7))

def sourceBody313_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_87 sourceBody313_8

def sourceBody313_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_88 sourceBody313_0

def sourceBody313_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_85 sourceBody313_89

def sourceBody313_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_84 sourceBody313_90

def sourceBody313_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_83 sourceBody313_91

def sourceBody313_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_82 sourceBody313_92

def sourceBody313_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_81 sourceBody313_93

def sourceBody313_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_80 sourceBody313_94

def sourceBody313_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_79 sourceBody313_95

def sourceBody313_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_78 sourceBody313_96

def sourceBody313_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody313_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody313_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 30 (Flapjack.WordRegImm.reg 16) sourceBody313_99 sourceBody313_22

def sourceBody313_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_100 sourceBody313_8

def sourceBody313_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 30)

def sourceBody313_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody313_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody313_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody313_106 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 297) ([0, 18, 30, 16]) (none)

def sourceBody313_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_106 sourceBody313_0

def sourceBody313_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_105 sourceBody313_107

def sourceBody313_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_104 sourceBody313_108

def sourceBody313_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_103 sourceBody313_109

def sourceBody313_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody313_110 sourceBody313_0

def sourceBody313_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_111 sourceBody313_8

def sourceBody313_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_112 sourceBody313_0

def sourceBody313_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_102 sourceBody313_113

def sourceBody313_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_101 sourceBody313_114

def sourceBody313_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_98 sourceBody313_115

def sourceBody313_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_22 sourceBody313_116

def sourceBody313_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody313_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody313_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_119 sourceBody313_0

def sourceBody313_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_118 sourceBody313_120

def sourceBody313_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_117 sourceBody313_121

def sourceBody313_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_97 sourceBody313_122

def sourceBody313_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_123

def sourceBody313_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_124

def sourceBody313_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_77 sourceBody313_125

def sourceBody313_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_126

def sourceBody313_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_127

def sourceBody313_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_67 sourceBody313_128

def sourceBody313_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_2 sourceBody313_129

def sourceBody313_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_130

def sourceBody313_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_1 sourceBody313_131

def sourceBody313_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody313_0 sourceBody313_132

def source313 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (313, 6, sourceBody313_133)
end InitECandidate.Proofs.WordStages
