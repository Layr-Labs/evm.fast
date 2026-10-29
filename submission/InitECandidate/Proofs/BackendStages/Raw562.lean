import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function562
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody562_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody562_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody562_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody562_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1925#64)

def rawBody562_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody562_7 : StackLang.HolProg 64 :=
.seq rawBody562_5 rawBody562_6

def rawBody562_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody562_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody562_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody562_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 3

def rawBody562_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody562_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody562_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody562_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody562_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody562_18 : StackLang.HolProg 64 :=
.seq rawBody562_16 rawBody562_17

def rawBody562_19 : StackLang.HolProg 64 :=
.seq rawBody562_15 rawBody562_18

def rawBody562_20 : StackLang.HolProg 64 :=
.seq rawBody562_14 rawBody562_19

def rawBody562_21 : StackLang.HolProg 64 :=
.seq rawBody562_13 rawBody562_20

def rawBody562_22 : StackLang.HolProg 64 :=
.seq rawBody562_12 rawBody562_21

def rawBody562_23 : StackLang.HolProg 64 :=
.seq rawBody562_11 rawBody562_22

def rawBody562_24 : StackLang.HolProg 64 :=
.seq rawBody562_10 rawBody562_23

def rawBody562_25 : StackLang.HolProg 64 :=
.seq rawBody562_9 rawBody562_24

def rawBody562_26 : StackLang.HolProg 64 :=
.seq rawBody562_8 rawBody562_25

def rawBody562_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody562_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody562_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody562_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody562_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_34 : StackLang.HolProg 64 :=
.seq rawBody562_32 rawBody562_33

def rawBody562_35 : StackLang.HolProg 64 :=
.seq rawBody562_31 rawBody562_34

def rawBody562_36 : StackLang.HolProg 64 :=
.seq rawBody562_30 rawBody562_35

def rawBody562_37 : StackLang.HolProg 64 :=
.seq rawBody562_29 rawBody562_36

def rawBody562_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody562_40 : StackLang.HolProg 64 :=
.seq rawBody562_38 rawBody562_39

def rawBody562_41 : StackLang.HolProg 64 :=
.call (some (rawBody562_37, 0, 562, 2)) (Sum.inl 470) (some (rawBody562_40, 562, 3))

def rawBody562_42 : StackLang.HolProg 64 :=
.seq rawBody562_28 rawBody562_41

def rawBody562_43 : StackLang.HolProg 64 :=
.seq rawBody562_27 rawBody562_42

def rawBody562_44 : StackLang.HolProg 64 :=
.seq rawBody562_26 rawBody562_43

def rawBody562_45 : StackLang.HolProg 64 :=
.seq rawBody562_7 rawBody562_44

def rawBody562_46 : StackLang.HolProg 64 :=
.seq rawBody562_4 rawBody562_45

def rawBody562_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody562_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody562_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody562_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody562_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody562_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def rawBody562_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1926#64)

def rawBody562_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody562_57 : StackLang.HolProg 64 :=
.seq rawBody562_55 rawBody562_56

def rawBody562_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody562_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody562_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody562_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 5

def rawBody562_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody562_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody562_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody562_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody562_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody562_68 : StackLang.HolProg 64 :=
.seq rawBody562_66 rawBody562_67

def rawBody562_69 : StackLang.HolProg 64 :=
.seq rawBody562_65 rawBody562_68

def rawBody562_70 : StackLang.HolProg 64 :=
.seq rawBody562_64 rawBody562_69

def rawBody562_71 : StackLang.HolProg 64 :=
.seq rawBody562_63 rawBody562_70

def rawBody562_72 : StackLang.HolProg 64 :=
.seq rawBody562_62 rawBody562_71

def rawBody562_73 : StackLang.HolProg 64 :=
.seq rawBody562_61 rawBody562_72

def rawBody562_74 : StackLang.HolProg 64 :=
.seq rawBody562_60 rawBody562_73

def rawBody562_75 : StackLang.HolProg 64 :=
.seq rawBody562_59 rawBody562_74

def rawBody562_76 : StackLang.HolProg 64 :=
.seq rawBody562_58 rawBody562_75

def rawBody562_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody562_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody562_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody562_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody562_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_84 : StackLang.HolProg 64 :=
.seq rawBody562_82 rawBody562_83

def rawBody562_85 : StackLang.HolProg 64 :=
.seq rawBody562_81 rawBody562_84

def rawBody562_86 : StackLang.HolProg 64 :=
.seq rawBody562_80 rawBody562_85

def rawBody562_87 : StackLang.HolProg 64 :=
.seq rawBody562_79 rawBody562_86

def rawBody562_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody562_90 : StackLang.HolProg 64 :=
.seq rawBody562_88 rawBody562_89

def rawBody562_91 : StackLang.HolProg 64 :=
.call (some (rawBody562_87, 0, 562, 4)) (Sum.inl 477) (some (rawBody562_90, 562, 5))

def rawBody562_92 : StackLang.HolProg 64 :=
.seq rawBody562_78 rawBody562_91

def rawBody562_93 : StackLang.HolProg 64 :=
.seq rawBody562_77 rawBody562_92

def rawBody562_94 : StackLang.HolProg 64 :=
.seq rawBody562_76 rawBody562_93

def rawBody562_95 : StackLang.HolProg 64 :=
.seq rawBody562_57 rawBody562_94

def rawBody562_96 : StackLang.HolProg 64 :=
.seq rawBody562_54 rawBody562_95

def rawBody562_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody562_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody562_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1927#64)

def rawBody562_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody562_103 : StackLang.HolProg 64 :=
.seq rawBody562_101 rawBody562_102

def rawBody562_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody562_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody562_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody562_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 7

def rawBody562_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody562_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody562_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody562_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody562_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody562_114 : StackLang.HolProg 64 :=
.seq rawBody562_112 rawBody562_113

def rawBody562_115 : StackLang.HolProg 64 :=
.seq rawBody562_111 rawBody562_114

def rawBody562_116 : StackLang.HolProg 64 :=
.seq rawBody562_110 rawBody562_115

def rawBody562_117 : StackLang.HolProg 64 :=
.seq rawBody562_109 rawBody562_116

def rawBody562_118 : StackLang.HolProg 64 :=
.seq rawBody562_108 rawBody562_117

def rawBody562_119 : StackLang.HolProg 64 :=
.seq rawBody562_107 rawBody562_118

def rawBody562_120 : StackLang.HolProg 64 :=
.seq rawBody562_106 rawBody562_119

def rawBody562_121 : StackLang.HolProg 64 :=
.seq rawBody562_105 rawBody562_120

def rawBody562_122 : StackLang.HolProg 64 :=
.seq rawBody562_104 rawBody562_121

def rawBody562_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody562_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody562_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody562_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody562_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody562_130 : StackLang.HolProg 64 :=
.seq rawBody562_128 rawBody562_129

def rawBody562_131 : StackLang.HolProg 64 :=
.seq rawBody562_127 rawBody562_130

def rawBody562_132 : StackLang.HolProg 64 :=
.seq rawBody562_126 rawBody562_131

def rawBody562_133 : StackLang.HolProg 64 :=
.seq rawBody562_125 rawBody562_132

def rawBody562_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody562_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody562_136 : StackLang.HolProg 64 :=
.seq rawBody562_134 rawBody562_135

def rawBody562_137 : StackLang.HolProg 64 :=
.call (some (rawBody562_133, 0, 562, 6)) (Sum.inl 490) (some (rawBody562_136, 562, 7))

def rawBody562_138 : StackLang.HolProg 64 :=
.seq rawBody562_124 rawBody562_137

def rawBody562_139 : StackLang.HolProg 64 :=
.seq rawBody562_123 rawBody562_138

def rawBody562_140 : StackLang.HolProg 64 :=
.seq rawBody562_122 rawBody562_139

def rawBody562_141 : StackLang.HolProg 64 :=
.seq rawBody562_103 rawBody562_140

def rawBody562_142 : StackLang.HolProg 64 :=
.seq rawBody562_100 rawBody562_141

def rawBody562_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody562_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody562_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody562_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody562_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody562_148 : StackLang.HolProg 64 :=
.seq rawBody562_146 rawBody562_147

def rawBody562_149 : StackLang.HolProg 64 :=
.seq rawBody562_145 rawBody562_148

def rawBody562_150 : StackLang.HolProg 64 :=
.seq rawBody562_144 rawBody562_149

def rawBody562_151 : StackLang.HolProg 64 :=
.seq rawBody562_143 rawBody562_150

def rawBody562_152 : StackLang.HolProg 64 :=
.seq rawBody562_142 rawBody562_151

def rawBody562_153 : StackLang.HolProg 64 :=
.seq rawBody562_99 rawBody562_152

def rawBody562_154 : StackLang.HolProg 64 :=
.seq rawBody562_98 rawBody562_153

def rawBody562_155 : StackLang.HolProg 64 :=
.seq rawBody562_97 rawBody562_154

def rawBody562_156 : StackLang.HolProg 64 :=
.seq rawBody562_96 rawBody562_155

def rawBody562_157 : StackLang.HolProg 64 :=
.seq rawBody562_53 rawBody562_156

def rawBody562_158 : StackLang.HolProg 64 :=
.seq rawBody562_52 rawBody562_157

def rawBody562_159 : StackLang.HolProg 64 :=
.seq rawBody562_51 rawBody562_158

def rawBody562_160 : StackLang.HolProg 64 :=
.seq rawBody562_50 rawBody562_159

def rawBody562_161 : StackLang.HolProg 64 :=
.seq rawBody562_49 rawBody562_160

def rawBody562_162 : StackLang.HolProg 64 :=
.seq rawBody562_48 rawBody562_161

def rawBody562_163 : StackLang.HolProg 64 :=
.seq rawBody562_47 rawBody562_162

def rawBody562_164 : StackLang.HolProg 64 :=
.seq rawBody562_46 rawBody562_163

def rawBody562_165 : StackLang.HolProg 64 :=
.seq rawBody562_3 rawBody562_164

def rawBody562_166 : StackLang.HolProg 64 :=
.seq rawBody562_2 rawBody562_165

def rawBody562_167 : StackLang.HolProg 64 :=
.seq rawBody562_1 rawBody562_166

def rawBody562_168 : StackLang.HolProg 64 :=
.seq rawBody562_0 rawBody562_167

def raw562 : StackLang.HolProg 64 := rawBody562_168
theorem raw562_eq : StackRawCall.compTop RawInfo.rawInfo (function562 (.list [])).1 = raw562 := by
  kernel_rfl
#print axioms raw562_eq
end InitECandidate.Proofs.BackendStages
