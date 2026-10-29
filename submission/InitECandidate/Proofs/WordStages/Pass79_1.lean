import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass79_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word79_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def word79_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 4)]

def word79_1_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 2)]

def word79_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 21 21 (Flapjack.WordRegImm.reg 22)))

def word79_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_2 word79_1_3

def word79_1_5 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_4

def word79_1_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 14 21 (Flapjack.WordRegImm.imm 7#64)))

def word79_1_7 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_5 word79_1_6

def word79_1_8 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_0 word79_1_7

def word79_1_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def word79_1_10 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_8 word79_1_9

def word79_1_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1#64)

def word79_1_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word79_1_13 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_11 word79_1_12

def word79_1_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def word79_1_15 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_13 word79_1_14

def word79_1_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 6)]

def word79_1_17 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_15 word79_1_16

def word79_1_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 20#64)

def word79_1_19 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_17 word79_1_18

def word79_1_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 2)]

def word79_1_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 21 0#64))

def word79_1_22 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_21

def word79_1_23 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_15 word79_1_22

def word79_1_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 21 0#64))

def word79_1_25 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_24

def word79_1_26 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_23 word79_1_25

def word79_1_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def word79_1_28 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_15 word79_1_27

def word79_1_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def word79_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_28 word79_1_29

def word79_1_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word79_1_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 20) word79_1_30 word79_1_31

def word79_1_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def word79_1_34 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_33 word79_1_12

def word79_1_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def word79_1_36 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_34 word79_1_35

def word79_1_37 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_32 word79_1_36

def word79_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_26 word79_1_37

def word79_1_39 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_38 word79_1_12

def word79_1_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 21 8#64))

def word79_1_41 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_40

def word79_1_42 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_39 word79_1_41

def word79_1_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 21 8#64))

def word79_1_44 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_43

def word79_1_45 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_42 word79_1_44

def word79_1_46 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_45 word79_1_37

def word79_1_47 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_46 word79_1_12

def word79_1_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 16#64)))

def word79_1_49 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_48

def word79_1_50 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_47 word79_1_49

def word79_1_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def word79_1_52 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_50 word79_1_51

def word79_1_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 16#64)))

def word79_1_54 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_53

def word79_1_55 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_52 word79_1_54

def word79_1_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def word79_1_57 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_55 word79_1_56

def word79_1_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 18)]

def word79_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_57 word79_1_58

def word79_1_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 14)]

def word79_1_61 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_59 word79_1_60

def word79_1_62 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_14 word79_1_12

def word79_1_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def word79_1_64 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_62 word79_1_63

def word79_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_64 word79_1_27

def word79_1_66 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_65 word79_1_29

def word79_1_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 16) word79_1_66 word79_1_31

def word79_1_68 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_35 word79_1_12

def word79_1_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def word79_1_70 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_68 word79_1_69

def word79_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_67 word79_1_70

def word79_1_72 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_61 word79_1_71

def word79_1_73 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_72 word79_1_12

def word79_1_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 17#64)))

def word79_1_75 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_74

def word79_1_76 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_73 word79_1_75

def word79_1_77 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_76 word79_1_51

def word79_1_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 17#64)))

def word79_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_78

def word79_1_80 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_77 word79_1_79

def word79_1_81 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_80 word79_1_56

def word79_1_82 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_81 word79_1_58

def word79_1_83 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_82 word79_1_60

def word79_1_84 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_83 word79_1_71

def word79_1_85 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_84 word79_1_12

def word79_1_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 18#64)))

def word79_1_87 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_86

def word79_1_88 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_85 word79_1_87

def word79_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_88 word79_1_51

def word79_1_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 18#64)))

def word79_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_90

def word79_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_89 word79_1_91

def word79_1_93 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_92 word79_1_56

def word79_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_93 word79_1_58

def word79_1_95 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_94 word79_1_60

def word79_1_96 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_95 word79_1_71

def word79_1_97 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_96 word79_1_12

def word79_1_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 19#64)))

def word79_1_99 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_98

def word79_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_97 word79_1_99

def word79_1_101 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_100 word79_1_51

def word79_1_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 19#64)))

def word79_1_103 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_102

def word79_1_104 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_101 word79_1_103

def word79_1_105 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_104 word79_1_56

def word79_1_106 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_105 word79_1_58

def word79_1_107 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_106 word79_1_60

def word79_1_108 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_107 word79_1_71

def word79_1_109 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_108 word79_1_12

def word79_1_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def word79_1_111 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_109 word79_1_110

def word79_1_112 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_111 word79_1_29

def word79_1_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 20) word79_1_112 word79_1_31

def word79_1_114 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_113 word79_1_36

def word79_1_115 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_19 word79_1_114

def word79_1_116 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_115 word79_1_12

def word79_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_116 word79_1_16

def word79_1_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 32#64)

def word79_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_117 word79_1_118

def word79_1_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 21 16#64))

def word79_1_121 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_120

def word79_1_122 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_47 word79_1_121

def word79_1_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 21 16#64))

def word79_1_124 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_123

def word79_1_125 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_122 word79_1_124

def word79_1_126 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_125 word79_1_37

def word79_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_126 word79_1_12

def word79_1_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 21 24#64))

def word79_1_129 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_128

def word79_1_130 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_127 word79_1_129

def word79_1_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 21 24#64))

def word79_1_132 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_131

def word79_1_133 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_130 word79_1_132

def word79_1_134 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_133 word79_1_37

def word79_1_135 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_134 word79_1_12

def word79_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_135 word79_1_110

def word79_1_137 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_136 word79_1_29

def word79_1_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 20) word79_1_137 word79_1_31

def word79_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_138 word79_1_36

def word79_1_140 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_119 word79_1_139

def word79_1_141 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_140 word79_1_12

def word79_1_142 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_141 word79_1_16

def word79_1_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 52#64)

def word79_1_144 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_142 word79_1_143

def word79_1_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 21 32#64))

def word79_1_146 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_145

def word79_1_147 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_135 word79_1_146

def word79_1_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 21 32#64))

def word79_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_148

def word79_1_150 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_147 word79_1_149

def word79_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_150 word79_1_37

def word79_1_152 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_151 word79_1_12

def word79_1_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 21 40#64))

def word79_1_154 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_153

def word79_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_152 word79_1_154

def word79_1_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 21 40#64))

def word79_1_157 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_156

def word79_1_158 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_155 word79_1_157

def word79_1_159 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_158 word79_1_37

def word79_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_159 word79_1_12

def word79_1_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 48#64)))

def word79_1_162 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_161

def word79_1_163 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_160 word79_1_162

def word79_1_164 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_163 word79_1_51

def word79_1_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 48#64)))

def word79_1_166 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_165

def word79_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_164 word79_1_166

def word79_1_168 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_167 word79_1_56

def word79_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_168 word79_1_58

def word79_1_170 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_169 word79_1_60

def word79_1_171 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_170 word79_1_71

def word79_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_171 word79_1_12

def word79_1_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 49#64)))

def word79_1_174 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_173

def word79_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_172 word79_1_174

def word79_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_175 word79_1_51

def word79_1_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 49#64)))

def word79_1_178 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_177

def word79_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_176 word79_1_178

def word79_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_179 word79_1_56

def word79_1_181 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_180 word79_1_58

def word79_1_182 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_181 word79_1_60

def word79_1_183 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_182 word79_1_71

def word79_1_184 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_183 word79_1_12

def word79_1_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 50#64)))

def word79_1_186 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_185

def word79_1_187 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_184 word79_1_186

def word79_1_188 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_187 word79_1_51

def word79_1_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 50#64)))

def word79_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_189

def word79_1_191 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_188 word79_1_190

def word79_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_191 word79_1_56

def word79_1_193 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_192 word79_1_58

def word79_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_193 word79_1_60

def word79_1_195 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_194 word79_1_71

def word79_1_196 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_195 word79_1_12

def word79_1_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 51#64)))

def word79_1_198 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_20 word79_1_197

def word79_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_196 word79_1_198

def word79_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_199 word79_1_51

def word79_1_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 51#64)))

def word79_1_202 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_1 word79_1_201

def word79_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_200 word79_1_202

def word79_1_204 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_203 word79_1_56

def word79_1_205 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_204 word79_1_58

def word79_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_205 word79_1_60

def word79_1_207 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_206 word79_1_71

def word79_1_208 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_207 word79_1_12

def word79_1_209 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_208 word79_1_110

def word79_1_210 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_209 word79_1_29

def word79_1_211 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 20) word79_1_210 word79_1_31

def word79_1_212 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_211 word79_1_36

def word79_1_213 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_144 word79_1_212

def word79_1_214 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_213 word79_1_12

def word79_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_214 word79_1_12

def word79_1_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(21, 10)]

def word79_1_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 21 (Flapjack.WordRegImm.imm 32#64)))

def word79_1_218 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_216 word79_1_217

def word79_1_219 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_16 word79_1_218

def word79_1_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21 21 (Flapjack.WordRegImm.reg 22)))

def word79_1_221 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_2 word79_1_220

def word79_1_222 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_216 word79_1_221

def word79_1_223 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_21

def word79_1_224 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_15 word79_1_223

def word79_1_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 4)]

def word79_1_226 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_225 word79_1_220

def word79_1_227 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_216 word79_1_226

def word79_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_24

def word79_1_229 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_224 word79_1_228

def word79_1_230 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_229 word79_1_37

def word79_1_231 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_230 word79_1_12

def word79_1_232 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_40

def word79_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_231 word79_1_232

def word79_1_234 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_43

def word79_1_235 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_233 word79_1_234

def word79_1_236 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_235 word79_1_37

def word79_1_237 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_236 word79_1_12

def word79_1_238 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_120

def word79_1_239 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_237 word79_1_238

def word79_1_240 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_123

def word79_1_241 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_239 word79_1_240

def word79_1_242 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_241 word79_1_37

def word79_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_242 word79_1_12

def word79_1_244 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_128

def word79_1_245 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_243 word79_1_244

def word79_1_246 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_131

def word79_1_247 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_245 word79_1_246

def word79_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_247 word79_1_37

def word79_1_249 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_248 word79_1_12

def word79_1_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 32#64)))

def word79_1_251 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_216 word79_1_250

def word79_1_252 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_249 word79_1_251

def word79_1_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 18)]

def word79_1_254 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_252 word79_1_253

def word79_1_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word79_1_256 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_254 word79_1_255

def word79_1_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word79_1_258 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_36 word79_1_257

def word79_1_259 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 20) word79_1_256 word79_1_258

def word79_1_260 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_219 word79_1_259

def word79_1_261 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_260 word79_1_12

def word79_1_262 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) word79_1_261 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def word79_1_263 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_215 word79_1_262

def word79_1_264 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_263 word79_1_12

def word79_1_265 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_264 word79_1_12

def word79_1_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 21 (Flapjack.WordRegImm.imm 8#64)))

def word79_1_267 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_216 word79_1_266

def word79_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_16 word79_1_267

def word79_1_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 8#64)))

def word79_1_270 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_216 word79_1_269

def word79_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_231 word79_1_270

def word79_1_272 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_271 word79_1_253

def word79_1_273 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_272 word79_1_255

def word79_1_274 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 20) word79_1_273 word79_1_258

def word79_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_268 word79_1_274

def word79_1_276 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_275 word79_1_12

def word79_1_277 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) word79_1_276 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def word79_1_278 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_265 word79_1_277

def word79_1_279 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_278 word79_1_12

def word79_1_280 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 20) word79_1_279 word79_1_36

def word79_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_10 word79_1_280

def word79_1_282 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_281 word79_1_12

def word79_1_283 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_282 word79_1_12

def word79_1_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.reg 22)))

def word79_1_285 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_2 word79_1_284

def word79_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_216 word79_1_285

def word79_1_287 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_15 word79_1_286

def word79_1_288 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_287 word79_1_51

def word79_1_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.reg 22)))

def word79_1_290 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_225 word79_1_289

def word79_1_291 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_216 word79_1_290

def word79_1_292 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_288 word79_1_291

def word79_1_293 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_292 word79_1_56

def word79_1_294 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_293 word79_1_58

def word79_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_294 word79_1_60

def word79_1_296 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_295 word79_1_71

def word79_1_297 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_296 word79_1_12

def word79_1_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 1#64)))

def word79_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_298

def word79_1_300 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_297 word79_1_299

def word79_1_301 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_300 word79_1_51

def word79_1_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 1#64)))

def word79_1_303 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_302

def word79_1_304 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_301 word79_1_303

def word79_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_304 word79_1_56

def word79_1_306 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_305 word79_1_58

def word79_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_306 word79_1_60

def word79_1_308 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_307 word79_1_71

def word79_1_309 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_308 word79_1_12

def word79_1_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 2#64)))

def word79_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_310

def word79_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_309 word79_1_311

def word79_1_313 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_312 word79_1_51

def word79_1_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 2#64)))

def word79_1_315 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_314

def word79_1_316 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_313 word79_1_315

def word79_1_317 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_316 word79_1_56

def word79_1_318 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_317 word79_1_58

def word79_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_318 word79_1_60

def word79_1_320 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_319 word79_1_71

def word79_1_321 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_320 word79_1_12

def word79_1_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 3#64)))

def word79_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_322

def word79_1_324 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_321 word79_1_323

def word79_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_324 word79_1_51

def word79_1_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 3#64)))

def word79_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_326

def word79_1_328 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_325 word79_1_327

def word79_1_329 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_328 word79_1_56

def word79_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_329 word79_1_58

def word79_1_331 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_330 word79_1_60

def word79_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_331 word79_1_71

def word79_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_332 word79_1_12

def word79_1_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 4#64)))

def word79_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_334

def word79_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_333 word79_1_335

def word79_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_336 word79_1_51

def word79_1_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 4#64)))

def word79_1_339 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_338

def word79_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_337 word79_1_339

def word79_1_341 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_340 word79_1_56

def word79_1_342 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_341 word79_1_58

def word79_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_342 word79_1_60

def word79_1_344 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_343 word79_1_71

def word79_1_345 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_344 word79_1_12

def word79_1_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 5#64)))

def word79_1_347 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_346

def word79_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_345 word79_1_347

def word79_1_349 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_348 word79_1_51

def word79_1_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 5#64)))

def word79_1_351 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_350

def word79_1_352 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_349 word79_1_351

def word79_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_352 word79_1_56

def word79_1_354 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_353 word79_1_58

def word79_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_354 word79_1_60

def word79_1_356 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_355 word79_1_71

def word79_1_357 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_356 word79_1_12

def word79_1_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 6#64)))

def word79_1_359 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_358

def word79_1_360 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_357 word79_1_359

def word79_1_361 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_360 word79_1_51

def word79_1_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 6#64)))

def word79_1_363 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_362

def word79_1_364 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_361 word79_1_363

def word79_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_364 word79_1_56

def word79_1_366 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_365 word79_1_58

def word79_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_366 word79_1_60

def word79_1_368 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_367 word79_1_71

def word79_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_368 word79_1_12

def word79_1_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 21 (Flapjack.WordRegImm.imm 7#64)))

def word79_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_222 word79_1_370

def word79_1_372 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_369 word79_1_371

def word79_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_372 word79_1_51

def word79_1_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 21 (Flapjack.WordRegImm.imm 7#64)))

def word79_1_375 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_227 word79_1_374

def word79_1_376 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_373 word79_1_375

def word79_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_376 word79_1_56

def word79_1_378 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_377 word79_1_58

def word79_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_378 word79_1_60

def word79_1_380 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_379 word79_1_71

def word79_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_380 word79_1_12

def word79_1_382 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_381 word79_1_270

def word79_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_382 word79_1_253

def word79_1_384 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_383 word79_1_255

def word79_1_385 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 20) word79_1_384 word79_1_258

def word79_1_386 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_268 word79_1_385

def word79_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_386 word79_1_12

def word79_1_388 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) word79_1_387 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def word79_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_283 word79_1_388

def word79_1_390 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_389 word79_1_12

def word79_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_390 word79_1_12

def word79_1_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 10)]

def word79_1_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 6)]

def word79_1_394 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_392 word79_1_393

def word79_1_395 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_216 word79_1_298

def word79_1_396 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_297 word79_1_395

def word79_1_397 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_396 word79_1_253

def word79_1_398 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_397 word79_1_255

def word79_1_399 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 20) word79_1_398 word79_1_258

def word79_1_400 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_394 word79_1_399

def word79_1_401 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_400 word79_1_12

def word79_1_402 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) word79_1_401 (Flapjack.Spt.ls PUnit.unit)

def word79_1_403 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_391 word79_1_402

def word79_1_404 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_403 word79_1_12

def word79_1_405 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_404 word79_1_110

def word79_1_406 : WordLangProgHOL (BitVec 64) :=
.seq word79_1_405 word79_1_29

def pass79_1 : WordLangProgHOL (BitVec 64) :=
word79_1_406
theorem pass79_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass79_0) + 1) (pass79_0) = pass79_1 := by
  kernel_rfl
#print axioms pass79_1_eq
end InitECandidate.Proofs.WordStages
