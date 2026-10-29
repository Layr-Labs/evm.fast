import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function533
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody533_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody533_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody533_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody533_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1752#64)

def rawBody533_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody533_7 : StackLang.HolProg 64 :=
.seq rawBody533_5 rawBody533_6

def rawBody533_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody533_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody533_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody533_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 3

def rawBody533_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody533_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody533_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody533_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody533_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody533_18 : StackLang.HolProg 64 :=
.seq rawBody533_16 rawBody533_17

def rawBody533_19 : StackLang.HolProg 64 :=
.seq rawBody533_15 rawBody533_18

def rawBody533_20 : StackLang.HolProg 64 :=
.seq rawBody533_14 rawBody533_19

def rawBody533_21 : StackLang.HolProg 64 :=
.seq rawBody533_13 rawBody533_20

def rawBody533_22 : StackLang.HolProg 64 :=
.seq rawBody533_12 rawBody533_21

def rawBody533_23 : StackLang.HolProg 64 :=
.seq rawBody533_11 rawBody533_22

def rawBody533_24 : StackLang.HolProg 64 :=
.seq rawBody533_10 rawBody533_23

def rawBody533_25 : StackLang.HolProg 64 :=
.seq rawBody533_9 rawBody533_24

def rawBody533_26 : StackLang.HolProg 64 :=
.seq rawBody533_8 rawBody533_25

def rawBody533_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody533_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody533_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody533_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody533_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_34 : StackLang.HolProg 64 :=
.seq rawBody533_32 rawBody533_33

def rawBody533_35 : StackLang.HolProg 64 :=
.seq rawBody533_31 rawBody533_34

def rawBody533_36 : StackLang.HolProg 64 :=
.seq rawBody533_30 rawBody533_35

def rawBody533_37 : StackLang.HolProg 64 :=
.seq rawBody533_29 rawBody533_36

def rawBody533_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody533_40 : StackLang.HolProg 64 :=
.seq rawBody533_38 rawBody533_39

def rawBody533_41 : StackLang.HolProg 64 :=
.call (some (rawBody533_37, 0, 533, 2)) (Sum.inl 470) (some (rawBody533_40, 533, 3))

def rawBody533_42 : StackLang.HolProg 64 :=
.seq rawBody533_28 rawBody533_41

def rawBody533_43 : StackLang.HolProg 64 :=
.seq rawBody533_27 rawBody533_42

def rawBody533_44 : StackLang.HolProg 64 :=
.seq rawBody533_26 rawBody533_43

def rawBody533_45 : StackLang.HolProg 64 :=
.seq rawBody533_7 rawBody533_44

def rawBody533_46 : StackLang.HolProg 64 :=
.seq rawBody533_4 rawBody533_45

def rawBody533_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody533_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody533_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody533_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody533_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody533_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody533_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1753#64)

def rawBody533_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody533_57 : StackLang.HolProg 64 :=
.seq rawBody533_55 rawBody533_56

def rawBody533_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody533_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody533_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody533_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 5

def rawBody533_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody533_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody533_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody533_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody533_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody533_68 : StackLang.HolProg 64 :=
.seq rawBody533_66 rawBody533_67

def rawBody533_69 : StackLang.HolProg 64 :=
.seq rawBody533_65 rawBody533_68

def rawBody533_70 : StackLang.HolProg 64 :=
.seq rawBody533_64 rawBody533_69

def rawBody533_71 : StackLang.HolProg 64 :=
.seq rawBody533_63 rawBody533_70

def rawBody533_72 : StackLang.HolProg 64 :=
.seq rawBody533_62 rawBody533_71

def rawBody533_73 : StackLang.HolProg 64 :=
.seq rawBody533_61 rawBody533_72

def rawBody533_74 : StackLang.HolProg 64 :=
.seq rawBody533_60 rawBody533_73

def rawBody533_75 : StackLang.HolProg 64 :=
.seq rawBody533_59 rawBody533_74

def rawBody533_76 : StackLang.HolProg 64 :=
.seq rawBody533_58 rawBody533_75

def rawBody533_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody533_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody533_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody533_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody533_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_84 : StackLang.HolProg 64 :=
.seq rawBody533_82 rawBody533_83

def rawBody533_85 : StackLang.HolProg 64 :=
.seq rawBody533_81 rawBody533_84

def rawBody533_86 : StackLang.HolProg 64 :=
.seq rawBody533_80 rawBody533_85

def rawBody533_87 : StackLang.HolProg 64 :=
.seq rawBody533_79 rawBody533_86

def rawBody533_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody533_90 : StackLang.HolProg 64 :=
.seq rawBody533_88 rawBody533_89

def rawBody533_91 : StackLang.HolProg 64 :=
.call (some (rawBody533_87, 0, 533, 4)) (Sum.inl 477) (some (rawBody533_90, 533, 5))

def rawBody533_92 : StackLang.HolProg 64 :=
.seq rawBody533_78 rawBody533_91

def rawBody533_93 : StackLang.HolProg 64 :=
.seq rawBody533_77 rawBody533_92

def rawBody533_94 : StackLang.HolProg 64 :=
.seq rawBody533_76 rawBody533_93

def rawBody533_95 : StackLang.HolProg 64 :=
.seq rawBody533_57 rawBody533_94

def rawBody533_96 : StackLang.HolProg 64 :=
.seq rawBody533_54 rawBody533_95

def rawBody533_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody533_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody533_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1754#64)

def rawBody533_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody533_103 : StackLang.HolProg 64 :=
.seq rawBody533_101 rawBody533_102

def rawBody533_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody533_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody533_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody533_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 7

def rawBody533_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody533_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody533_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody533_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody533_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody533_114 : StackLang.HolProg 64 :=
.seq rawBody533_112 rawBody533_113

def rawBody533_115 : StackLang.HolProg 64 :=
.seq rawBody533_111 rawBody533_114

def rawBody533_116 : StackLang.HolProg 64 :=
.seq rawBody533_110 rawBody533_115

def rawBody533_117 : StackLang.HolProg 64 :=
.seq rawBody533_109 rawBody533_116

def rawBody533_118 : StackLang.HolProg 64 :=
.seq rawBody533_108 rawBody533_117

def rawBody533_119 : StackLang.HolProg 64 :=
.seq rawBody533_107 rawBody533_118

def rawBody533_120 : StackLang.HolProg 64 :=
.seq rawBody533_106 rawBody533_119

def rawBody533_121 : StackLang.HolProg 64 :=
.seq rawBody533_105 rawBody533_120

def rawBody533_122 : StackLang.HolProg 64 :=
.seq rawBody533_104 rawBody533_121

def rawBody533_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody533_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody533_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody533_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody533_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody533_130 : StackLang.HolProg 64 :=
.seq rawBody533_128 rawBody533_129

def rawBody533_131 : StackLang.HolProg 64 :=
.seq rawBody533_127 rawBody533_130

def rawBody533_132 : StackLang.HolProg 64 :=
.seq rawBody533_126 rawBody533_131

def rawBody533_133 : StackLang.HolProg 64 :=
.seq rawBody533_125 rawBody533_132

def rawBody533_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody533_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody533_136 : StackLang.HolProg 64 :=
.seq rawBody533_134 rawBody533_135

def rawBody533_137 : StackLang.HolProg 64 :=
.call (some (rawBody533_133, 0, 533, 6)) (Sum.inl 490) (some (rawBody533_136, 533, 7))

def rawBody533_138 : StackLang.HolProg 64 :=
.seq rawBody533_124 rawBody533_137

def rawBody533_139 : StackLang.HolProg 64 :=
.seq rawBody533_123 rawBody533_138

def rawBody533_140 : StackLang.HolProg 64 :=
.seq rawBody533_122 rawBody533_139

def rawBody533_141 : StackLang.HolProg 64 :=
.seq rawBody533_103 rawBody533_140

def rawBody533_142 : StackLang.HolProg 64 :=
.seq rawBody533_100 rawBody533_141

def rawBody533_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody533_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody533_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody533_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody533_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody533_148 : StackLang.HolProg 64 :=
.seq rawBody533_146 rawBody533_147

def rawBody533_149 : StackLang.HolProg 64 :=
.seq rawBody533_145 rawBody533_148

def rawBody533_150 : StackLang.HolProg 64 :=
.seq rawBody533_144 rawBody533_149

def rawBody533_151 : StackLang.HolProg 64 :=
.seq rawBody533_143 rawBody533_150

def rawBody533_152 : StackLang.HolProg 64 :=
.seq rawBody533_142 rawBody533_151

def rawBody533_153 : StackLang.HolProg 64 :=
.seq rawBody533_99 rawBody533_152

def rawBody533_154 : StackLang.HolProg 64 :=
.seq rawBody533_98 rawBody533_153

def rawBody533_155 : StackLang.HolProg 64 :=
.seq rawBody533_97 rawBody533_154

def rawBody533_156 : StackLang.HolProg 64 :=
.seq rawBody533_96 rawBody533_155

def rawBody533_157 : StackLang.HolProg 64 :=
.seq rawBody533_53 rawBody533_156

def rawBody533_158 : StackLang.HolProg 64 :=
.seq rawBody533_52 rawBody533_157

def rawBody533_159 : StackLang.HolProg 64 :=
.seq rawBody533_51 rawBody533_158

def rawBody533_160 : StackLang.HolProg 64 :=
.seq rawBody533_50 rawBody533_159

def rawBody533_161 : StackLang.HolProg 64 :=
.seq rawBody533_49 rawBody533_160

def rawBody533_162 : StackLang.HolProg 64 :=
.seq rawBody533_48 rawBody533_161

def rawBody533_163 : StackLang.HolProg 64 :=
.seq rawBody533_47 rawBody533_162

def rawBody533_164 : StackLang.HolProg 64 :=
.seq rawBody533_46 rawBody533_163

def rawBody533_165 : StackLang.HolProg 64 :=
.seq rawBody533_3 rawBody533_164

def rawBody533_166 : StackLang.HolProg 64 :=
.seq rawBody533_2 rawBody533_165

def rawBody533_167 : StackLang.HolProg 64 :=
.seq rawBody533_1 rawBody533_166

def rawBody533_168 : StackLang.HolProg 64 :=
.seq rawBody533_0 rawBody533_167

def raw533 : StackLang.HolProg 64 := rawBody533_168
theorem raw533_eq : StackRawCall.compTop RawInfo.rawInfo (function533 (.list [])).1 = raw533 := by
  kernel_rfl
#print axioms raw533_eq
end InitECandidate.Proofs.BackendStages
