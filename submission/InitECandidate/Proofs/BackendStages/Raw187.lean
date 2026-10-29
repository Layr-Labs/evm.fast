import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function187
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody187_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody187_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody187_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody187_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody187_4 : StackLang.HolProg 64 :=
.seq rawBody187_2 rawBody187_3

def rawBody187_5 : StackLang.HolProg 64 :=
.seq rawBody187_1 rawBody187_4

def rawBody187_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 213#64)

def rawBody187_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody187_9 : StackLang.HolProg 64 :=
.seq rawBody187_7 rawBody187_8

def rawBody187_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody187_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody187_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody187_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 187 3

def rawBody187_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody187_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody187_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody187_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody187_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody187_20 : StackLang.HolProg 64 :=
.seq rawBody187_18 rawBody187_19

def rawBody187_21 : StackLang.HolProg 64 :=
.seq rawBody187_17 rawBody187_20

def rawBody187_22 : StackLang.HolProg 64 :=
.seq rawBody187_16 rawBody187_21

def rawBody187_23 : StackLang.HolProg 64 :=
.seq rawBody187_15 rawBody187_22

def rawBody187_24 : StackLang.HolProg 64 :=
.seq rawBody187_14 rawBody187_23

def rawBody187_25 : StackLang.HolProg 64 :=
.seq rawBody187_13 rawBody187_24

def rawBody187_26 : StackLang.HolProg 64 :=
.seq rawBody187_12 rawBody187_25

def rawBody187_27 : StackLang.HolProg 64 :=
.seq rawBody187_11 rawBody187_26

def rawBody187_28 : StackLang.HolProg 64 :=
.seq rawBody187_10 rawBody187_27

def rawBody187_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody187_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody187_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody187_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody187_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody187_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody187_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody187_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody187_39 : StackLang.HolProg 64 :=
.seq rawBody187_37 rawBody187_38

def rawBody187_40 : StackLang.HolProg 64 :=
.seq rawBody187_36 rawBody187_39

def rawBody187_41 : StackLang.HolProg 64 :=
.seq rawBody187_35 rawBody187_40

def rawBody187_42 : StackLang.HolProg 64 :=
.seq rawBody187_34 rawBody187_41

def rawBody187_43 : StackLang.HolProg 64 :=
.seq rawBody187_33 rawBody187_42

def rawBody187_44 : StackLang.HolProg 64 :=
.seq rawBody187_32 rawBody187_43

def rawBody187_45 : StackLang.HolProg 64 :=
.seq rawBody187_31 rawBody187_44

def rawBody187_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody187_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody187_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody187_49 : StackLang.HolProg 64 :=
.seq rawBody187_47 rawBody187_48

def rawBody187_50 : StackLang.HolProg 64 :=
.seq rawBody187_46 rawBody187_49

def rawBody187_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody187_52 : StackLang.HolProg 64 :=
.seq rawBody187_50 rawBody187_51

def rawBody187_53 : StackLang.HolProg 64 :=
.call (some (rawBody187_45, 0, 187, 2)) (Sum.inl 185) (some (rawBody187_52, 187, 3))

def rawBody187_54 : StackLang.HolProg 64 :=
.seq rawBody187_30 rawBody187_53

def rawBody187_55 : StackLang.HolProg 64 :=
.seq rawBody187_29 rawBody187_54

def rawBody187_56 : StackLang.HolProg 64 :=
.seq rawBody187_28 rawBody187_55

def rawBody187_57 : StackLang.HolProg 64 :=
.seq rawBody187_9 rawBody187_56

def rawBody187_58 : StackLang.HolProg 64 :=
.seq rawBody187_6 rawBody187_57

def rawBody187_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody187_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody187_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody187_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody187_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody187_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody187_67 : StackLang.HolProg 64 :=
.seq rawBody187_65 rawBody187_66

def rawBody187_68 : StackLang.HolProg 64 :=
.seq rawBody187_64 rawBody187_67

def rawBody187_69 : StackLang.HolProg 64 :=
.seq rawBody187_63 rawBody187_68

def rawBody187_70 : StackLang.HolProg 64 :=
.seq rawBody187_62 rawBody187_69

def rawBody187_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody187_70 rawBody187_71

def rawBody187_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody187_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody187_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody187_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def rawBody187_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 32#64))

def rawBody187_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody187_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody187_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody187_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody187_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def rawBody187_88 : StackLang.HolProg 64 :=
.seq rawBody187_86 rawBody187_87

def rawBody187_89 : StackLang.HolProg 64 :=
.seq rawBody187_85 rawBody187_88

def rawBody187_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 214#64)

def rawBody187_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody187_93 : StackLang.HolProg 64 :=
.seq rawBody187_91 rawBody187_92

def rawBody187_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody187_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody187_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody187_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 187 5

def rawBody187_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody187_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody187_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody187_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody187_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody187_104 : StackLang.HolProg 64 :=
.seq rawBody187_102 rawBody187_103

def rawBody187_105 : StackLang.HolProg 64 :=
.seq rawBody187_101 rawBody187_104

def rawBody187_106 : StackLang.HolProg 64 :=
.seq rawBody187_100 rawBody187_105

def rawBody187_107 : StackLang.HolProg 64 :=
.seq rawBody187_99 rawBody187_106

def rawBody187_108 : StackLang.HolProg 64 :=
.seq rawBody187_98 rawBody187_107

def rawBody187_109 : StackLang.HolProg 64 :=
.seq rawBody187_97 rawBody187_108

def rawBody187_110 : StackLang.HolProg 64 :=
.seq rawBody187_96 rawBody187_109

def rawBody187_111 : StackLang.HolProg 64 :=
.seq rawBody187_95 rawBody187_110

def rawBody187_112 : StackLang.HolProg 64 :=
.seq rawBody187_94 rawBody187_111

def rawBody187_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody187_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody187_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody187_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody187_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody187_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody187_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody187_121 : StackLang.HolProg 64 :=
.seq rawBody187_119 rawBody187_120

def rawBody187_122 : StackLang.HolProg 64 :=
.seq rawBody187_118 rawBody187_121

def rawBody187_123 : StackLang.HolProg 64 :=
.seq rawBody187_117 rawBody187_122

def rawBody187_124 : StackLang.HolProg 64 :=
.seq rawBody187_116 rawBody187_123

def rawBody187_125 : StackLang.HolProg 64 :=
.seq rawBody187_115 rawBody187_124

def rawBody187_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody187_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody187_128 : StackLang.HolProg 64 :=
.seq rawBody187_126 rawBody187_127

def rawBody187_129 : StackLang.HolProg 64 :=
.call (some (rawBody187_125, 0, 187, 4)) (Sum.inl 79) (some (rawBody187_128, 187, 5))

def rawBody187_130 : StackLang.HolProg 64 :=
.seq rawBody187_114 rawBody187_129

def rawBody187_131 : StackLang.HolProg 64 :=
.seq rawBody187_113 rawBody187_130

def rawBody187_132 : StackLang.HolProg 64 :=
.seq rawBody187_112 rawBody187_131

def rawBody187_133 : StackLang.HolProg 64 :=
.seq rawBody187_93 rawBody187_132

def rawBody187_134 : StackLang.HolProg 64 :=
.seq rawBody187_90 rawBody187_133

def rawBody187_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody187_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody187_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody187_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody187_139 : StackLang.HolProg 64 :=
.seq rawBody187_137 rawBody187_138

def rawBody187_140 : StackLang.HolProg 64 :=
.seq rawBody187_136 rawBody187_139

def rawBody187_141 : StackLang.HolProg 64 :=
.seq rawBody187_135 rawBody187_140

def rawBody187_142 : StackLang.HolProg 64 :=
.seq rawBody187_134 rawBody187_141

def rawBody187_143 : StackLang.HolProg 64 :=
.seq rawBody187_89 rawBody187_142

def rawBody187_144 : StackLang.HolProg 64 :=
.seq rawBody187_84 rawBody187_143

def rawBody187_145 : StackLang.HolProg 64 :=
.seq rawBody187_83 rawBody187_144

def rawBody187_146 : StackLang.HolProg 64 :=
.seq rawBody187_82 rawBody187_145

def rawBody187_147 : StackLang.HolProg 64 :=
.seq rawBody187_81 rawBody187_146

def rawBody187_148 : StackLang.HolProg 64 :=
.seq rawBody187_80 rawBody187_147

def rawBody187_149 : StackLang.HolProg 64 :=
.seq rawBody187_79 rawBody187_148

def rawBody187_150 : StackLang.HolProg 64 :=
.seq rawBody187_78 rawBody187_149

def rawBody187_151 : StackLang.HolProg 64 :=
.seq rawBody187_77 rawBody187_150

def rawBody187_152 : StackLang.HolProg 64 :=
.seq rawBody187_76 rawBody187_151

def rawBody187_153 : StackLang.HolProg 64 :=
.seq rawBody187_75 rawBody187_152

def rawBody187_154 : StackLang.HolProg 64 :=
.seq rawBody187_74 rawBody187_153

def rawBody187_155 : StackLang.HolProg 64 :=
.seq rawBody187_73 rawBody187_154

def rawBody187_156 : StackLang.HolProg 64 :=
.seq rawBody187_72 rawBody187_155

def rawBody187_157 : StackLang.HolProg 64 :=
.seq rawBody187_61 rawBody187_156

def rawBody187_158 : StackLang.HolProg 64 :=
.seq rawBody187_60 rawBody187_157

def rawBody187_159 : StackLang.HolProg 64 :=
.seq rawBody187_59 rawBody187_158

def rawBody187_160 : StackLang.HolProg 64 :=
.seq rawBody187_58 rawBody187_159

def rawBody187_161 : StackLang.HolProg 64 :=
.seq rawBody187_5 rawBody187_160

def rawBody187_162 : StackLang.HolProg 64 :=
.seq rawBody187_0 rawBody187_161

def raw187 : StackLang.HolProg 64 := rawBody187_162
theorem raw187_eq : StackRawCall.compTop RawInfo.rawInfo (function187 (.list [])).1 = raw187 := by
  kernel_rfl
#print axioms raw187_eq
end InitECandidate.Proofs.BackendStages
