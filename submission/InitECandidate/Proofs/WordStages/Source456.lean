import InitECandidate.Proofs.WordStages.Source440
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody456_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody456_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody456_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody456_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody456_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 16) sourceBody456_2 sourceBody456_3

def sourceBody456_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody456_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_4 sourceBody456_5

def sourceBody456_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody456_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 4))

def sourceBody456_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody456_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 16) sourceBody456_2 sourceBody456_3

def sourceBody456_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_10 sourceBody456_5

def sourceBody456_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody456_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody456_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody456_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_13 sourceBody456_14

def sourceBody456_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_12 sourceBody456_15

def sourceBody456_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody456_16 sourceBody456_14

def sourceBody456_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_17 sourceBody456_5

def sourceBody456_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_18 sourceBody456_14

def sourceBody456_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_7 sourceBody456_19

def sourceBody456_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_11 sourceBody456_20

def sourceBody456_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_9 sourceBody456_21

def sourceBody456_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_8 sourceBody456_22

def sourceBody456_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody456_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_24 sourceBody456_15

def sourceBody456_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_23 sourceBody456_25

def sourceBody456_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody456_26 sourceBody456_14

def sourceBody456_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_27 sourceBody456_5

def sourceBody456_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_28 sourceBody456_14

def sourceBody456_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_7 sourceBody456_29

def sourceBody456_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_6 sourceBody456_30

def sourceBody456_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_1 sourceBody456_31

def sourceBody456_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_0 sourceBody456_32

def sourceBody456_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody456_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody456_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody456_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody456_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 26) sourceBody456_37 sourceBody456_1

def sourceBody456_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_38 sourceBody456_5

def sourceBody456_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody456_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody456_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_41 sourceBody456_14

def sourceBody456_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_42 sourceBody456_14

def sourceBody456_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody456_43 sourceBody456_14

def sourceBody456_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_44 sourceBody456_5

def sourceBody456_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_45 sourceBody456_14

def sourceBody456_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_40 sourceBody456_46

def sourceBody456_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_39 sourceBody456_47

def sourceBody456_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_36 sourceBody456_48

def sourceBody456_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_35 sourceBody456_49

def sourceBody456_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody456_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody456_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody456_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 26 (Flapjack.WordRegImm.reg 8) sourceBody456_52 sourceBody456_53

def sourceBody456_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_54 sourceBody456_5

def sourceBody456_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody456_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 20])

def sourceBody456_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody456_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_58 sourceBody456_14

def sourceBody456_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_57 sourceBody456_59

def sourceBody456_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody456_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 20])

def sourceBody456_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody456_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_63 sourceBody456_14

def sourceBody456_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_62 sourceBody456_64

def sourceBody456_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody456_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody456_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody456_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody456_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody456_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 12) sourceBody456_69 sourceBody456_70

def sourceBody456_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_71 sourceBody456_5

def sourceBody456_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody456_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody456_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody456_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.WordRegImm.reg 12) sourceBody456_69 sourceBody456_70

def sourceBody456_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_76 sourceBody456_5

def sourceBody456_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody456_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody456_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_79 sourceBody456_14

def sourceBody456_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_78 sourceBody456_80

def sourceBody456_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody456_81 sourceBody456_14

def sourceBody456_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_82 sourceBody456_5

def sourceBody456_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_83 sourceBody456_14

def sourceBody456_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_73 sourceBody456_84

def sourceBody456_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_77 sourceBody456_85

def sourceBody456_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_75 sourceBody456_86

def sourceBody456_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_74 sourceBody456_87

def sourceBody456_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody456_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_89 sourceBody456_80

def sourceBody456_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_88 sourceBody456_90

def sourceBody456_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody456_91 sourceBody456_14

def sourceBody456_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_92 sourceBody456_5

def sourceBody456_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_93 sourceBody456_14

def sourceBody456_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_73 sourceBody456_94

def sourceBody456_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_72 sourceBody456_95

def sourceBody456_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_68 sourceBody456_96

def sourceBody456_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_67 sourceBody456_97

def sourceBody456_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody456_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody456_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_100 sourceBody456_14

def sourceBody456_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_101 sourceBody456_14

def sourceBody456_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_99 sourceBody456_102

def sourceBody456_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_14 sourceBody456_103

def sourceBody456_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_98 sourceBody456_104

def sourceBody456_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_66 sourceBody456_105

def sourceBody456_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_65 sourceBody456_106

def sourceBody456_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_61 sourceBody456_107

def sourceBody456_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_60 sourceBody456_108

def sourceBody456_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody456_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_109 sourceBody456_110

def sourceBody456_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody456_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody456_111 sourceBody456_112

def sourceBody456_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_113 sourceBody456_5

def sourceBody456_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_114 sourceBody456_14

def sourceBody456_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_56 sourceBody456_115

def sourceBody456_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_55 sourceBody456_116

def sourceBody456_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_51 sourceBody456_117

def sourceBody456_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_7 sourceBody456_118

def sourceBody456_120 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody456_119 (Flapjack.Spt.ls PUnit.unit)

def sourceBody456_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_120 sourceBody456_5

def sourceBody456_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_5 sourceBody456_121

def sourceBody456_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody456_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_123 sourceBody456_14

def sourceBody456_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_1 sourceBody456_124

def sourceBody456_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_122 sourceBody456_125

def sourceBody456_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_3 sourceBody456_126

def sourceBody456_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_14 sourceBody456_127

def sourceBody456_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_50 sourceBody456_128

def sourceBody456_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_34 sourceBody456_129

def sourceBody456_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_14 sourceBody456_130

def sourceBody456_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody456_33 sourceBody456_131

def source456 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (456, 4, sourceBody456_132)
end InitECandidate.Proofs.WordStages
