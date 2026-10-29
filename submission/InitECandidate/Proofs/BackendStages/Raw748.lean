import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function748
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody748_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody748_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody748_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody748_3 : StackLang.HolProg 64 :=
.seq rawBody748_1 rawBody748_2

def rawBody748_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3308#64)

def rawBody748_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody748_7 : StackLang.HolProg 64 :=
.seq rawBody748_5 rawBody748_6

def rawBody748_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody748_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody748_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody748_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 3

def rawBody748_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody748_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody748_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody748_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody748_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody748_18 : StackLang.HolProg 64 :=
.seq rawBody748_16 rawBody748_17

def rawBody748_19 : StackLang.HolProg 64 :=
.seq rawBody748_15 rawBody748_18

def rawBody748_20 : StackLang.HolProg 64 :=
.seq rawBody748_14 rawBody748_19

def rawBody748_21 : StackLang.HolProg 64 :=
.seq rawBody748_13 rawBody748_20

def rawBody748_22 : StackLang.HolProg 64 :=
.seq rawBody748_12 rawBody748_21

def rawBody748_23 : StackLang.HolProg 64 :=
.seq rawBody748_11 rawBody748_22

def rawBody748_24 : StackLang.HolProg 64 :=
.seq rawBody748_10 rawBody748_23

def rawBody748_25 : StackLang.HolProg 64 :=
.seq rawBody748_9 rawBody748_24

def rawBody748_26 : StackLang.HolProg 64 :=
.seq rawBody748_8 rawBody748_25

def rawBody748_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody748_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody748_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody748_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody748_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody748_34 : StackLang.HolProg 64 :=
.seq rawBody748_32 rawBody748_33

def rawBody748_35 : StackLang.HolProg 64 :=
.seq rawBody748_31 rawBody748_34

def rawBody748_36 : StackLang.HolProg 64 :=
.seq rawBody748_30 rawBody748_35

def rawBody748_37 : StackLang.HolProg 64 :=
.seq rawBody748_29 rawBody748_36

def rawBody748_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody748_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody748_40 : StackLang.HolProg 64 :=
.seq rawBody748_38 rawBody748_39

def rawBody748_41 : StackLang.HolProg 64 :=
.call (some (rawBody748_37, 0, 748, 2)) (Sum.inl 731) (some (rawBody748_40, 748, 3))

def rawBody748_42 : StackLang.HolProg 64 :=
.seq rawBody748_28 rawBody748_41

def rawBody748_43 : StackLang.HolProg 64 :=
.seq rawBody748_27 rawBody748_42

def rawBody748_44 : StackLang.HolProg 64 :=
.seq rawBody748_26 rawBody748_43

def rawBody748_45 : StackLang.HolProg 64 :=
.seq rawBody748_7 rawBody748_44

def rawBody748_46 : StackLang.HolProg 64 :=
.seq rawBody748_4 rawBody748_45

def rawBody748_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody748_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody748_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody748_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3309#64)

def rawBody748_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody748_54 : StackLang.HolProg 64 :=
.seq rawBody748_52 rawBody748_53

def rawBody748_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody748_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody748_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody748_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 5

def rawBody748_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody748_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody748_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody748_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody748_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody748_65 : StackLang.HolProg 64 :=
.seq rawBody748_63 rawBody748_64

def rawBody748_66 : StackLang.HolProg 64 :=
.seq rawBody748_62 rawBody748_65

def rawBody748_67 : StackLang.HolProg 64 :=
.seq rawBody748_61 rawBody748_66

def rawBody748_68 : StackLang.HolProg 64 :=
.seq rawBody748_60 rawBody748_67

def rawBody748_69 : StackLang.HolProg 64 :=
.seq rawBody748_59 rawBody748_68

def rawBody748_70 : StackLang.HolProg 64 :=
.seq rawBody748_58 rawBody748_69

def rawBody748_71 : StackLang.HolProg 64 :=
.seq rawBody748_57 rawBody748_70

def rawBody748_72 : StackLang.HolProg 64 :=
.seq rawBody748_56 rawBody748_71

def rawBody748_73 : StackLang.HolProg 64 :=
.seq rawBody748_55 rawBody748_72

def rawBody748_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody748_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody748_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody748_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody748_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody748_81 : StackLang.HolProg 64 :=
.seq rawBody748_79 rawBody748_80

def rawBody748_82 : StackLang.HolProg 64 :=
.seq rawBody748_78 rawBody748_81

def rawBody748_83 : StackLang.HolProg 64 :=
.seq rawBody748_77 rawBody748_82

def rawBody748_84 : StackLang.HolProg 64 :=
.seq rawBody748_76 rawBody748_83

def rawBody748_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody748_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody748_87 : StackLang.HolProg 64 :=
.seq rawBody748_85 rawBody748_86

def rawBody748_88 : StackLang.HolProg 64 :=
.call (some (rawBody748_84, 0, 748, 4)) (Sum.inl 730) (some (rawBody748_87, 748, 5))

def rawBody748_89 : StackLang.HolProg 64 :=
.seq rawBody748_75 rawBody748_88

def rawBody748_90 : StackLang.HolProg 64 :=
.seq rawBody748_74 rawBody748_89

def rawBody748_91 : StackLang.HolProg 64 :=
.seq rawBody748_73 rawBody748_90

def rawBody748_92 : StackLang.HolProg 64 :=
.seq rawBody748_54 rawBody748_91

def rawBody748_93 : StackLang.HolProg 64 :=
.seq rawBody748_51 rawBody748_92

def rawBody748_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody748_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody748_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3310#64)

def rawBody748_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody748_101 : StackLang.HolProg 64 :=
.seq rawBody748_99 rawBody748_100

def rawBody748_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody748_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody748_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody748_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 7

def rawBody748_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody748_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody748_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody748_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody748_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody748_112 : StackLang.HolProg 64 :=
.seq rawBody748_110 rawBody748_111

def rawBody748_113 : StackLang.HolProg 64 :=
.seq rawBody748_109 rawBody748_112

def rawBody748_114 : StackLang.HolProg 64 :=
.seq rawBody748_108 rawBody748_113

def rawBody748_115 : StackLang.HolProg 64 :=
.seq rawBody748_107 rawBody748_114

def rawBody748_116 : StackLang.HolProg 64 :=
.seq rawBody748_106 rawBody748_115

def rawBody748_117 : StackLang.HolProg 64 :=
.seq rawBody748_105 rawBody748_116

def rawBody748_118 : StackLang.HolProg 64 :=
.seq rawBody748_104 rawBody748_117

def rawBody748_119 : StackLang.HolProg 64 :=
.seq rawBody748_103 rawBody748_118

def rawBody748_120 : StackLang.HolProg 64 :=
.seq rawBody748_102 rawBody748_119

def rawBody748_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody748_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody748_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody748_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody748_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody748_128 : StackLang.HolProg 64 :=
.seq rawBody748_126 rawBody748_127

def rawBody748_129 : StackLang.HolProg 64 :=
.seq rawBody748_125 rawBody748_128

def rawBody748_130 : StackLang.HolProg 64 :=
.seq rawBody748_124 rawBody748_129

def rawBody748_131 : StackLang.HolProg 64 :=
.seq rawBody748_123 rawBody748_130

def rawBody748_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody748_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody748_134 : StackLang.HolProg 64 :=
.seq rawBody748_132 rawBody748_133

def rawBody748_135 : StackLang.HolProg 64 :=
.call (some (rawBody748_131, 0, 748, 6)) (Sum.inl 730) (some (rawBody748_134, 748, 7))

def rawBody748_136 : StackLang.HolProg 64 :=
.seq rawBody748_122 rawBody748_135

def rawBody748_137 : StackLang.HolProg 64 :=
.seq rawBody748_121 rawBody748_136

def rawBody748_138 : StackLang.HolProg 64 :=
.seq rawBody748_120 rawBody748_137

def rawBody748_139 : StackLang.HolProg 64 :=
.seq rawBody748_101 rawBody748_138

def rawBody748_140 : StackLang.HolProg 64 :=
.seq rawBody748_98 rawBody748_139

def rawBody748_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody748_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody748_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody748_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody748_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody748_146 : StackLang.HolProg 64 :=
.seq rawBody748_144 rawBody748_145

def rawBody748_147 : StackLang.HolProg 64 :=
.seq rawBody748_143 rawBody748_146

def rawBody748_148 : StackLang.HolProg 64 :=
.seq rawBody748_142 rawBody748_147

def rawBody748_149 : StackLang.HolProg 64 :=
.seq rawBody748_141 rawBody748_148

def rawBody748_150 : StackLang.HolProg 64 :=
.seq rawBody748_140 rawBody748_149

def rawBody748_151 : StackLang.HolProg 64 :=
.seq rawBody748_97 rawBody748_150

def rawBody748_152 : StackLang.HolProg 64 :=
.seq rawBody748_96 rawBody748_151

def rawBody748_153 : StackLang.HolProg 64 :=
.seq rawBody748_95 rawBody748_152

def rawBody748_154 : StackLang.HolProg 64 :=
.seq rawBody748_94 rawBody748_153

def rawBody748_155 : StackLang.HolProg 64 :=
.seq rawBody748_93 rawBody748_154

def rawBody748_156 : StackLang.HolProg 64 :=
.seq rawBody748_50 rawBody748_155

def rawBody748_157 : StackLang.HolProg 64 :=
.seq rawBody748_49 rawBody748_156

def rawBody748_158 : StackLang.HolProg 64 :=
.seq rawBody748_48 rawBody748_157

def rawBody748_159 : StackLang.HolProg 64 :=
.seq rawBody748_47 rawBody748_158

def rawBody748_160 : StackLang.HolProg 64 :=
.seq rawBody748_46 rawBody748_159

def rawBody748_161 : StackLang.HolProg 64 :=
.seq rawBody748_3 rawBody748_160

def rawBody748_162 : StackLang.HolProg 64 :=
.seq rawBody748_0 rawBody748_161

def raw748 : StackLang.HolProg 64 := rawBody748_162
theorem raw748_eq : StackRawCall.compTop RawInfo.rawInfo (function748 (.list [])).1 = raw748 := by
  kernel_rfl
#print axioms raw748_eq
end InitECandidate.Proofs.BackendStages
