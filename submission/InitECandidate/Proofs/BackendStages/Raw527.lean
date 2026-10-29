import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function527
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody527_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody527_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody527_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody527_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1727#64)

def rawBody527_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody527_7 : StackLang.HolProg 64 :=
.seq rawBody527_5 rawBody527_6

def rawBody527_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody527_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody527_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody527_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 527 3

def rawBody527_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody527_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody527_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody527_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody527_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody527_18 : StackLang.HolProg 64 :=
.seq rawBody527_16 rawBody527_17

def rawBody527_19 : StackLang.HolProg 64 :=
.seq rawBody527_15 rawBody527_18

def rawBody527_20 : StackLang.HolProg 64 :=
.seq rawBody527_14 rawBody527_19

def rawBody527_21 : StackLang.HolProg 64 :=
.seq rawBody527_13 rawBody527_20

def rawBody527_22 : StackLang.HolProg 64 :=
.seq rawBody527_12 rawBody527_21

def rawBody527_23 : StackLang.HolProg 64 :=
.seq rawBody527_11 rawBody527_22

def rawBody527_24 : StackLang.HolProg 64 :=
.seq rawBody527_10 rawBody527_23

def rawBody527_25 : StackLang.HolProg 64 :=
.seq rawBody527_9 rawBody527_24

def rawBody527_26 : StackLang.HolProg 64 :=
.seq rawBody527_8 rawBody527_25

def rawBody527_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody527_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody527_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody527_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody527_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_34 : StackLang.HolProg 64 :=
.seq rawBody527_32 rawBody527_33

def rawBody527_35 : StackLang.HolProg 64 :=
.seq rawBody527_31 rawBody527_34

def rawBody527_36 : StackLang.HolProg 64 :=
.seq rawBody527_30 rawBody527_35

def rawBody527_37 : StackLang.HolProg 64 :=
.seq rawBody527_29 rawBody527_36

def rawBody527_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody527_40 : StackLang.HolProg 64 :=
.seq rawBody527_38 rawBody527_39

def rawBody527_41 : StackLang.HolProg 64 :=
.call (some (rawBody527_37, 0, 527, 2)) (Sum.inl 470) (some (rawBody527_40, 527, 3))

def rawBody527_42 : StackLang.HolProg 64 :=
.seq rawBody527_28 rawBody527_41

def rawBody527_43 : StackLang.HolProg 64 :=
.seq rawBody527_27 rawBody527_42

def rawBody527_44 : StackLang.HolProg 64 :=
.seq rawBody527_26 rawBody527_43

def rawBody527_45 : StackLang.HolProg 64 :=
.seq rawBody527_7 rawBody527_44

def rawBody527_46 : StackLang.HolProg 64 :=
.seq rawBody527_4 rawBody527_45

def rawBody527_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody527_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody527_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody527_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody527_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody527_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody527_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1728#64)

def rawBody527_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody527_57 : StackLang.HolProg 64 :=
.seq rawBody527_55 rawBody527_56

def rawBody527_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody527_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody527_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody527_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 527 5

def rawBody527_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody527_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody527_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody527_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody527_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody527_68 : StackLang.HolProg 64 :=
.seq rawBody527_66 rawBody527_67

def rawBody527_69 : StackLang.HolProg 64 :=
.seq rawBody527_65 rawBody527_68

def rawBody527_70 : StackLang.HolProg 64 :=
.seq rawBody527_64 rawBody527_69

def rawBody527_71 : StackLang.HolProg 64 :=
.seq rawBody527_63 rawBody527_70

def rawBody527_72 : StackLang.HolProg 64 :=
.seq rawBody527_62 rawBody527_71

def rawBody527_73 : StackLang.HolProg 64 :=
.seq rawBody527_61 rawBody527_72

def rawBody527_74 : StackLang.HolProg 64 :=
.seq rawBody527_60 rawBody527_73

def rawBody527_75 : StackLang.HolProg 64 :=
.seq rawBody527_59 rawBody527_74

def rawBody527_76 : StackLang.HolProg 64 :=
.seq rawBody527_58 rawBody527_75

def rawBody527_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody527_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody527_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody527_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody527_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_84 : StackLang.HolProg 64 :=
.seq rawBody527_82 rawBody527_83

def rawBody527_85 : StackLang.HolProg 64 :=
.seq rawBody527_81 rawBody527_84

def rawBody527_86 : StackLang.HolProg 64 :=
.seq rawBody527_80 rawBody527_85

def rawBody527_87 : StackLang.HolProg 64 :=
.seq rawBody527_79 rawBody527_86

def rawBody527_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody527_90 : StackLang.HolProg 64 :=
.seq rawBody527_88 rawBody527_89

def rawBody527_91 : StackLang.HolProg 64 :=
.call (some (rawBody527_87, 0, 527, 4)) (Sum.inl 477) (some (rawBody527_90, 527, 5))

def rawBody527_92 : StackLang.HolProg 64 :=
.seq rawBody527_78 rawBody527_91

def rawBody527_93 : StackLang.HolProg 64 :=
.seq rawBody527_77 rawBody527_92

def rawBody527_94 : StackLang.HolProg 64 :=
.seq rawBody527_76 rawBody527_93

def rawBody527_95 : StackLang.HolProg 64 :=
.seq rawBody527_57 rawBody527_94

def rawBody527_96 : StackLang.HolProg 64 :=
.seq rawBody527_54 rawBody527_95

def rawBody527_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody527_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody527_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1729#64)

def rawBody527_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody527_103 : StackLang.HolProg 64 :=
.seq rawBody527_101 rawBody527_102

def rawBody527_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody527_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody527_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody527_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 527 7

def rawBody527_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody527_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody527_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody527_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody527_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody527_114 : StackLang.HolProg 64 :=
.seq rawBody527_112 rawBody527_113

def rawBody527_115 : StackLang.HolProg 64 :=
.seq rawBody527_111 rawBody527_114

def rawBody527_116 : StackLang.HolProg 64 :=
.seq rawBody527_110 rawBody527_115

def rawBody527_117 : StackLang.HolProg 64 :=
.seq rawBody527_109 rawBody527_116

def rawBody527_118 : StackLang.HolProg 64 :=
.seq rawBody527_108 rawBody527_117

def rawBody527_119 : StackLang.HolProg 64 :=
.seq rawBody527_107 rawBody527_118

def rawBody527_120 : StackLang.HolProg 64 :=
.seq rawBody527_106 rawBody527_119

def rawBody527_121 : StackLang.HolProg 64 :=
.seq rawBody527_105 rawBody527_120

def rawBody527_122 : StackLang.HolProg 64 :=
.seq rawBody527_104 rawBody527_121

def rawBody527_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody527_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody527_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody527_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody527_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody527_130 : StackLang.HolProg 64 :=
.seq rawBody527_128 rawBody527_129

def rawBody527_131 : StackLang.HolProg 64 :=
.seq rawBody527_127 rawBody527_130

def rawBody527_132 : StackLang.HolProg 64 :=
.seq rawBody527_126 rawBody527_131

def rawBody527_133 : StackLang.HolProg 64 :=
.seq rawBody527_125 rawBody527_132

def rawBody527_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody527_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody527_136 : StackLang.HolProg 64 :=
.seq rawBody527_134 rawBody527_135

def rawBody527_137 : StackLang.HolProg 64 :=
.call (some (rawBody527_133, 0, 527, 6)) (Sum.inl 490) (some (rawBody527_136, 527, 7))

def rawBody527_138 : StackLang.HolProg 64 :=
.seq rawBody527_124 rawBody527_137

def rawBody527_139 : StackLang.HolProg 64 :=
.seq rawBody527_123 rawBody527_138

def rawBody527_140 : StackLang.HolProg 64 :=
.seq rawBody527_122 rawBody527_139

def rawBody527_141 : StackLang.HolProg 64 :=
.seq rawBody527_103 rawBody527_140

def rawBody527_142 : StackLang.HolProg 64 :=
.seq rawBody527_100 rawBody527_141

def rawBody527_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody527_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody527_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody527_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody527_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody527_148 : StackLang.HolProg 64 :=
.seq rawBody527_146 rawBody527_147

def rawBody527_149 : StackLang.HolProg 64 :=
.seq rawBody527_145 rawBody527_148

def rawBody527_150 : StackLang.HolProg 64 :=
.seq rawBody527_144 rawBody527_149

def rawBody527_151 : StackLang.HolProg 64 :=
.seq rawBody527_143 rawBody527_150

def rawBody527_152 : StackLang.HolProg 64 :=
.seq rawBody527_142 rawBody527_151

def rawBody527_153 : StackLang.HolProg 64 :=
.seq rawBody527_99 rawBody527_152

def rawBody527_154 : StackLang.HolProg 64 :=
.seq rawBody527_98 rawBody527_153

def rawBody527_155 : StackLang.HolProg 64 :=
.seq rawBody527_97 rawBody527_154

def rawBody527_156 : StackLang.HolProg 64 :=
.seq rawBody527_96 rawBody527_155

def rawBody527_157 : StackLang.HolProg 64 :=
.seq rawBody527_53 rawBody527_156

def rawBody527_158 : StackLang.HolProg 64 :=
.seq rawBody527_52 rawBody527_157

def rawBody527_159 : StackLang.HolProg 64 :=
.seq rawBody527_51 rawBody527_158

def rawBody527_160 : StackLang.HolProg 64 :=
.seq rawBody527_50 rawBody527_159

def rawBody527_161 : StackLang.HolProg 64 :=
.seq rawBody527_49 rawBody527_160

def rawBody527_162 : StackLang.HolProg 64 :=
.seq rawBody527_48 rawBody527_161

def rawBody527_163 : StackLang.HolProg 64 :=
.seq rawBody527_47 rawBody527_162

def rawBody527_164 : StackLang.HolProg 64 :=
.seq rawBody527_46 rawBody527_163

def rawBody527_165 : StackLang.HolProg 64 :=
.seq rawBody527_3 rawBody527_164

def rawBody527_166 : StackLang.HolProg 64 :=
.seq rawBody527_2 rawBody527_165

def rawBody527_167 : StackLang.HolProg 64 :=
.seq rawBody527_1 rawBody527_166

def rawBody527_168 : StackLang.HolProg 64 :=
.seq rawBody527_0 rawBody527_167

def raw527 : StackLang.HolProg 64 := rawBody527_168
theorem raw527_eq : StackRawCall.compTop RawInfo.rawInfo (function527 (.list [])).1 = raw527 := by
  kernel_rfl
#print axioms raw527_eq
end InitECandidate.Proofs.BackendStages
