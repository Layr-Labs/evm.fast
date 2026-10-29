import InitECandidate.Proofs.WordStages.Source813
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody829_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody829_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody829_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 18#64)

def sourceBody829_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody829_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody829_0, 829, 2)) (some 80) ([26, 6]) (some (26, sourceBody829_3, 829, 3))

def sourceBody829_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody829_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_4 sourceBody829_5

def sourceBody829_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_6 sourceBody829_0

def sourceBody829_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_2 sourceBody829_7

def sourceBody829_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_1 sourceBody829_8

def sourceBody829_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody829_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody829_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody829_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody829_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 24) sourceBody829_12 sourceBody829_13

def sourceBody829_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_14 sourceBody829_5

def sourceBody829_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody829_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody829_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody829_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_18 sourceBody829_0

def sourceBody829_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_17 sourceBody829_19

def sourceBody829_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody829_20 sourceBody829_0

def sourceBody829_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_21 sourceBody829_5

def sourceBody829_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_22 sourceBody829_0

def sourceBody829_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_16 sourceBody829_23

def sourceBody829_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_15 sourceBody829_24

def sourceBody829_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_11 sourceBody829_25

def sourceBody829_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_10 sourceBody829_26

def sourceBody829_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 18#64])

def sourceBody829_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def sourceBody829_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_29 sourceBody829_0

def sourceBody829_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_28 sourceBody829_30

def sourceBody829_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 26)

def sourceBody829_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 19#64])

def sourceBody829_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 24 (Flapjack.WordLangAddr.addr 24 0#64))

def sourceBody829_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_34 sourceBody829_0

def sourceBody829_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_33 sourceBody829_35

def sourceBody829_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody829_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody829_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody829_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody829_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody829_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 22) sourceBody829_40 sourceBody829_41

def sourceBody829_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_42 sourceBody829_5

def sourceBody829_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody829_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 16)

def sourceBody829_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody829_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 18#64)

def sourceBody829_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def sourceBody829_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_48 sourceBody829_0

def sourceBody829_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_47 sourceBody829_49

def sourceBody829_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody829_50 sourceBody829_0

def sourceBody829_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_51 sourceBody829_5

def sourceBody829_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_52 sourceBody829_0

def sourceBody829_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_44 sourceBody829_53

def sourceBody829_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_43 sourceBody829_54

def sourceBody829_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_46 sourceBody829_55

def sourceBody829_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_45 sourceBody829_56

def sourceBody829_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody829_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_58 sourceBody829_49

def sourceBody829_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_57 sourceBody829_59

def sourceBody829_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody829_60 sourceBody829_0

def sourceBody829_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_61 sourceBody829_5

def sourceBody829_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_62 sourceBody829_0

def sourceBody829_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_44 sourceBody829_63

def sourceBody829_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_43 sourceBody829_64

def sourceBody829_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_39 sourceBody829_65

def sourceBody829_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_38 sourceBody829_66

def sourceBody829_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 22) sourceBody829_40 sourceBody829_41

def sourceBody829_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_68 sourceBody829_5

def sourceBody829_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody829_59 sourceBody829_0

def sourceBody829_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_70 sourceBody829_5

def sourceBody829_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_71 sourceBody829_0

def sourceBody829_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_44 sourceBody829_72

def sourceBody829_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_69 sourceBody829_73

def sourceBody829_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_46 sourceBody829_74

def sourceBody829_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_38 sourceBody829_75

def sourceBody829_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_67 sourceBody829_76

def sourceBody829_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.WordRegImm.reg 22) sourceBody829_40 sourceBody829_41

def sourceBody829_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_78 sourceBody829_5

def sourceBody829_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody829_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody829_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody829_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 8) sourceBody829_82 sourceBody829_80

def sourceBody829_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_83 sourceBody829_5

def sourceBody829_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 17#64)

def sourceBody829_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody829_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody829_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody829_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 18 (Flapjack.WordRegImm.reg 34) sourceBody829_87 sourceBody829_88

def sourceBody829_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_89 sourceBody829_5

def sourceBody829_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody829_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody829_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody829_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 12) sourceBody829_93 sourceBody829_91

def sourceBody829_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_94 sourceBody829_5

def sourceBody829_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 20])

def sourceBody829_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 16)

def sourceBody829_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_97 sourceBody829_49

def sourceBody829_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody829_98 sourceBody829_0

def sourceBody829_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_99 sourceBody829_5

def sourceBody829_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_100 sourceBody829_0

def sourceBody829_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_96 sourceBody829_101

def sourceBody829_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_95 sourceBody829_102

def sourceBody829_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_92 sourceBody829_103

def sourceBody829_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_91 sourceBody829_104

def sourceBody829_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_90 sourceBody829_105

def sourceBody829_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_86 sourceBody829_106

def sourceBody829_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_85 sourceBody829_107

def sourceBody829_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_84 sourceBody829_108

def sourceBody829_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_81 sourceBody829_109

def sourceBody829_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_80 sourceBody829_110

def sourceBody829_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_79 sourceBody829_111

def sourceBody829_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_39 sourceBody829_112

def sourceBody829_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_45 sourceBody829_113

def sourceBody829_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_77 sourceBody829_114

def sourceBody829_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_115 sourceBody829_59

def sourceBody829_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_37 sourceBody829_116

def sourceBody829_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_36 sourceBody829_117

def sourceBody829_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_32 sourceBody829_118

def sourceBody829_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_31 sourceBody829_119

def sourceBody829_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_27 sourceBody829_120

def sourceBody829_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_9 sourceBody829_121

def sourceBody829_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_0 sourceBody829_122

def sourceBody829_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody829_0 sourceBody829_123

def source829 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (829, 2, sourceBody829_124)
end InitECandidate.Proofs.WordStages
