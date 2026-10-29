import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function568
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody568_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody568_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody568_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody568_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1960#64)

def rawBody568_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody568_7 : StackLang.HolProg 64 :=
.seq rawBody568_5 rawBody568_6

def rawBody568_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody568_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody568_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody568_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 3

def rawBody568_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody568_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody568_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody568_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody568_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody568_18 : StackLang.HolProg 64 :=
.seq rawBody568_16 rawBody568_17

def rawBody568_19 : StackLang.HolProg 64 :=
.seq rawBody568_15 rawBody568_18

def rawBody568_20 : StackLang.HolProg 64 :=
.seq rawBody568_14 rawBody568_19

def rawBody568_21 : StackLang.HolProg 64 :=
.seq rawBody568_13 rawBody568_20

def rawBody568_22 : StackLang.HolProg 64 :=
.seq rawBody568_12 rawBody568_21

def rawBody568_23 : StackLang.HolProg 64 :=
.seq rawBody568_11 rawBody568_22

def rawBody568_24 : StackLang.HolProg 64 :=
.seq rawBody568_10 rawBody568_23

def rawBody568_25 : StackLang.HolProg 64 :=
.seq rawBody568_9 rawBody568_24

def rawBody568_26 : StackLang.HolProg 64 :=
.seq rawBody568_8 rawBody568_25

def rawBody568_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody568_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody568_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody568_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody568_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_34 : StackLang.HolProg 64 :=
.seq rawBody568_32 rawBody568_33

def rawBody568_35 : StackLang.HolProg 64 :=
.seq rawBody568_31 rawBody568_34

def rawBody568_36 : StackLang.HolProg 64 :=
.seq rawBody568_30 rawBody568_35

def rawBody568_37 : StackLang.HolProg 64 :=
.seq rawBody568_29 rawBody568_36

def rawBody568_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody568_40 : StackLang.HolProg 64 :=
.seq rawBody568_38 rawBody568_39

def rawBody568_41 : StackLang.HolProg 64 :=
.call (some (rawBody568_37, 0, 568, 2)) (Sum.inl 470) (some (rawBody568_40, 568, 3))

def rawBody568_42 : StackLang.HolProg 64 :=
.seq rawBody568_28 rawBody568_41

def rawBody568_43 : StackLang.HolProg 64 :=
.seq rawBody568_27 rawBody568_42

def rawBody568_44 : StackLang.HolProg 64 :=
.seq rawBody568_26 rawBody568_43

def rawBody568_45 : StackLang.HolProg 64 :=
.seq rawBody568_7 rawBody568_44

def rawBody568_46 : StackLang.HolProg 64 :=
.seq rawBody568_4 rawBody568_45

def rawBody568_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody568_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody568_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody568_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody568_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody568_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 152#64))

def rawBody568_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1961#64)

def rawBody568_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody568_57 : StackLang.HolProg 64 :=
.seq rawBody568_55 rawBody568_56

def rawBody568_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody568_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody568_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody568_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 5

def rawBody568_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody568_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody568_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody568_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody568_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody568_68 : StackLang.HolProg 64 :=
.seq rawBody568_66 rawBody568_67

def rawBody568_69 : StackLang.HolProg 64 :=
.seq rawBody568_65 rawBody568_68

def rawBody568_70 : StackLang.HolProg 64 :=
.seq rawBody568_64 rawBody568_69

def rawBody568_71 : StackLang.HolProg 64 :=
.seq rawBody568_63 rawBody568_70

def rawBody568_72 : StackLang.HolProg 64 :=
.seq rawBody568_62 rawBody568_71

def rawBody568_73 : StackLang.HolProg 64 :=
.seq rawBody568_61 rawBody568_72

def rawBody568_74 : StackLang.HolProg 64 :=
.seq rawBody568_60 rawBody568_73

def rawBody568_75 : StackLang.HolProg 64 :=
.seq rawBody568_59 rawBody568_74

def rawBody568_76 : StackLang.HolProg 64 :=
.seq rawBody568_58 rawBody568_75

def rawBody568_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody568_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody568_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody568_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody568_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_84 : StackLang.HolProg 64 :=
.seq rawBody568_82 rawBody568_83

def rawBody568_85 : StackLang.HolProg 64 :=
.seq rawBody568_81 rawBody568_84

def rawBody568_86 : StackLang.HolProg 64 :=
.seq rawBody568_80 rawBody568_85

def rawBody568_87 : StackLang.HolProg 64 :=
.seq rawBody568_79 rawBody568_86

def rawBody568_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody568_90 : StackLang.HolProg 64 :=
.seq rawBody568_88 rawBody568_89

def rawBody568_91 : StackLang.HolProg 64 :=
.call (some (rawBody568_87, 0, 568, 4)) (Sum.inl 477) (some (rawBody568_90, 568, 5))

def rawBody568_92 : StackLang.HolProg 64 :=
.seq rawBody568_78 rawBody568_91

def rawBody568_93 : StackLang.HolProg 64 :=
.seq rawBody568_77 rawBody568_92

def rawBody568_94 : StackLang.HolProg 64 :=
.seq rawBody568_76 rawBody568_93

def rawBody568_95 : StackLang.HolProg 64 :=
.seq rawBody568_57 rawBody568_94

def rawBody568_96 : StackLang.HolProg 64 :=
.seq rawBody568_54 rawBody568_95

def rawBody568_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody568_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody568_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1962#64)

def rawBody568_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody568_103 : StackLang.HolProg 64 :=
.seq rawBody568_101 rawBody568_102

def rawBody568_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody568_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody568_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody568_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 7

def rawBody568_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody568_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody568_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody568_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody568_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody568_114 : StackLang.HolProg 64 :=
.seq rawBody568_112 rawBody568_113

def rawBody568_115 : StackLang.HolProg 64 :=
.seq rawBody568_111 rawBody568_114

def rawBody568_116 : StackLang.HolProg 64 :=
.seq rawBody568_110 rawBody568_115

def rawBody568_117 : StackLang.HolProg 64 :=
.seq rawBody568_109 rawBody568_116

def rawBody568_118 : StackLang.HolProg 64 :=
.seq rawBody568_108 rawBody568_117

def rawBody568_119 : StackLang.HolProg 64 :=
.seq rawBody568_107 rawBody568_118

def rawBody568_120 : StackLang.HolProg 64 :=
.seq rawBody568_106 rawBody568_119

def rawBody568_121 : StackLang.HolProg 64 :=
.seq rawBody568_105 rawBody568_120

def rawBody568_122 : StackLang.HolProg 64 :=
.seq rawBody568_104 rawBody568_121

def rawBody568_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody568_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody568_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody568_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody568_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody568_130 : StackLang.HolProg 64 :=
.seq rawBody568_128 rawBody568_129

def rawBody568_131 : StackLang.HolProg 64 :=
.seq rawBody568_127 rawBody568_130

def rawBody568_132 : StackLang.HolProg 64 :=
.seq rawBody568_126 rawBody568_131

def rawBody568_133 : StackLang.HolProg 64 :=
.seq rawBody568_125 rawBody568_132

def rawBody568_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody568_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody568_136 : StackLang.HolProg 64 :=
.seq rawBody568_134 rawBody568_135

def rawBody568_137 : StackLang.HolProg 64 :=
.call (some (rawBody568_133, 0, 568, 6)) (Sum.inl 490) (some (rawBody568_136, 568, 7))

def rawBody568_138 : StackLang.HolProg 64 :=
.seq rawBody568_124 rawBody568_137

def rawBody568_139 : StackLang.HolProg 64 :=
.seq rawBody568_123 rawBody568_138

def rawBody568_140 : StackLang.HolProg 64 :=
.seq rawBody568_122 rawBody568_139

def rawBody568_141 : StackLang.HolProg 64 :=
.seq rawBody568_103 rawBody568_140

def rawBody568_142 : StackLang.HolProg 64 :=
.seq rawBody568_100 rawBody568_141

def rawBody568_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody568_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody568_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody568_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody568_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody568_148 : StackLang.HolProg 64 :=
.seq rawBody568_146 rawBody568_147

def rawBody568_149 : StackLang.HolProg 64 :=
.seq rawBody568_145 rawBody568_148

def rawBody568_150 : StackLang.HolProg 64 :=
.seq rawBody568_144 rawBody568_149

def rawBody568_151 : StackLang.HolProg 64 :=
.seq rawBody568_143 rawBody568_150

def rawBody568_152 : StackLang.HolProg 64 :=
.seq rawBody568_142 rawBody568_151

def rawBody568_153 : StackLang.HolProg 64 :=
.seq rawBody568_99 rawBody568_152

def rawBody568_154 : StackLang.HolProg 64 :=
.seq rawBody568_98 rawBody568_153

def rawBody568_155 : StackLang.HolProg 64 :=
.seq rawBody568_97 rawBody568_154

def rawBody568_156 : StackLang.HolProg 64 :=
.seq rawBody568_96 rawBody568_155

def rawBody568_157 : StackLang.HolProg 64 :=
.seq rawBody568_53 rawBody568_156

def rawBody568_158 : StackLang.HolProg 64 :=
.seq rawBody568_52 rawBody568_157

def rawBody568_159 : StackLang.HolProg 64 :=
.seq rawBody568_51 rawBody568_158

def rawBody568_160 : StackLang.HolProg 64 :=
.seq rawBody568_50 rawBody568_159

def rawBody568_161 : StackLang.HolProg 64 :=
.seq rawBody568_49 rawBody568_160

def rawBody568_162 : StackLang.HolProg 64 :=
.seq rawBody568_48 rawBody568_161

def rawBody568_163 : StackLang.HolProg 64 :=
.seq rawBody568_47 rawBody568_162

def rawBody568_164 : StackLang.HolProg 64 :=
.seq rawBody568_46 rawBody568_163

def rawBody568_165 : StackLang.HolProg 64 :=
.seq rawBody568_3 rawBody568_164

def rawBody568_166 : StackLang.HolProg 64 :=
.seq rawBody568_2 rawBody568_165

def rawBody568_167 : StackLang.HolProg 64 :=
.seq rawBody568_1 rawBody568_166

def rawBody568_168 : StackLang.HolProg 64 :=
.seq rawBody568_0 rawBody568_167

def raw568 : StackLang.HolProg 64 := rawBody568_168
theorem raw568_eq : StackRawCall.compTop RawInfo.rawInfo (function568 (.list [])).1 = raw568 := by
  kernel_rfl
#print axioms raw568_eq
end InitECandidate.Proofs.BackendStages
