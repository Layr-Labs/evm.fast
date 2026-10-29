import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function778
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody778_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody778_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody778_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody778_3 : StackLang.HolProg 64 :=
.seq rawBody778_1 rawBody778_2

def rawBody778_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3543#64)

def rawBody778_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody778_7 : StackLang.HolProg 64 :=
.seq rawBody778_5 rawBody778_6

def rawBody778_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody778_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody778_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody778_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 3

def rawBody778_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody778_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody778_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody778_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody778_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody778_18 : StackLang.HolProg 64 :=
.seq rawBody778_16 rawBody778_17

def rawBody778_19 : StackLang.HolProg 64 :=
.seq rawBody778_15 rawBody778_18

def rawBody778_20 : StackLang.HolProg 64 :=
.seq rawBody778_14 rawBody778_19

def rawBody778_21 : StackLang.HolProg 64 :=
.seq rawBody778_13 rawBody778_20

def rawBody778_22 : StackLang.HolProg 64 :=
.seq rawBody778_12 rawBody778_21

def rawBody778_23 : StackLang.HolProg 64 :=
.seq rawBody778_11 rawBody778_22

def rawBody778_24 : StackLang.HolProg 64 :=
.seq rawBody778_10 rawBody778_23

def rawBody778_25 : StackLang.HolProg 64 :=
.seq rawBody778_9 rawBody778_24

def rawBody778_26 : StackLang.HolProg 64 :=
.seq rawBody778_8 rawBody778_25

def rawBody778_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody778_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody778_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody778_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody778_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody778_34 : StackLang.HolProg 64 :=
.seq rawBody778_32 rawBody778_33

def rawBody778_35 : StackLang.HolProg 64 :=
.seq rawBody778_31 rawBody778_34

def rawBody778_36 : StackLang.HolProg 64 :=
.seq rawBody778_30 rawBody778_35

def rawBody778_37 : StackLang.HolProg 64 :=
.seq rawBody778_29 rawBody778_36

def rawBody778_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody778_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody778_40 : StackLang.HolProg 64 :=
.seq rawBody778_38 rawBody778_39

def rawBody778_41 : StackLang.HolProg 64 :=
.call (some (rawBody778_37, 0, 778, 2)) (Sum.inl 731) (some (rawBody778_40, 778, 3))

def rawBody778_42 : StackLang.HolProg 64 :=
.seq rawBody778_28 rawBody778_41

def rawBody778_43 : StackLang.HolProg 64 :=
.seq rawBody778_27 rawBody778_42

def rawBody778_44 : StackLang.HolProg 64 :=
.seq rawBody778_26 rawBody778_43

def rawBody778_45 : StackLang.HolProg 64 :=
.seq rawBody778_7 rawBody778_44

def rawBody778_46 : StackLang.HolProg 64 :=
.seq rawBody778_4 rawBody778_45

def rawBody778_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody778_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody778_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody778_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3544#64)

def rawBody778_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody778_54 : StackLang.HolProg 64 :=
.seq rawBody778_52 rawBody778_53

def rawBody778_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody778_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody778_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody778_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 5

def rawBody778_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody778_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody778_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody778_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody778_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody778_65 : StackLang.HolProg 64 :=
.seq rawBody778_63 rawBody778_64

def rawBody778_66 : StackLang.HolProg 64 :=
.seq rawBody778_62 rawBody778_65

def rawBody778_67 : StackLang.HolProg 64 :=
.seq rawBody778_61 rawBody778_66

def rawBody778_68 : StackLang.HolProg 64 :=
.seq rawBody778_60 rawBody778_67

def rawBody778_69 : StackLang.HolProg 64 :=
.seq rawBody778_59 rawBody778_68

def rawBody778_70 : StackLang.HolProg 64 :=
.seq rawBody778_58 rawBody778_69

def rawBody778_71 : StackLang.HolProg 64 :=
.seq rawBody778_57 rawBody778_70

def rawBody778_72 : StackLang.HolProg 64 :=
.seq rawBody778_56 rawBody778_71

def rawBody778_73 : StackLang.HolProg 64 :=
.seq rawBody778_55 rawBody778_72

def rawBody778_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody778_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody778_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody778_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody778_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody778_81 : StackLang.HolProg 64 :=
.seq rawBody778_79 rawBody778_80

def rawBody778_82 : StackLang.HolProg 64 :=
.seq rawBody778_78 rawBody778_81

def rawBody778_83 : StackLang.HolProg 64 :=
.seq rawBody778_77 rawBody778_82

def rawBody778_84 : StackLang.HolProg 64 :=
.seq rawBody778_76 rawBody778_83

def rawBody778_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody778_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody778_87 : StackLang.HolProg 64 :=
.seq rawBody778_85 rawBody778_86

def rawBody778_88 : StackLang.HolProg 64 :=
.call (some (rawBody778_84, 0, 778, 4)) (Sum.inl 731) (some (rawBody778_87, 778, 5))

def rawBody778_89 : StackLang.HolProg 64 :=
.seq rawBody778_75 rawBody778_88

def rawBody778_90 : StackLang.HolProg 64 :=
.seq rawBody778_74 rawBody778_89

def rawBody778_91 : StackLang.HolProg 64 :=
.seq rawBody778_73 rawBody778_90

def rawBody778_92 : StackLang.HolProg 64 :=
.seq rawBody778_54 rawBody778_91

def rawBody778_93 : StackLang.HolProg 64 :=
.seq rawBody778_51 rawBody778_92

def rawBody778_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody778_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody778_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3545#64)

def rawBody778_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody778_101 : StackLang.HolProg 64 :=
.seq rawBody778_99 rawBody778_100

def rawBody778_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody778_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody778_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody778_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 7

def rawBody778_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody778_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody778_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody778_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody778_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody778_112 : StackLang.HolProg 64 :=
.seq rawBody778_110 rawBody778_111

def rawBody778_113 : StackLang.HolProg 64 :=
.seq rawBody778_109 rawBody778_112

def rawBody778_114 : StackLang.HolProg 64 :=
.seq rawBody778_108 rawBody778_113

def rawBody778_115 : StackLang.HolProg 64 :=
.seq rawBody778_107 rawBody778_114

def rawBody778_116 : StackLang.HolProg 64 :=
.seq rawBody778_106 rawBody778_115

def rawBody778_117 : StackLang.HolProg 64 :=
.seq rawBody778_105 rawBody778_116

def rawBody778_118 : StackLang.HolProg 64 :=
.seq rawBody778_104 rawBody778_117

def rawBody778_119 : StackLang.HolProg 64 :=
.seq rawBody778_103 rawBody778_118

def rawBody778_120 : StackLang.HolProg 64 :=
.seq rawBody778_102 rawBody778_119

def rawBody778_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody778_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody778_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody778_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody778_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody778_128 : StackLang.HolProg 64 :=
.seq rawBody778_126 rawBody778_127

def rawBody778_129 : StackLang.HolProg 64 :=
.seq rawBody778_125 rawBody778_128

def rawBody778_130 : StackLang.HolProg 64 :=
.seq rawBody778_124 rawBody778_129

def rawBody778_131 : StackLang.HolProg 64 :=
.seq rawBody778_123 rawBody778_130

def rawBody778_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody778_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody778_134 : StackLang.HolProg 64 :=
.seq rawBody778_132 rawBody778_133

def rawBody778_135 : StackLang.HolProg 64 :=
.call (some (rawBody778_131, 0, 778, 6)) (Sum.inl 730) (some (rawBody778_134, 778, 7))

def rawBody778_136 : StackLang.HolProg 64 :=
.seq rawBody778_122 rawBody778_135

def rawBody778_137 : StackLang.HolProg 64 :=
.seq rawBody778_121 rawBody778_136

def rawBody778_138 : StackLang.HolProg 64 :=
.seq rawBody778_120 rawBody778_137

def rawBody778_139 : StackLang.HolProg 64 :=
.seq rawBody778_101 rawBody778_138

def rawBody778_140 : StackLang.HolProg 64 :=
.seq rawBody778_98 rawBody778_139

def rawBody778_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody778_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody778_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody778_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody778_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody778_146 : StackLang.HolProg 64 :=
.seq rawBody778_144 rawBody778_145

def rawBody778_147 : StackLang.HolProg 64 :=
.seq rawBody778_143 rawBody778_146

def rawBody778_148 : StackLang.HolProg 64 :=
.seq rawBody778_142 rawBody778_147

def rawBody778_149 : StackLang.HolProg 64 :=
.seq rawBody778_141 rawBody778_148

def rawBody778_150 : StackLang.HolProg 64 :=
.seq rawBody778_140 rawBody778_149

def rawBody778_151 : StackLang.HolProg 64 :=
.seq rawBody778_97 rawBody778_150

def rawBody778_152 : StackLang.HolProg 64 :=
.seq rawBody778_96 rawBody778_151

def rawBody778_153 : StackLang.HolProg 64 :=
.seq rawBody778_95 rawBody778_152

def rawBody778_154 : StackLang.HolProg 64 :=
.seq rawBody778_94 rawBody778_153

def rawBody778_155 : StackLang.HolProg 64 :=
.seq rawBody778_93 rawBody778_154

def rawBody778_156 : StackLang.HolProg 64 :=
.seq rawBody778_50 rawBody778_155

def rawBody778_157 : StackLang.HolProg 64 :=
.seq rawBody778_49 rawBody778_156

def rawBody778_158 : StackLang.HolProg 64 :=
.seq rawBody778_48 rawBody778_157

def rawBody778_159 : StackLang.HolProg 64 :=
.seq rawBody778_47 rawBody778_158

def rawBody778_160 : StackLang.HolProg 64 :=
.seq rawBody778_46 rawBody778_159

def rawBody778_161 : StackLang.HolProg 64 :=
.seq rawBody778_3 rawBody778_160

def rawBody778_162 : StackLang.HolProg 64 :=
.seq rawBody778_0 rawBody778_161

def raw778 : StackLang.HolProg 64 := rawBody778_162
theorem raw778_eq : StackRawCall.compTop RawInfo.rawInfo (function778 (.list [])).1 = raw778 := by
  kernel_rfl
#print axioms raw778_eq
end InitECandidate.Proofs.BackendStages
