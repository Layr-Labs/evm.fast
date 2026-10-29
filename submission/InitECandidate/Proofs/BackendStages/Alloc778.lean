import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw778
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody778_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody778_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody778_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody778_3 : StackLang.HolProg 64 :=
.seq AllocBody778_1 AllocBody778_2

def AllocBody778_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3543#64)

def AllocBody778_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody778_7 : StackLang.HolProg 64 :=
.seq AllocBody778_5 AllocBody778_6

def AllocBody778_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody778_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody778_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody778_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 3

def AllocBody778_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody778_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody778_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody778_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody778_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody778_18 : StackLang.HolProg 64 :=
.seq AllocBody778_16 AllocBody778_17

def AllocBody778_19 : StackLang.HolProg 64 :=
.seq AllocBody778_15 AllocBody778_18

def AllocBody778_20 : StackLang.HolProg 64 :=
.seq AllocBody778_14 AllocBody778_19

def AllocBody778_21 : StackLang.HolProg 64 :=
.seq AllocBody778_13 AllocBody778_20

def AllocBody778_22 : StackLang.HolProg 64 :=
.seq AllocBody778_12 AllocBody778_21

def AllocBody778_23 : StackLang.HolProg 64 :=
.seq AllocBody778_11 AllocBody778_22

def AllocBody778_24 : StackLang.HolProg 64 :=
.seq AllocBody778_10 AllocBody778_23

def AllocBody778_25 : StackLang.HolProg 64 :=
.seq AllocBody778_9 AllocBody778_24

def AllocBody778_26 : StackLang.HolProg 64 :=
.seq AllocBody778_8 AllocBody778_25

def AllocBody778_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody778_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody778_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody778_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody778_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody778_34 : StackLang.HolProg 64 :=
.seq AllocBody778_32 AllocBody778_33

def AllocBody778_35 : StackLang.HolProg 64 :=
.seq AllocBody778_31 AllocBody778_34

def AllocBody778_36 : StackLang.HolProg 64 :=
.seq AllocBody778_30 AllocBody778_35

def AllocBody778_37 : StackLang.HolProg 64 :=
.seq AllocBody778_29 AllocBody778_36

def AllocBody778_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody778_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody778_40 : StackLang.HolProg 64 :=
.seq AllocBody778_38 AllocBody778_39

def AllocBody778_41 : StackLang.HolProg 64 :=
.call (some (AllocBody778_37, 0, 778, 2)) (Sum.inl 731) (some (AllocBody778_40, 778, 3))

def AllocBody778_42 : StackLang.HolProg 64 :=
.seq AllocBody778_28 AllocBody778_41

def AllocBody778_43 : StackLang.HolProg 64 :=
.seq AllocBody778_27 AllocBody778_42

def AllocBody778_44 : StackLang.HolProg 64 :=
.seq AllocBody778_26 AllocBody778_43

def AllocBody778_45 : StackLang.HolProg 64 :=
.seq AllocBody778_7 AllocBody778_44

def AllocBody778_46 : StackLang.HolProg 64 :=
.seq AllocBody778_4 AllocBody778_45

def AllocBody778_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody778_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody778_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody778_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3544#64)

def AllocBody778_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody778_54 : StackLang.HolProg 64 :=
.seq AllocBody778_52 AllocBody778_53

def AllocBody778_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody778_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody778_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody778_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 5

def AllocBody778_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody778_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody778_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody778_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody778_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody778_65 : StackLang.HolProg 64 :=
.seq AllocBody778_63 AllocBody778_64

def AllocBody778_66 : StackLang.HolProg 64 :=
.seq AllocBody778_62 AllocBody778_65

def AllocBody778_67 : StackLang.HolProg 64 :=
.seq AllocBody778_61 AllocBody778_66

def AllocBody778_68 : StackLang.HolProg 64 :=
.seq AllocBody778_60 AllocBody778_67

def AllocBody778_69 : StackLang.HolProg 64 :=
.seq AllocBody778_59 AllocBody778_68

def AllocBody778_70 : StackLang.HolProg 64 :=
.seq AllocBody778_58 AllocBody778_69

def AllocBody778_71 : StackLang.HolProg 64 :=
.seq AllocBody778_57 AllocBody778_70

def AllocBody778_72 : StackLang.HolProg 64 :=
.seq AllocBody778_56 AllocBody778_71

def AllocBody778_73 : StackLang.HolProg 64 :=
.seq AllocBody778_55 AllocBody778_72

def AllocBody778_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody778_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody778_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody778_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody778_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody778_81 : StackLang.HolProg 64 :=
.seq AllocBody778_79 AllocBody778_80

def AllocBody778_82 : StackLang.HolProg 64 :=
.seq AllocBody778_78 AllocBody778_81

def AllocBody778_83 : StackLang.HolProg 64 :=
.seq AllocBody778_77 AllocBody778_82

def AllocBody778_84 : StackLang.HolProg 64 :=
.seq AllocBody778_76 AllocBody778_83

def AllocBody778_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody778_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody778_87 : StackLang.HolProg 64 :=
.seq AllocBody778_85 AllocBody778_86

def AllocBody778_88 : StackLang.HolProg 64 :=
.call (some (AllocBody778_84, 0, 778, 4)) (Sum.inl 731) (some (AllocBody778_87, 778, 5))

def AllocBody778_89 : StackLang.HolProg 64 :=
.seq AllocBody778_75 AllocBody778_88

def AllocBody778_90 : StackLang.HolProg 64 :=
.seq AllocBody778_74 AllocBody778_89

def AllocBody778_91 : StackLang.HolProg 64 :=
.seq AllocBody778_73 AllocBody778_90

def AllocBody778_92 : StackLang.HolProg 64 :=
.seq AllocBody778_54 AllocBody778_91

def AllocBody778_93 : StackLang.HolProg 64 :=
.seq AllocBody778_51 AllocBody778_92

def AllocBody778_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody778_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody778_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3545#64)

def AllocBody778_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody778_101 : StackLang.HolProg 64 :=
.seq AllocBody778_99 AllocBody778_100

def AllocBody778_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody778_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody778_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody778_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 778 7

def AllocBody778_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody778_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody778_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody778_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody778_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody778_112 : StackLang.HolProg 64 :=
.seq AllocBody778_110 AllocBody778_111

def AllocBody778_113 : StackLang.HolProg 64 :=
.seq AllocBody778_109 AllocBody778_112

def AllocBody778_114 : StackLang.HolProg 64 :=
.seq AllocBody778_108 AllocBody778_113

def AllocBody778_115 : StackLang.HolProg 64 :=
.seq AllocBody778_107 AllocBody778_114

def AllocBody778_116 : StackLang.HolProg 64 :=
.seq AllocBody778_106 AllocBody778_115

def AllocBody778_117 : StackLang.HolProg 64 :=
.seq AllocBody778_105 AllocBody778_116

def AllocBody778_118 : StackLang.HolProg 64 :=
.seq AllocBody778_104 AllocBody778_117

def AllocBody778_119 : StackLang.HolProg 64 :=
.seq AllocBody778_103 AllocBody778_118

def AllocBody778_120 : StackLang.HolProg 64 :=
.seq AllocBody778_102 AllocBody778_119

def AllocBody778_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody778_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody778_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody778_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody778_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody778_128 : StackLang.HolProg 64 :=
.seq AllocBody778_126 AllocBody778_127

def AllocBody778_129 : StackLang.HolProg 64 :=
.seq AllocBody778_125 AllocBody778_128

def AllocBody778_130 : StackLang.HolProg 64 :=
.seq AllocBody778_124 AllocBody778_129

def AllocBody778_131 : StackLang.HolProg 64 :=
.seq AllocBody778_123 AllocBody778_130

def AllocBody778_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody778_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody778_134 : StackLang.HolProg 64 :=
.seq AllocBody778_132 AllocBody778_133

def AllocBody778_135 : StackLang.HolProg 64 :=
.call (some (AllocBody778_131, 0, 778, 6)) (Sum.inl 730) (some (AllocBody778_134, 778, 7))

def AllocBody778_136 : StackLang.HolProg 64 :=
.seq AllocBody778_122 AllocBody778_135

def AllocBody778_137 : StackLang.HolProg 64 :=
.seq AllocBody778_121 AllocBody778_136

def AllocBody778_138 : StackLang.HolProg 64 :=
.seq AllocBody778_120 AllocBody778_137

def AllocBody778_139 : StackLang.HolProg 64 :=
.seq AllocBody778_101 AllocBody778_138

def AllocBody778_140 : StackLang.HolProg 64 :=
.seq AllocBody778_98 AllocBody778_139

def AllocBody778_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody778_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody778_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody778_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody778_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody778_146 : StackLang.HolProg 64 :=
.seq AllocBody778_144 AllocBody778_145

def AllocBody778_147 : StackLang.HolProg 64 :=
.seq AllocBody778_143 AllocBody778_146

def AllocBody778_148 : StackLang.HolProg 64 :=
.seq AllocBody778_142 AllocBody778_147

def AllocBody778_149 : StackLang.HolProg 64 :=
.seq AllocBody778_141 AllocBody778_148

def AllocBody778_150 : StackLang.HolProg 64 :=
.seq AllocBody778_140 AllocBody778_149

def AllocBody778_151 : StackLang.HolProg 64 :=
.seq AllocBody778_97 AllocBody778_150

def AllocBody778_152 : StackLang.HolProg 64 :=
.seq AllocBody778_96 AllocBody778_151

def AllocBody778_153 : StackLang.HolProg 64 :=
.seq AllocBody778_95 AllocBody778_152

def AllocBody778_154 : StackLang.HolProg 64 :=
.seq AllocBody778_94 AllocBody778_153

def AllocBody778_155 : StackLang.HolProg 64 :=
.seq AllocBody778_93 AllocBody778_154

def AllocBody778_156 : StackLang.HolProg 64 :=
.seq AllocBody778_50 AllocBody778_155

def AllocBody778_157 : StackLang.HolProg 64 :=
.seq AllocBody778_49 AllocBody778_156

def AllocBody778_158 : StackLang.HolProg 64 :=
.seq AllocBody778_48 AllocBody778_157

def AllocBody778_159 : StackLang.HolProg 64 :=
.seq AllocBody778_47 AllocBody778_158

def AllocBody778_160 : StackLang.HolProg 64 :=
.seq AllocBody778_46 AllocBody778_159

def AllocBody778_161 : StackLang.HolProg 64 :=
.seq AllocBody778_3 AllocBody778_160

def AllocBody778_162 : StackLang.HolProg 64 :=
.seq AllocBody778_0 AllocBody778_161

def Alloc778 : Nat × StackLang.HolProg 64 := (778, AllocBody778_162)
theorem Alloc778_eq : StackAlloc.progComp (778, raw778) = Alloc778 := by
  kernel_rfl
#print axioms Alloc778_eq
end InitECandidate.Proofs.BackendStages
