import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function186
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody186_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody186_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody186_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody186_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody186_4 : StackLang.HolProg 64 :=
.seq rawBody186_2 rawBody186_3

def rawBody186_5 : StackLang.HolProg 64 :=
.seq rawBody186_1 rawBody186_4

def rawBody186_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 211#64)

def rawBody186_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody186_9 : StackLang.HolProg 64 :=
.seq rawBody186_7 rawBody186_8

def rawBody186_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody186_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody186_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody186_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 186 3

def rawBody186_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody186_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody186_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody186_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody186_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody186_20 : StackLang.HolProg 64 :=
.seq rawBody186_18 rawBody186_19

def rawBody186_21 : StackLang.HolProg 64 :=
.seq rawBody186_17 rawBody186_20

def rawBody186_22 : StackLang.HolProg 64 :=
.seq rawBody186_16 rawBody186_21

def rawBody186_23 : StackLang.HolProg 64 :=
.seq rawBody186_15 rawBody186_22

def rawBody186_24 : StackLang.HolProg 64 :=
.seq rawBody186_14 rawBody186_23

def rawBody186_25 : StackLang.HolProg 64 :=
.seq rawBody186_13 rawBody186_24

def rawBody186_26 : StackLang.HolProg 64 :=
.seq rawBody186_12 rawBody186_25

def rawBody186_27 : StackLang.HolProg 64 :=
.seq rawBody186_11 rawBody186_26

def rawBody186_28 : StackLang.HolProg 64 :=
.seq rawBody186_10 rawBody186_27

def rawBody186_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody186_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody186_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody186_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody186_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody186_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody186_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody186_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody186_39 : StackLang.HolProg 64 :=
.seq rawBody186_37 rawBody186_38

def rawBody186_40 : StackLang.HolProg 64 :=
.seq rawBody186_36 rawBody186_39

def rawBody186_41 : StackLang.HolProg 64 :=
.seq rawBody186_35 rawBody186_40

def rawBody186_42 : StackLang.HolProg 64 :=
.seq rawBody186_34 rawBody186_41

def rawBody186_43 : StackLang.HolProg 64 :=
.seq rawBody186_33 rawBody186_42

def rawBody186_44 : StackLang.HolProg 64 :=
.seq rawBody186_32 rawBody186_43

def rawBody186_45 : StackLang.HolProg 64 :=
.seq rawBody186_31 rawBody186_44

def rawBody186_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody186_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody186_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody186_49 : StackLang.HolProg 64 :=
.seq rawBody186_47 rawBody186_48

def rawBody186_50 : StackLang.HolProg 64 :=
.seq rawBody186_46 rawBody186_49

def rawBody186_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody186_52 : StackLang.HolProg 64 :=
.seq rawBody186_50 rawBody186_51

def rawBody186_53 : StackLang.HolProg 64 :=
.call (some (rawBody186_45, 0, 186, 2)) (Sum.inl 185) (some (rawBody186_52, 186, 3))

def rawBody186_54 : StackLang.HolProg 64 :=
.seq rawBody186_30 rawBody186_53

def rawBody186_55 : StackLang.HolProg 64 :=
.seq rawBody186_29 rawBody186_54

def rawBody186_56 : StackLang.HolProg 64 :=
.seq rawBody186_28 rawBody186_55

def rawBody186_57 : StackLang.HolProg 64 :=
.seq rawBody186_9 rawBody186_56

def rawBody186_58 : StackLang.HolProg 64 :=
.seq rawBody186_6 rawBody186_57

def rawBody186_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody186_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody186_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody186_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody186_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody186_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody186_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def rawBody186_68 : StackLang.HolProg 64 :=
.seq rawBody186_66 rawBody186_67

def rawBody186_69 : StackLang.HolProg 64 :=
.seq rawBody186_65 rawBody186_68

def rawBody186_70 : StackLang.HolProg 64 :=
.seq rawBody186_64 rawBody186_69

def rawBody186_71 : StackLang.HolProg 64 :=
.seq rawBody186_63 rawBody186_70

def rawBody186_72 : StackLang.HolProg 64 :=
.seq rawBody186_62 rawBody186_71

def rawBody186_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody186_72 rawBody186_73

def rawBody186_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody186_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody186_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody186_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody186_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def rawBody186_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody186_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody186_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody186_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody186_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody186_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def rawBody186_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody186_91 : StackLang.HolProg 64 :=
.seq rawBody186_89 rawBody186_90

def rawBody186_92 : StackLang.HolProg 64 :=
.seq rawBody186_88 rawBody186_91

def rawBody186_93 : StackLang.HolProg 64 :=
.seq rawBody186_87 rawBody186_92

def rawBody186_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 212#64)

def rawBody186_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody186_97 : StackLang.HolProg 64 :=
.seq rawBody186_95 rawBody186_96

def rawBody186_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody186_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody186_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody186_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 186 5

def rawBody186_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody186_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody186_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody186_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody186_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody186_108 : StackLang.HolProg 64 :=
.seq rawBody186_106 rawBody186_107

def rawBody186_109 : StackLang.HolProg 64 :=
.seq rawBody186_105 rawBody186_108

def rawBody186_110 : StackLang.HolProg 64 :=
.seq rawBody186_104 rawBody186_109

def rawBody186_111 : StackLang.HolProg 64 :=
.seq rawBody186_103 rawBody186_110

def rawBody186_112 : StackLang.HolProg 64 :=
.seq rawBody186_102 rawBody186_111

def rawBody186_113 : StackLang.HolProg 64 :=
.seq rawBody186_101 rawBody186_112

def rawBody186_114 : StackLang.HolProg 64 :=
.seq rawBody186_100 rawBody186_113

def rawBody186_115 : StackLang.HolProg 64 :=
.seq rawBody186_99 rawBody186_114

def rawBody186_116 : StackLang.HolProg 64 :=
.seq rawBody186_98 rawBody186_115

def rawBody186_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody186_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody186_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody186_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody186_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody186_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody186_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody186_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody186_127 : StackLang.HolProg 64 :=
.seq rawBody186_125 rawBody186_126

def rawBody186_128 : StackLang.HolProg 64 :=
.seq rawBody186_124 rawBody186_127

def rawBody186_129 : StackLang.HolProg 64 :=
.seq rawBody186_123 rawBody186_128

def rawBody186_130 : StackLang.HolProg 64 :=
.seq rawBody186_122 rawBody186_129

def rawBody186_131 : StackLang.HolProg 64 :=
.seq rawBody186_121 rawBody186_130

def rawBody186_132 : StackLang.HolProg 64 :=
.seq rawBody186_120 rawBody186_131

def rawBody186_133 : StackLang.HolProg 64 :=
.seq rawBody186_119 rawBody186_132

def rawBody186_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody186_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody186_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody186_137 : StackLang.HolProg 64 :=
.seq rawBody186_135 rawBody186_136

def rawBody186_138 : StackLang.HolProg 64 :=
.seq rawBody186_134 rawBody186_137

def rawBody186_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody186_140 : StackLang.HolProg 64 :=
.seq rawBody186_138 rawBody186_139

def rawBody186_141 : StackLang.HolProg 64 :=
.call (some (rawBody186_133, 0, 186, 4)) (Sum.inl 79) (some (rawBody186_140, 186, 5))

def rawBody186_142 : StackLang.HolProg 64 :=
.seq rawBody186_118 rawBody186_141

def rawBody186_143 : StackLang.HolProg 64 :=
.seq rawBody186_117 rawBody186_142

def rawBody186_144 : StackLang.HolProg 64 :=
.seq rawBody186_116 rawBody186_143

def rawBody186_145 : StackLang.HolProg 64 :=
.seq rawBody186_97 rawBody186_144

def rawBody186_146 : StackLang.HolProg 64 :=
.seq rawBody186_94 rawBody186_145

def rawBody186_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody186_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody186_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody186_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody186_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody186_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody186_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody186_156 : StackLang.HolProg 64 :=
.seq rawBody186_154 rawBody186_155

def rawBody186_157 : StackLang.HolProg 64 :=
.seq rawBody186_153 rawBody186_156

def rawBody186_158 : StackLang.HolProg 64 :=
.seq rawBody186_152 rawBody186_157

def rawBody186_159 : StackLang.HolProg 64 :=
.seq rawBody186_151 rawBody186_158

def rawBody186_160 : StackLang.HolProg 64 :=
.seq rawBody186_150 rawBody186_159

def rawBody186_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody186_160 rawBody186_161

def rawBody186_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody186_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody186_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody186_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody186_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def rawBody186_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody186_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody186_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody186_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody186_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody186_175 : StackLang.HolProg 64 :=
.seq rawBody186_173 rawBody186_174

def rawBody186_176 : StackLang.HolProg 64 :=
.seq rawBody186_172 rawBody186_175

def rawBody186_177 : StackLang.HolProg 64 :=
.seq rawBody186_171 rawBody186_176

def rawBody186_178 : StackLang.HolProg 64 :=
.seq rawBody186_170 rawBody186_177

def rawBody186_179 : StackLang.HolProg 64 :=
.seq rawBody186_169 rawBody186_178

def rawBody186_180 : StackLang.HolProg 64 :=
.seq rawBody186_168 rawBody186_179

def rawBody186_181 : StackLang.HolProg 64 :=
.seq rawBody186_167 rawBody186_180

def rawBody186_182 : StackLang.HolProg 64 :=
.seq rawBody186_166 rawBody186_181

def rawBody186_183 : StackLang.HolProg 64 :=
.seq rawBody186_165 rawBody186_182

def rawBody186_184 : StackLang.HolProg 64 :=
.seq rawBody186_164 rawBody186_183

def rawBody186_185 : StackLang.HolProg 64 :=
.seq rawBody186_163 rawBody186_184

def rawBody186_186 : StackLang.HolProg 64 :=
.seq rawBody186_162 rawBody186_185

def rawBody186_187 : StackLang.HolProg 64 :=
.seq rawBody186_149 rawBody186_186

def rawBody186_188 : StackLang.HolProg 64 :=
.seq rawBody186_148 rawBody186_187

def rawBody186_189 : StackLang.HolProg 64 :=
.seq rawBody186_147 rawBody186_188

def rawBody186_190 : StackLang.HolProg 64 :=
.seq rawBody186_146 rawBody186_189

def rawBody186_191 : StackLang.HolProg 64 :=
.seq rawBody186_93 rawBody186_190

def rawBody186_192 : StackLang.HolProg 64 :=
.seq rawBody186_86 rawBody186_191

def rawBody186_193 : StackLang.HolProg 64 :=
.seq rawBody186_85 rawBody186_192

def rawBody186_194 : StackLang.HolProg 64 :=
.seq rawBody186_84 rawBody186_193

def rawBody186_195 : StackLang.HolProg 64 :=
.seq rawBody186_83 rawBody186_194

def rawBody186_196 : StackLang.HolProg 64 :=
.seq rawBody186_82 rawBody186_195

def rawBody186_197 : StackLang.HolProg 64 :=
.seq rawBody186_81 rawBody186_196

def rawBody186_198 : StackLang.HolProg 64 :=
.seq rawBody186_80 rawBody186_197

def rawBody186_199 : StackLang.HolProg 64 :=
.seq rawBody186_79 rawBody186_198

def rawBody186_200 : StackLang.HolProg 64 :=
.seq rawBody186_78 rawBody186_199

def rawBody186_201 : StackLang.HolProg 64 :=
.seq rawBody186_77 rawBody186_200

def rawBody186_202 : StackLang.HolProg 64 :=
.seq rawBody186_76 rawBody186_201

def rawBody186_203 : StackLang.HolProg 64 :=
.seq rawBody186_75 rawBody186_202

def rawBody186_204 : StackLang.HolProg 64 :=
.seq rawBody186_74 rawBody186_203

def rawBody186_205 : StackLang.HolProg 64 :=
.seq rawBody186_61 rawBody186_204

def rawBody186_206 : StackLang.HolProg 64 :=
.seq rawBody186_60 rawBody186_205

def rawBody186_207 : StackLang.HolProg 64 :=
.seq rawBody186_59 rawBody186_206

def rawBody186_208 : StackLang.HolProg 64 :=
.seq rawBody186_58 rawBody186_207

def rawBody186_209 : StackLang.HolProg 64 :=
.seq rawBody186_5 rawBody186_208

def rawBody186_210 : StackLang.HolProg 64 :=
.seq rawBody186_0 rawBody186_209

def raw186 : StackLang.HolProg 64 := rawBody186_210
theorem raw186_eq : StackRawCall.compTop RawInfo.rawInfo (function186 (.list [])).1 = raw186 := by
  kernel_rfl
#print axioms raw186_eq
end InitECandidate.Proofs.BackendStages
