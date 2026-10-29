import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function528
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody528_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody528_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody528_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody528_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1730#64)

def rawBody528_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody528_7 : StackLang.HolProg 64 :=
.seq rawBody528_5 rawBody528_6

def rawBody528_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody528_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody528_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody528_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 3

def rawBody528_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody528_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody528_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody528_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody528_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody528_18 : StackLang.HolProg 64 :=
.seq rawBody528_16 rawBody528_17

def rawBody528_19 : StackLang.HolProg 64 :=
.seq rawBody528_15 rawBody528_18

def rawBody528_20 : StackLang.HolProg 64 :=
.seq rawBody528_14 rawBody528_19

def rawBody528_21 : StackLang.HolProg 64 :=
.seq rawBody528_13 rawBody528_20

def rawBody528_22 : StackLang.HolProg 64 :=
.seq rawBody528_12 rawBody528_21

def rawBody528_23 : StackLang.HolProg 64 :=
.seq rawBody528_11 rawBody528_22

def rawBody528_24 : StackLang.HolProg 64 :=
.seq rawBody528_10 rawBody528_23

def rawBody528_25 : StackLang.HolProg 64 :=
.seq rawBody528_9 rawBody528_24

def rawBody528_26 : StackLang.HolProg 64 :=
.seq rawBody528_8 rawBody528_25

def rawBody528_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody528_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody528_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody528_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody528_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_34 : StackLang.HolProg 64 :=
.seq rawBody528_32 rawBody528_33

def rawBody528_35 : StackLang.HolProg 64 :=
.seq rawBody528_31 rawBody528_34

def rawBody528_36 : StackLang.HolProg 64 :=
.seq rawBody528_30 rawBody528_35

def rawBody528_37 : StackLang.HolProg 64 :=
.seq rawBody528_29 rawBody528_36

def rawBody528_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody528_40 : StackLang.HolProg 64 :=
.seq rawBody528_38 rawBody528_39

def rawBody528_41 : StackLang.HolProg 64 :=
.call (some (rawBody528_37, 0, 528, 2)) (Sum.inl 470) (some (rawBody528_40, 528, 3))

def rawBody528_42 : StackLang.HolProg 64 :=
.seq rawBody528_28 rawBody528_41

def rawBody528_43 : StackLang.HolProg 64 :=
.seq rawBody528_27 rawBody528_42

def rawBody528_44 : StackLang.HolProg 64 :=
.seq rawBody528_26 rawBody528_43

def rawBody528_45 : StackLang.HolProg 64 :=
.seq rawBody528_7 rawBody528_44

def rawBody528_46 : StackLang.HolProg 64 :=
.seq rawBody528_4 rawBody528_45

def rawBody528_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody528_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody528_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody528_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody528_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody528_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def rawBody528_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1731#64)

def rawBody528_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody528_57 : StackLang.HolProg 64 :=
.seq rawBody528_55 rawBody528_56

def rawBody528_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody528_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody528_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody528_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 5

def rawBody528_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody528_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody528_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody528_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody528_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody528_68 : StackLang.HolProg 64 :=
.seq rawBody528_66 rawBody528_67

def rawBody528_69 : StackLang.HolProg 64 :=
.seq rawBody528_65 rawBody528_68

def rawBody528_70 : StackLang.HolProg 64 :=
.seq rawBody528_64 rawBody528_69

def rawBody528_71 : StackLang.HolProg 64 :=
.seq rawBody528_63 rawBody528_70

def rawBody528_72 : StackLang.HolProg 64 :=
.seq rawBody528_62 rawBody528_71

def rawBody528_73 : StackLang.HolProg 64 :=
.seq rawBody528_61 rawBody528_72

def rawBody528_74 : StackLang.HolProg 64 :=
.seq rawBody528_60 rawBody528_73

def rawBody528_75 : StackLang.HolProg 64 :=
.seq rawBody528_59 rawBody528_74

def rawBody528_76 : StackLang.HolProg 64 :=
.seq rawBody528_58 rawBody528_75

def rawBody528_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody528_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody528_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody528_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody528_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_84 : StackLang.HolProg 64 :=
.seq rawBody528_82 rawBody528_83

def rawBody528_85 : StackLang.HolProg 64 :=
.seq rawBody528_81 rawBody528_84

def rawBody528_86 : StackLang.HolProg 64 :=
.seq rawBody528_80 rawBody528_85

def rawBody528_87 : StackLang.HolProg 64 :=
.seq rawBody528_79 rawBody528_86

def rawBody528_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody528_90 : StackLang.HolProg 64 :=
.seq rawBody528_88 rawBody528_89

def rawBody528_91 : StackLang.HolProg 64 :=
.call (some (rawBody528_87, 0, 528, 4)) (Sum.inl 477) (some (rawBody528_90, 528, 5))

def rawBody528_92 : StackLang.HolProg 64 :=
.seq rawBody528_78 rawBody528_91

def rawBody528_93 : StackLang.HolProg 64 :=
.seq rawBody528_77 rawBody528_92

def rawBody528_94 : StackLang.HolProg 64 :=
.seq rawBody528_76 rawBody528_93

def rawBody528_95 : StackLang.HolProg 64 :=
.seq rawBody528_57 rawBody528_94

def rawBody528_96 : StackLang.HolProg 64 :=
.seq rawBody528_54 rawBody528_95

def rawBody528_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody528_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody528_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1732#64)

def rawBody528_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody528_103 : StackLang.HolProg 64 :=
.seq rawBody528_101 rawBody528_102

def rawBody528_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody528_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody528_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody528_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 7

def rawBody528_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody528_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody528_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody528_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody528_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody528_114 : StackLang.HolProg 64 :=
.seq rawBody528_112 rawBody528_113

def rawBody528_115 : StackLang.HolProg 64 :=
.seq rawBody528_111 rawBody528_114

def rawBody528_116 : StackLang.HolProg 64 :=
.seq rawBody528_110 rawBody528_115

def rawBody528_117 : StackLang.HolProg 64 :=
.seq rawBody528_109 rawBody528_116

def rawBody528_118 : StackLang.HolProg 64 :=
.seq rawBody528_108 rawBody528_117

def rawBody528_119 : StackLang.HolProg 64 :=
.seq rawBody528_107 rawBody528_118

def rawBody528_120 : StackLang.HolProg 64 :=
.seq rawBody528_106 rawBody528_119

def rawBody528_121 : StackLang.HolProg 64 :=
.seq rawBody528_105 rawBody528_120

def rawBody528_122 : StackLang.HolProg 64 :=
.seq rawBody528_104 rawBody528_121

def rawBody528_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody528_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody528_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody528_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody528_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody528_130 : StackLang.HolProg 64 :=
.seq rawBody528_128 rawBody528_129

def rawBody528_131 : StackLang.HolProg 64 :=
.seq rawBody528_127 rawBody528_130

def rawBody528_132 : StackLang.HolProg 64 :=
.seq rawBody528_126 rawBody528_131

def rawBody528_133 : StackLang.HolProg 64 :=
.seq rawBody528_125 rawBody528_132

def rawBody528_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody528_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody528_136 : StackLang.HolProg 64 :=
.seq rawBody528_134 rawBody528_135

def rawBody528_137 : StackLang.HolProg 64 :=
.call (some (rawBody528_133, 0, 528, 6)) (Sum.inl 490) (some (rawBody528_136, 528, 7))

def rawBody528_138 : StackLang.HolProg 64 :=
.seq rawBody528_124 rawBody528_137

def rawBody528_139 : StackLang.HolProg 64 :=
.seq rawBody528_123 rawBody528_138

def rawBody528_140 : StackLang.HolProg 64 :=
.seq rawBody528_122 rawBody528_139

def rawBody528_141 : StackLang.HolProg 64 :=
.seq rawBody528_103 rawBody528_140

def rawBody528_142 : StackLang.HolProg 64 :=
.seq rawBody528_100 rawBody528_141

def rawBody528_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody528_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody528_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody528_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody528_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody528_148 : StackLang.HolProg 64 :=
.seq rawBody528_146 rawBody528_147

def rawBody528_149 : StackLang.HolProg 64 :=
.seq rawBody528_145 rawBody528_148

def rawBody528_150 : StackLang.HolProg 64 :=
.seq rawBody528_144 rawBody528_149

def rawBody528_151 : StackLang.HolProg 64 :=
.seq rawBody528_143 rawBody528_150

def rawBody528_152 : StackLang.HolProg 64 :=
.seq rawBody528_142 rawBody528_151

def rawBody528_153 : StackLang.HolProg 64 :=
.seq rawBody528_99 rawBody528_152

def rawBody528_154 : StackLang.HolProg 64 :=
.seq rawBody528_98 rawBody528_153

def rawBody528_155 : StackLang.HolProg 64 :=
.seq rawBody528_97 rawBody528_154

def rawBody528_156 : StackLang.HolProg 64 :=
.seq rawBody528_96 rawBody528_155

def rawBody528_157 : StackLang.HolProg 64 :=
.seq rawBody528_53 rawBody528_156

def rawBody528_158 : StackLang.HolProg 64 :=
.seq rawBody528_52 rawBody528_157

def rawBody528_159 : StackLang.HolProg 64 :=
.seq rawBody528_51 rawBody528_158

def rawBody528_160 : StackLang.HolProg 64 :=
.seq rawBody528_50 rawBody528_159

def rawBody528_161 : StackLang.HolProg 64 :=
.seq rawBody528_49 rawBody528_160

def rawBody528_162 : StackLang.HolProg 64 :=
.seq rawBody528_48 rawBody528_161

def rawBody528_163 : StackLang.HolProg 64 :=
.seq rawBody528_47 rawBody528_162

def rawBody528_164 : StackLang.HolProg 64 :=
.seq rawBody528_46 rawBody528_163

def rawBody528_165 : StackLang.HolProg 64 :=
.seq rawBody528_3 rawBody528_164

def rawBody528_166 : StackLang.HolProg 64 :=
.seq rawBody528_2 rawBody528_165

def rawBody528_167 : StackLang.HolProg 64 :=
.seq rawBody528_1 rawBody528_166

def rawBody528_168 : StackLang.HolProg 64 :=
.seq rawBody528_0 rawBody528_167

def raw528 : StackLang.HolProg 64 := rawBody528_168
theorem raw528_eq : StackRawCall.compTop RawInfo.rawInfo (function528 (.list [])).1 = raw528 := by
  kernel_rfl
#print axioms raw528_eq
end InitECandidate.Proofs.BackendStages
