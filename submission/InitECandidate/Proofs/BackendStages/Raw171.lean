import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function171
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody171_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody171_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody171_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def rawBody171_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_7 : StackLang.HolProg 64 :=
.seq rawBody171_5 rawBody171_6

def rawBody171_8 : StackLang.HolProg 64 :=
.seq rawBody171_4 rawBody171_7

def rawBody171_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody171_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_12 : StackLang.HolProg 64 :=
.seq rawBody171_10 rawBody171_11

def rawBody171_13 : StackLang.HolProg 64 :=
.seq rawBody171_9 rawBody171_12

def rawBody171_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody171_8 rawBody171_13

def rawBody171_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody171_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody171_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody171_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_23 : StackLang.HolProg 64 :=
.seq rawBody171_21 rawBody171_22

def rawBody171_24 : StackLang.HolProg 64 :=
.seq rawBody171_20 rawBody171_23

def rawBody171_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody171_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_28 : StackLang.HolProg 64 :=
.seq rawBody171_26 rawBody171_27

def rawBody171_29 : StackLang.HolProg 64 :=
.seq rawBody171_25 rawBody171_28

def rawBody171_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody171_24 rawBody171_29

def rawBody171_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody171_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 21#64)

def rawBody171_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody171_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody171_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody171_38 : StackLang.HolProg 64 :=
.seq rawBody171_36 rawBody171_37

def rawBody171_39 : StackLang.HolProg 64 :=
.seq rawBody171_35 rawBody171_38

def rawBody171_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 192#64)

def rawBody171_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody171_43 : StackLang.HolProg 64 :=
.seq rawBody171_41 rawBody171_42

def rawBody171_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody171_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody171_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody171_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 171 3

def rawBody171_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody171_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody171_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody171_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody171_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody171_54 : StackLang.HolProg 64 :=
.seq rawBody171_52 rawBody171_53

def rawBody171_55 : StackLang.HolProg 64 :=
.seq rawBody171_51 rawBody171_54

def rawBody171_56 : StackLang.HolProg 64 :=
.seq rawBody171_50 rawBody171_55

def rawBody171_57 : StackLang.HolProg 64 :=
.seq rawBody171_49 rawBody171_56

def rawBody171_58 : StackLang.HolProg 64 :=
.seq rawBody171_48 rawBody171_57

def rawBody171_59 : StackLang.HolProg 64 :=
.seq rawBody171_47 rawBody171_58

def rawBody171_60 : StackLang.HolProg 64 :=
.seq rawBody171_46 rawBody171_59

def rawBody171_61 : StackLang.HolProg 64 :=
.seq rawBody171_45 rawBody171_60

def rawBody171_62 : StackLang.HolProg 64 :=
.seq rawBody171_44 rawBody171_61

def rawBody171_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody171_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody171_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody171_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody171_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody171_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody171_71 : StackLang.HolProg 64 :=
.seq rawBody171_69 rawBody171_70

def rawBody171_72 : StackLang.HolProg 64 :=
.seq rawBody171_68 rawBody171_71

def rawBody171_73 : StackLang.HolProg 64 :=
.seq rawBody171_67 rawBody171_72

def rawBody171_74 : StackLang.HolProg 64 :=
.seq rawBody171_66 rawBody171_73

def rawBody171_75 : StackLang.HolProg 64 :=
.seq rawBody171_65 rawBody171_74

def rawBody171_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody171_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody171_78 : StackLang.HolProg 64 :=
.seq rawBody171_76 rawBody171_77

def rawBody171_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody171_80 : StackLang.HolProg 64 :=
.seq rawBody171_78 rawBody171_79

def rawBody171_81 : StackLang.HolProg 64 :=
.call (some (rawBody171_75, 0, 171, 2)) (Sum.inl 159) (some (rawBody171_80, 171, 3))

def rawBody171_82 : StackLang.HolProg 64 :=
.seq rawBody171_64 rawBody171_81

def rawBody171_83 : StackLang.HolProg 64 :=
.seq rawBody171_63 rawBody171_82

def rawBody171_84 : StackLang.HolProg 64 :=
.seq rawBody171_62 rawBody171_83

def rawBody171_85 : StackLang.HolProg 64 :=
.seq rawBody171_43 rawBody171_84

def rawBody171_86 : StackLang.HolProg 64 :=
.seq rawBody171_40 rawBody171_85

def rawBody171_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_89 : StackLang.HolProg 64 :=
.seq rawBody171_87 rawBody171_88

def rawBody171_90 : StackLang.HolProg 64 :=
.seq rawBody171_86 rawBody171_89

def rawBody171_91 : StackLang.HolProg 64 :=
.seq rawBody171_39 rawBody171_90

def rawBody171_92 : StackLang.HolProg 64 :=
.seq rawBody171_34 rawBody171_91

def rawBody171_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody171_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) rawBody171_92 rawBody171_93

def rawBody171_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody171_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody171_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_101 : StackLang.HolProg 64 :=
.seq rawBody171_99 rawBody171_100

def rawBody171_102 : StackLang.HolProg 64 :=
.seq rawBody171_98 rawBody171_101

def rawBody171_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody171_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_106 : StackLang.HolProg 64 :=
.seq rawBody171_104 rawBody171_105

def rawBody171_107 : StackLang.HolProg 64 :=
.seq rawBody171_103 rawBody171_106

def rawBody171_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody171_102 rawBody171_107

def rawBody171_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody171_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_114 : StackLang.HolProg 64 :=
.seq rawBody171_112 rawBody171_113

def rawBody171_115 : StackLang.HolProg 64 :=
.seq rawBody171_111 rawBody171_114

def rawBody171_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody171_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_119 : StackLang.HolProg 64 :=
.seq rawBody171_117 rawBody171_118

def rawBody171_120 : StackLang.HolProg 64 :=
.seq rawBody171_116 rawBody171_119

def rawBody171_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody171_115 rawBody171_120

def rawBody171_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody171_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 22#64)

def rawBody171_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 193#64)

def rawBody171_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody171_130 : StackLang.HolProg 64 :=
.seq rawBody171_128 rawBody171_129

def rawBody171_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody171_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody171_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody171_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 171 5

def rawBody171_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody171_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody171_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody171_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody171_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody171_141 : StackLang.HolProg 64 :=
.seq rawBody171_139 rawBody171_140

def rawBody171_142 : StackLang.HolProg 64 :=
.seq rawBody171_138 rawBody171_141

def rawBody171_143 : StackLang.HolProg 64 :=
.seq rawBody171_137 rawBody171_142

def rawBody171_144 : StackLang.HolProg 64 :=
.seq rawBody171_136 rawBody171_143

def rawBody171_145 : StackLang.HolProg 64 :=
.seq rawBody171_135 rawBody171_144

def rawBody171_146 : StackLang.HolProg 64 :=
.seq rawBody171_134 rawBody171_145

def rawBody171_147 : StackLang.HolProg 64 :=
.seq rawBody171_133 rawBody171_146

def rawBody171_148 : StackLang.HolProg 64 :=
.seq rawBody171_132 rawBody171_147

def rawBody171_149 : StackLang.HolProg 64 :=
.seq rawBody171_131 rawBody171_148

def rawBody171_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody171_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody171_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody171_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody171_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody171_157 : StackLang.HolProg 64 :=
.seq rawBody171_155 rawBody171_156

def rawBody171_158 : StackLang.HolProg 64 :=
.seq rawBody171_154 rawBody171_157

def rawBody171_159 : StackLang.HolProg 64 :=
.seq rawBody171_153 rawBody171_158

def rawBody171_160 : StackLang.HolProg 64 :=
.seq rawBody171_152 rawBody171_159

def rawBody171_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody171_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody171_163 : StackLang.HolProg 64 :=
.seq rawBody171_161 rawBody171_162

def rawBody171_164 : StackLang.HolProg 64 :=
.call (some (rawBody171_160, 0, 171, 4)) (Sum.inl 159) (some (rawBody171_163, 171, 5))

def rawBody171_165 : StackLang.HolProg 64 :=
.seq rawBody171_151 rawBody171_164

def rawBody171_166 : StackLang.HolProg 64 :=
.seq rawBody171_150 rawBody171_165

def rawBody171_167 : StackLang.HolProg 64 :=
.seq rawBody171_149 rawBody171_166

def rawBody171_168 : StackLang.HolProg 64 :=
.seq rawBody171_130 rawBody171_167

def rawBody171_169 : StackLang.HolProg 64 :=
.seq rawBody171_127 rawBody171_168

def rawBody171_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_172 : StackLang.HolProg 64 :=
.seq rawBody171_170 rawBody171_171

def rawBody171_173 : StackLang.HolProg 64 :=
.seq rawBody171_169 rawBody171_172

def rawBody171_174 : StackLang.HolProg 64 :=
.seq rawBody171_126 rawBody171_173

def rawBody171_175 : StackLang.HolProg 64 :=
.seq rawBody171_125 rawBody171_174

def rawBody171_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody171_177 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) rawBody171_175 rawBody171_176

def rawBody171_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody171_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody171_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody171_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody171_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody171_183 : StackLang.HolProg 64 :=
.seq rawBody171_181 rawBody171_182

def rawBody171_184 : StackLang.HolProg 64 :=
.seq rawBody171_180 rawBody171_183

def rawBody171_185 : StackLang.HolProg 64 :=
.seq rawBody171_179 rawBody171_184

def rawBody171_186 : StackLang.HolProg 64 :=
.seq rawBody171_178 rawBody171_185

def rawBody171_187 : StackLang.HolProg 64 :=
.seq rawBody171_177 rawBody171_186

def rawBody171_188 : StackLang.HolProg 64 :=
.seq rawBody171_124 rawBody171_187

def rawBody171_189 : StackLang.HolProg 64 :=
.seq rawBody171_123 rawBody171_188

def rawBody171_190 : StackLang.HolProg 64 :=
.seq rawBody171_122 rawBody171_189

def rawBody171_191 : StackLang.HolProg 64 :=
.seq rawBody171_121 rawBody171_190

def rawBody171_192 : StackLang.HolProg 64 :=
.seq rawBody171_110 rawBody171_191

def rawBody171_193 : StackLang.HolProg 64 :=
.seq rawBody171_109 rawBody171_192

def rawBody171_194 : StackLang.HolProg 64 :=
.seq rawBody171_108 rawBody171_193

def rawBody171_195 : StackLang.HolProg 64 :=
.seq rawBody171_97 rawBody171_194

def rawBody171_196 : StackLang.HolProg 64 :=
.seq rawBody171_96 rawBody171_195

def rawBody171_197 : StackLang.HolProg 64 :=
.seq rawBody171_95 rawBody171_196

def rawBody171_198 : StackLang.HolProg 64 :=
.seq rawBody171_94 rawBody171_197

def rawBody171_199 : StackLang.HolProg 64 :=
.seq rawBody171_33 rawBody171_198

def rawBody171_200 : StackLang.HolProg 64 :=
.seq rawBody171_32 rawBody171_199

def rawBody171_201 : StackLang.HolProg 64 :=
.seq rawBody171_31 rawBody171_200

def rawBody171_202 : StackLang.HolProg 64 :=
.seq rawBody171_30 rawBody171_201

def rawBody171_203 : StackLang.HolProg 64 :=
.seq rawBody171_19 rawBody171_202

def rawBody171_204 : StackLang.HolProg 64 :=
.seq rawBody171_18 rawBody171_203

def rawBody171_205 : StackLang.HolProg 64 :=
.seq rawBody171_17 rawBody171_204

def rawBody171_206 : StackLang.HolProg 64 :=
.seq rawBody171_16 rawBody171_205

def rawBody171_207 : StackLang.HolProg 64 :=
.seq rawBody171_15 rawBody171_206

def rawBody171_208 : StackLang.HolProg 64 :=
.seq rawBody171_14 rawBody171_207

def rawBody171_209 : StackLang.HolProg 64 :=
.seq rawBody171_3 rawBody171_208

def rawBody171_210 : StackLang.HolProg 64 :=
.seq rawBody171_2 rawBody171_209

def rawBody171_211 : StackLang.HolProg 64 :=
.seq rawBody171_1 rawBody171_210

def rawBody171_212 : StackLang.HolProg 64 :=
.seq rawBody171_0 rawBody171_211

def raw171 : StackLang.HolProg 64 := rawBody171_212
theorem raw171_eq : StackRawCall.compTop RawInfo.rawInfo (function171 (.list [])).1 = raw171 := by
  kernel_rfl
#print axioms raw171_eq
end InitECandidate.Proofs.BackendStages
