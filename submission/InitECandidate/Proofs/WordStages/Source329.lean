import InitECandidate.Proofs.WordStages.Source313
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody329_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody329_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody329_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody329_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody329_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 14) sourceBody329_2 sourceBody329_3

def sourceBody329_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody329_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_4 sourceBody329_5

def sourceBody329_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody329_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody329_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody329_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody329_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody329_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_10 sourceBody329_11

def sourceBody329_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_9 sourceBody329_12

def sourceBody329_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_8 sourceBody329_13

def sourceBody329_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody329_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody329_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_16 sourceBody329_11

def sourceBody329_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_15 sourceBody329_17

def sourceBody329_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_14 sourceBody329_18

def sourceBody329_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody329_19 sourceBody329_11

def sourceBody329_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_20 sourceBody329_5

def sourceBody329_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_21 sourceBody329_11

def sourceBody329_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_7 sourceBody329_22

def sourceBody329_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_6 sourceBody329_23

def sourceBody329_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_1 sourceBody329_24

def sourceBody329_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_0 sourceBody329_25

def sourceBody329_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody329_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 160#64)

def sourceBody329_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_28 sourceBody329_12

def sourceBody329_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_8 sourceBody329_29

def sourceBody329_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody329_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody329_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody329_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody329_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody329_11, 329, 2)) (some 77) ([8, 14, 10]) (some (8, sourceBody329_34, 329, 3))

def sourceBody329_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_35 sourceBody329_5

def sourceBody329_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_36 sourceBody329_11

def sourceBody329_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_33 sourceBody329_37

def sourceBody329_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_32 sourceBody329_38

def sourceBody329_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_31 sourceBody329_39

def sourceBody329_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_40

def sourceBody329_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_41

def sourceBody329_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_30 sourceBody329_42

def sourceBody329_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 33#64)

def sourceBody329_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_44 sourceBody329_17

def sourceBody329_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_43 sourceBody329_45

def sourceBody329_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody329_46 sourceBody329_11

def sourceBody329_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_47 sourceBody329_5

def sourceBody329_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_48 sourceBody329_11

def sourceBody329_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_7 sourceBody329_49

def sourceBody329_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_6 sourceBody329_50

def sourceBody329_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_1 sourceBody329_51

def sourceBody329_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_27 sourceBody329_52

def sourceBody329_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_26 sourceBody329_53

def sourceBody329_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody329_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody329_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody329_11, 329, 4)) (some 286) ([8]) (some (8, sourceBody329_34, 329, 5))

def sourceBody329_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_57 sourceBody329_5

def sourceBody329_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_58 sourceBody329_11

def sourceBody329_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_56 sourceBody329_59

def sourceBody329_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_60

def sourceBody329_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_61

def sourceBody329_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody329_62 sourceBody329_11

def sourceBody329_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_63 sourceBody329_5

def sourceBody329_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_64 sourceBody329_11

def sourceBody329_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_7 sourceBody329_65

def sourceBody329_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_6 sourceBody329_66

def sourceBody329_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_1 sourceBody329_67

def sourceBody329_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_55 sourceBody329_68

def sourceBody329_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_54 sourceBody329_69

def sourceBody329_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody329_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody329_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody329_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody329_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody329_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 18) sourceBody329_74 sourceBody329_75

def sourceBody329_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_76 sourceBody329_5

def sourceBody329_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody329_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody329_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody329_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody329_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody329_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody329_11, 329, 6)) (some 77) ([10, 18, 6]) (some (10, sourceBody329_82, 329, 7))

def sourceBody329_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_83 sourceBody329_5

def sourceBody329_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_84 sourceBody329_11

def sourceBody329_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_81 sourceBody329_85

def sourceBody329_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_80 sourceBody329_86

def sourceBody329_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_79 sourceBody329_87

def sourceBody329_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_88

def sourceBody329_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_89

def sourceBody329_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody329_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody329_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_92 sourceBody329_11

def sourceBody329_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_91 sourceBody329_93

def sourceBody329_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_90 sourceBody329_94

def sourceBody329_96 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody329_95 sourceBody329_11

def sourceBody329_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_96 sourceBody329_5

def sourceBody329_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_97 sourceBody329_11

def sourceBody329_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_78 sourceBody329_98

def sourceBody329_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_77 sourceBody329_99

def sourceBody329_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_73 sourceBody329_100

def sourceBody329_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_7 sourceBody329_101

def sourceBody329_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody329_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody329_11, 329, 8)) (some 328) ([10]) (some (10, sourceBody329_82, 329, 9))

def sourceBody329_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_104 sourceBody329_5

def sourceBody329_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_105 sourceBody329_11

def sourceBody329_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_103 sourceBody329_106

def sourceBody329_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 160#64)

def sourceBody329_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 18 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody329_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_109 sourceBody329_11

def sourceBody329_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_108 sourceBody329_110

def sourceBody329_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_79 sourceBody329_111

def sourceBody329_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody329_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody329_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody329_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody329_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody329_11, 329, 10)) (some 77) ([18, 6, 12]) (some (18, sourceBody329_116, 329, 11))

def sourceBody329_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_117 sourceBody329_5

def sourceBody329_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_118 sourceBody329_11

def sourceBody329_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_115 sourceBody329_119

def sourceBody329_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_114 sourceBody329_120

def sourceBody329_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_113 sourceBody329_121

def sourceBody329_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_122

def sourceBody329_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_123

def sourceBody329_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_112 sourceBody329_124

def sourceBody329_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 33#64)

def sourceBody329_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody329_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_127 sourceBody329_11

def sourceBody329_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_126 sourceBody329_128

def sourceBody329_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_125 sourceBody329_129

def sourceBody329_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_107 sourceBody329_130

def sourceBody329_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_131

def sourceBody329_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_132

def sourceBody329_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_102 sourceBody329_133

def sourceBody329_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_72 sourceBody329_134

def sourceBody329_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_135

def sourceBody329_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_71 sourceBody329_136

def sourceBody329_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_11 sourceBody329_137

def sourceBody329_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody329_70 sourceBody329_138

def source329 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (329, 3, sourceBody329_139)
end InitECandidate.Proofs.WordStages
