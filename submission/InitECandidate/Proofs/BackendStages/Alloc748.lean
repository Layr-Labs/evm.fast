import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw748
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody748_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody748_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody748_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody748_3 : StackLang.HolProg 64 :=
.seq AllocBody748_1 AllocBody748_2

def AllocBody748_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3308#64)

def AllocBody748_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody748_7 : StackLang.HolProg 64 :=
.seq AllocBody748_5 AllocBody748_6

def AllocBody748_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody748_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody748_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody748_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 3

def AllocBody748_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody748_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody748_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody748_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody748_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody748_18 : StackLang.HolProg 64 :=
.seq AllocBody748_16 AllocBody748_17

def AllocBody748_19 : StackLang.HolProg 64 :=
.seq AllocBody748_15 AllocBody748_18

def AllocBody748_20 : StackLang.HolProg 64 :=
.seq AllocBody748_14 AllocBody748_19

def AllocBody748_21 : StackLang.HolProg 64 :=
.seq AllocBody748_13 AllocBody748_20

def AllocBody748_22 : StackLang.HolProg 64 :=
.seq AllocBody748_12 AllocBody748_21

def AllocBody748_23 : StackLang.HolProg 64 :=
.seq AllocBody748_11 AllocBody748_22

def AllocBody748_24 : StackLang.HolProg 64 :=
.seq AllocBody748_10 AllocBody748_23

def AllocBody748_25 : StackLang.HolProg 64 :=
.seq AllocBody748_9 AllocBody748_24

def AllocBody748_26 : StackLang.HolProg 64 :=
.seq AllocBody748_8 AllocBody748_25

def AllocBody748_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody748_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody748_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody748_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody748_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody748_34 : StackLang.HolProg 64 :=
.seq AllocBody748_32 AllocBody748_33

def AllocBody748_35 : StackLang.HolProg 64 :=
.seq AllocBody748_31 AllocBody748_34

def AllocBody748_36 : StackLang.HolProg 64 :=
.seq AllocBody748_30 AllocBody748_35

def AllocBody748_37 : StackLang.HolProg 64 :=
.seq AllocBody748_29 AllocBody748_36

def AllocBody748_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody748_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody748_40 : StackLang.HolProg 64 :=
.seq AllocBody748_38 AllocBody748_39

def AllocBody748_41 : StackLang.HolProg 64 :=
.call (some (AllocBody748_37, 0, 748, 2)) (Sum.inl 731) (some (AllocBody748_40, 748, 3))

def AllocBody748_42 : StackLang.HolProg 64 :=
.seq AllocBody748_28 AllocBody748_41

def AllocBody748_43 : StackLang.HolProg 64 :=
.seq AllocBody748_27 AllocBody748_42

def AllocBody748_44 : StackLang.HolProg 64 :=
.seq AllocBody748_26 AllocBody748_43

def AllocBody748_45 : StackLang.HolProg 64 :=
.seq AllocBody748_7 AllocBody748_44

def AllocBody748_46 : StackLang.HolProg 64 :=
.seq AllocBody748_4 AllocBody748_45

def AllocBody748_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody748_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody748_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody748_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3309#64)

def AllocBody748_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody748_54 : StackLang.HolProg 64 :=
.seq AllocBody748_52 AllocBody748_53

def AllocBody748_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody748_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody748_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody748_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 5

def AllocBody748_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody748_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody748_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody748_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody748_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody748_65 : StackLang.HolProg 64 :=
.seq AllocBody748_63 AllocBody748_64

def AllocBody748_66 : StackLang.HolProg 64 :=
.seq AllocBody748_62 AllocBody748_65

def AllocBody748_67 : StackLang.HolProg 64 :=
.seq AllocBody748_61 AllocBody748_66

def AllocBody748_68 : StackLang.HolProg 64 :=
.seq AllocBody748_60 AllocBody748_67

def AllocBody748_69 : StackLang.HolProg 64 :=
.seq AllocBody748_59 AllocBody748_68

def AllocBody748_70 : StackLang.HolProg 64 :=
.seq AllocBody748_58 AllocBody748_69

def AllocBody748_71 : StackLang.HolProg 64 :=
.seq AllocBody748_57 AllocBody748_70

def AllocBody748_72 : StackLang.HolProg 64 :=
.seq AllocBody748_56 AllocBody748_71

def AllocBody748_73 : StackLang.HolProg 64 :=
.seq AllocBody748_55 AllocBody748_72

def AllocBody748_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody748_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody748_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody748_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody748_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody748_81 : StackLang.HolProg 64 :=
.seq AllocBody748_79 AllocBody748_80

def AllocBody748_82 : StackLang.HolProg 64 :=
.seq AllocBody748_78 AllocBody748_81

def AllocBody748_83 : StackLang.HolProg 64 :=
.seq AllocBody748_77 AllocBody748_82

def AllocBody748_84 : StackLang.HolProg 64 :=
.seq AllocBody748_76 AllocBody748_83

def AllocBody748_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody748_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody748_87 : StackLang.HolProg 64 :=
.seq AllocBody748_85 AllocBody748_86

def AllocBody748_88 : StackLang.HolProg 64 :=
.call (some (AllocBody748_84, 0, 748, 4)) (Sum.inl 730) (some (AllocBody748_87, 748, 5))

def AllocBody748_89 : StackLang.HolProg 64 :=
.seq AllocBody748_75 AllocBody748_88

def AllocBody748_90 : StackLang.HolProg 64 :=
.seq AllocBody748_74 AllocBody748_89

def AllocBody748_91 : StackLang.HolProg 64 :=
.seq AllocBody748_73 AllocBody748_90

def AllocBody748_92 : StackLang.HolProg 64 :=
.seq AllocBody748_54 AllocBody748_91

def AllocBody748_93 : StackLang.HolProg 64 :=
.seq AllocBody748_51 AllocBody748_92

def AllocBody748_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody748_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody748_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3310#64)

def AllocBody748_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody748_101 : StackLang.HolProg 64 :=
.seq AllocBody748_99 AllocBody748_100

def AllocBody748_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody748_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody748_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody748_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 7

def AllocBody748_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody748_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody748_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody748_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody748_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody748_112 : StackLang.HolProg 64 :=
.seq AllocBody748_110 AllocBody748_111

def AllocBody748_113 : StackLang.HolProg 64 :=
.seq AllocBody748_109 AllocBody748_112

def AllocBody748_114 : StackLang.HolProg 64 :=
.seq AllocBody748_108 AllocBody748_113

def AllocBody748_115 : StackLang.HolProg 64 :=
.seq AllocBody748_107 AllocBody748_114

def AllocBody748_116 : StackLang.HolProg 64 :=
.seq AllocBody748_106 AllocBody748_115

def AllocBody748_117 : StackLang.HolProg 64 :=
.seq AllocBody748_105 AllocBody748_116

def AllocBody748_118 : StackLang.HolProg 64 :=
.seq AllocBody748_104 AllocBody748_117

def AllocBody748_119 : StackLang.HolProg 64 :=
.seq AllocBody748_103 AllocBody748_118

def AllocBody748_120 : StackLang.HolProg 64 :=
.seq AllocBody748_102 AllocBody748_119

def AllocBody748_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody748_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody748_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody748_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody748_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody748_128 : StackLang.HolProg 64 :=
.seq AllocBody748_126 AllocBody748_127

def AllocBody748_129 : StackLang.HolProg 64 :=
.seq AllocBody748_125 AllocBody748_128

def AllocBody748_130 : StackLang.HolProg 64 :=
.seq AllocBody748_124 AllocBody748_129

def AllocBody748_131 : StackLang.HolProg 64 :=
.seq AllocBody748_123 AllocBody748_130

def AllocBody748_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody748_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody748_134 : StackLang.HolProg 64 :=
.seq AllocBody748_132 AllocBody748_133

def AllocBody748_135 : StackLang.HolProg 64 :=
.call (some (AllocBody748_131, 0, 748, 6)) (Sum.inl 730) (some (AllocBody748_134, 748, 7))

def AllocBody748_136 : StackLang.HolProg 64 :=
.seq AllocBody748_122 AllocBody748_135

def AllocBody748_137 : StackLang.HolProg 64 :=
.seq AllocBody748_121 AllocBody748_136

def AllocBody748_138 : StackLang.HolProg 64 :=
.seq AllocBody748_120 AllocBody748_137

def AllocBody748_139 : StackLang.HolProg 64 :=
.seq AllocBody748_101 AllocBody748_138

def AllocBody748_140 : StackLang.HolProg 64 :=
.seq AllocBody748_98 AllocBody748_139

def AllocBody748_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody748_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody748_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody748_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody748_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody748_146 : StackLang.HolProg 64 :=
.seq AllocBody748_144 AllocBody748_145

def AllocBody748_147 : StackLang.HolProg 64 :=
.seq AllocBody748_143 AllocBody748_146

def AllocBody748_148 : StackLang.HolProg 64 :=
.seq AllocBody748_142 AllocBody748_147

def AllocBody748_149 : StackLang.HolProg 64 :=
.seq AllocBody748_141 AllocBody748_148

def AllocBody748_150 : StackLang.HolProg 64 :=
.seq AllocBody748_140 AllocBody748_149

def AllocBody748_151 : StackLang.HolProg 64 :=
.seq AllocBody748_97 AllocBody748_150

def AllocBody748_152 : StackLang.HolProg 64 :=
.seq AllocBody748_96 AllocBody748_151

def AllocBody748_153 : StackLang.HolProg 64 :=
.seq AllocBody748_95 AllocBody748_152

def AllocBody748_154 : StackLang.HolProg 64 :=
.seq AllocBody748_94 AllocBody748_153

def AllocBody748_155 : StackLang.HolProg 64 :=
.seq AllocBody748_93 AllocBody748_154

def AllocBody748_156 : StackLang.HolProg 64 :=
.seq AllocBody748_50 AllocBody748_155

def AllocBody748_157 : StackLang.HolProg 64 :=
.seq AllocBody748_49 AllocBody748_156

def AllocBody748_158 : StackLang.HolProg 64 :=
.seq AllocBody748_48 AllocBody748_157

def AllocBody748_159 : StackLang.HolProg 64 :=
.seq AllocBody748_47 AllocBody748_158

def AllocBody748_160 : StackLang.HolProg 64 :=
.seq AllocBody748_46 AllocBody748_159

def AllocBody748_161 : StackLang.HolProg 64 :=
.seq AllocBody748_3 AllocBody748_160

def AllocBody748_162 : StackLang.HolProg 64 :=
.seq AllocBody748_0 AllocBody748_161

def Alloc748 : Nat × StackLang.HolProg 64 := (748, AllocBody748_162)
theorem Alloc748_eq : StackAlloc.progComp (748, raw748) = Alloc748 := by
  kernel_rfl
#print axioms Alloc748_eq
end InitECandidate.Proofs.BackendStages
