import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function325
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody325_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody325_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody325_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody325_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody325_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody325_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody325_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody325_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody325_11 : StackLang.HolProg 64 :=
.seq rawBody325_9 rawBody325_10

def rawBody325_12 : StackLang.HolProg 64 :=
.seq rawBody325_8 rawBody325_11

def rawBody325_13 : StackLang.HolProg 64 :=
.seq rawBody325_7 rawBody325_12

def rawBody325_14 : StackLang.HolProg 64 :=
.seq rawBody325_6 rawBody325_13

def rawBody325_15 : StackLang.HolProg 64 :=
.seq rawBody325_5 rawBody325_14

def rawBody325_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody325_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody325_15 rawBody325_16

def rawBody325_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody325_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody325_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody325_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody325_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody325_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody325_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody325_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody325_27 : StackLang.HolProg 64 :=
.seq rawBody325_25 rawBody325_26

def rawBody325_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 923#64)

def rawBody325_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody325_31 : StackLang.HolProg 64 :=
.seq rawBody325_29 rawBody325_30

def rawBody325_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody325_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody325_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody325_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 325 3

def rawBody325_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody325_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody325_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody325_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody325_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody325_42 : StackLang.HolProg 64 :=
.seq rawBody325_40 rawBody325_41

def rawBody325_43 : StackLang.HolProg 64 :=
.seq rawBody325_39 rawBody325_42

def rawBody325_44 : StackLang.HolProg 64 :=
.seq rawBody325_38 rawBody325_43

def rawBody325_45 : StackLang.HolProg 64 :=
.seq rawBody325_37 rawBody325_44

def rawBody325_46 : StackLang.HolProg 64 :=
.seq rawBody325_36 rawBody325_45

def rawBody325_47 : StackLang.HolProg 64 :=
.seq rawBody325_35 rawBody325_46

def rawBody325_48 : StackLang.HolProg 64 :=
.seq rawBody325_34 rawBody325_47

def rawBody325_49 : StackLang.HolProg 64 :=
.seq rawBody325_33 rawBody325_48

def rawBody325_50 : StackLang.HolProg 64 :=
.seq rawBody325_32 rawBody325_49

def rawBody325_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody325_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody325_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody325_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody325_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody325_58 : StackLang.HolProg 64 :=
.seq rawBody325_56 rawBody325_57

def rawBody325_59 : StackLang.HolProg 64 :=
.seq rawBody325_55 rawBody325_58

def rawBody325_60 : StackLang.HolProg 64 :=
.seq rawBody325_54 rawBody325_59

def rawBody325_61 : StackLang.HolProg 64 :=
.seq rawBody325_53 rawBody325_60

def rawBody325_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody325_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody325_64 : StackLang.HolProg 64 :=
.seq rawBody325_62 rawBody325_63

def rawBody325_65 : StackLang.HolProg 64 :=
.call (some (rawBody325_61, 0, 325, 2)) (Sum.inl 286) (some (rawBody325_64, 325, 3))

def rawBody325_66 : StackLang.HolProg 64 :=
.seq rawBody325_52 rawBody325_65

def rawBody325_67 : StackLang.HolProg 64 :=
.seq rawBody325_51 rawBody325_66

def rawBody325_68 : StackLang.HolProg 64 :=
.seq rawBody325_50 rawBody325_67

def rawBody325_69 : StackLang.HolProg 64 :=
.seq rawBody325_31 rawBody325_68

def rawBody325_70 : StackLang.HolProg 64 :=
.seq rawBody325_28 rawBody325_69

def rawBody325_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody325_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_73 : StackLang.HolProg 64 :=
.seq rawBody325_71 rawBody325_72

def rawBody325_74 : StackLang.HolProg 64 :=
.seq rawBody325_70 rawBody325_73

def rawBody325_75 : StackLang.HolProg 64 :=
.seq rawBody325_27 rawBody325_74

def rawBody325_76 : StackLang.HolProg 64 :=
.seq rawBody325_24 rawBody325_75

def rawBody325_77 : StackLang.HolProg 64 :=
.seq rawBody325_23 rawBody325_76

def rawBody325_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody325_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody325_80 : StackLang.HolProg 64 :=
.seq rawBody325_78 rawBody325_79

def rawBody325_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody325_77 rawBody325_80

def rawBody325_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody325_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody325_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody325_85 : StackLang.HolProg 64 :=
.seq rawBody325_83 rawBody325_84

def rawBody325_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 924#64)

def rawBody325_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody325_89 : StackLang.HolProg 64 :=
.seq rawBody325_87 rawBody325_88

def rawBody325_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody325_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody325_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody325_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 325 5

def rawBody325_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody325_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody325_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody325_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody325_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody325_100 : StackLang.HolProg 64 :=
.seq rawBody325_98 rawBody325_99

def rawBody325_101 : StackLang.HolProg 64 :=
.seq rawBody325_97 rawBody325_100

def rawBody325_102 : StackLang.HolProg 64 :=
.seq rawBody325_96 rawBody325_101

def rawBody325_103 : StackLang.HolProg 64 :=
.seq rawBody325_95 rawBody325_102

def rawBody325_104 : StackLang.HolProg 64 :=
.seq rawBody325_94 rawBody325_103

def rawBody325_105 : StackLang.HolProg 64 :=
.seq rawBody325_93 rawBody325_104

def rawBody325_106 : StackLang.HolProg 64 :=
.seq rawBody325_92 rawBody325_105

def rawBody325_107 : StackLang.HolProg 64 :=
.seq rawBody325_91 rawBody325_106

def rawBody325_108 : StackLang.HolProg 64 :=
.seq rawBody325_90 rawBody325_107

def rawBody325_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody325_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody325_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody325_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody325_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody325_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody325_117 : StackLang.HolProg 64 :=
.seq rawBody325_115 rawBody325_116

def rawBody325_118 : StackLang.HolProg 64 :=
.seq rawBody325_114 rawBody325_117

def rawBody325_119 : StackLang.HolProg 64 :=
.seq rawBody325_113 rawBody325_118

def rawBody325_120 : StackLang.HolProg 64 :=
.seq rawBody325_112 rawBody325_119

def rawBody325_121 : StackLang.HolProg 64 :=
.seq rawBody325_111 rawBody325_120

def rawBody325_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody325_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody325_124 : StackLang.HolProg 64 :=
.seq rawBody325_122 rawBody325_123

def rawBody325_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody325_126 : StackLang.HolProg 64 :=
.seq rawBody325_124 rawBody325_125

def rawBody325_127 : StackLang.HolProg 64 :=
.call (some (rawBody325_121, 0, 325, 4)) (Sum.inl 324) (some (rawBody325_126, 325, 5))

def rawBody325_128 : StackLang.HolProg 64 :=
.seq rawBody325_110 rawBody325_127

def rawBody325_129 : StackLang.HolProg 64 :=
.seq rawBody325_109 rawBody325_128

def rawBody325_130 : StackLang.HolProg 64 :=
.seq rawBody325_108 rawBody325_129

def rawBody325_131 : StackLang.HolProg 64 :=
.seq rawBody325_89 rawBody325_130

def rawBody325_132 : StackLang.HolProg 64 :=
.seq rawBody325_86 rawBody325_131

def rawBody325_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody325_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody325_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody325_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody325_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody325_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody325_141 : StackLang.HolProg 64 :=
.seq rawBody325_139 rawBody325_140

def rawBody325_142 : StackLang.HolProg 64 :=
.seq rawBody325_138 rawBody325_141

def rawBody325_143 : StackLang.HolProg 64 :=
.seq rawBody325_137 rawBody325_142

def rawBody325_144 : StackLang.HolProg 64 :=
.seq rawBody325_136 rawBody325_143

def rawBody325_145 : StackLang.HolProg 64 :=
.seq rawBody325_135 rawBody325_144

def rawBody325_146 : StackLang.HolProg 64 :=
.seq rawBody325_134 rawBody325_145

def rawBody325_147 : StackLang.HolProg 64 :=
.seq rawBody325_133 rawBody325_146

def rawBody325_148 : StackLang.HolProg 64 :=
.seq rawBody325_132 rawBody325_147

def rawBody325_149 : StackLang.HolProg 64 :=
.seq rawBody325_85 rawBody325_148

def rawBody325_150 : StackLang.HolProg 64 :=
.seq rawBody325_82 rawBody325_149

def rawBody325_151 : StackLang.HolProg 64 :=
.seq rawBody325_81 rawBody325_150

def rawBody325_152 : StackLang.HolProg 64 :=
.seq rawBody325_22 rawBody325_151

def rawBody325_153 : StackLang.HolProg 64 :=
.seq rawBody325_21 rawBody325_152

def rawBody325_154 : StackLang.HolProg 64 :=
.seq rawBody325_20 rawBody325_153

def rawBody325_155 : StackLang.HolProg 64 :=
.seq rawBody325_19 rawBody325_154

def rawBody325_156 : StackLang.HolProg 64 :=
.seq rawBody325_18 rawBody325_155

def rawBody325_157 : StackLang.HolProg 64 :=
.seq rawBody325_17 rawBody325_156

def rawBody325_158 : StackLang.HolProg 64 :=
.seq rawBody325_4 rawBody325_157

def rawBody325_159 : StackLang.HolProg 64 :=
.seq rawBody325_3 rawBody325_158

def rawBody325_160 : StackLang.HolProg 64 :=
.seq rawBody325_2 rawBody325_159

def rawBody325_161 : StackLang.HolProg 64 :=
.seq rawBody325_1 rawBody325_160

def rawBody325_162 : StackLang.HolProg 64 :=
.seq rawBody325_0 rawBody325_161

def raw325 : StackLang.HolProg 64 := rawBody325_162
theorem raw325_eq : StackRawCall.compTop RawInfo.rawInfo (function325 (.list [])).1 = raw325 := by
  kernel_rfl
#print axioms raw325_eq
end InitECandidate.Proofs.BackendStages
