import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw535
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody535_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody535_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody535_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1772#64)

def AllocBody535_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody535_5 : StackLang.HolProg 64 :=
.seq AllocBody535_3 AllocBody535_4

def AllocBody535_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody535_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody535_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody535_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 535 3

def AllocBody535_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody535_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody535_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody535_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody535_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody535_16 : StackLang.HolProg 64 :=
.seq AllocBody535_14 AllocBody535_15

def AllocBody535_17 : StackLang.HolProg 64 :=
.seq AllocBody535_13 AllocBody535_16

def AllocBody535_18 : StackLang.HolProg 64 :=
.seq AllocBody535_12 AllocBody535_17

def AllocBody535_19 : StackLang.HolProg 64 :=
.seq AllocBody535_11 AllocBody535_18

def AllocBody535_20 : StackLang.HolProg 64 :=
.seq AllocBody535_10 AllocBody535_19

def AllocBody535_21 : StackLang.HolProg 64 :=
.seq AllocBody535_9 AllocBody535_20

def AllocBody535_22 : StackLang.HolProg 64 :=
.seq AllocBody535_8 AllocBody535_21

def AllocBody535_23 : StackLang.HolProg 64 :=
.seq AllocBody535_7 AllocBody535_22

def AllocBody535_24 : StackLang.HolProg 64 :=
.seq AllocBody535_6 AllocBody535_23

def AllocBody535_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody535_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody535_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody535_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody535_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_32 : StackLang.HolProg 64 :=
.seq AllocBody535_30 AllocBody535_31

def AllocBody535_33 : StackLang.HolProg 64 :=
.seq AllocBody535_29 AllocBody535_32

def AllocBody535_34 : StackLang.HolProg 64 :=
.seq AllocBody535_28 AllocBody535_33

def AllocBody535_35 : StackLang.HolProg 64 :=
.seq AllocBody535_27 AllocBody535_34

def AllocBody535_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody535_38 : StackLang.HolProg 64 :=
.seq AllocBody535_36 AllocBody535_37

def AllocBody535_39 : StackLang.HolProg 64 :=
.call (some (AllocBody535_35, 0, 535, 2)) (Sum.inl 475) (some (AllocBody535_38, 535, 3))

def AllocBody535_40 : StackLang.HolProg 64 :=
.seq AllocBody535_26 AllocBody535_39

def AllocBody535_41 : StackLang.HolProg 64 :=
.seq AllocBody535_25 AllocBody535_40

def AllocBody535_42 : StackLang.HolProg 64 :=
.seq AllocBody535_24 AllocBody535_41

def AllocBody535_43 : StackLang.HolProg 64 :=
.seq AllocBody535_5 AllocBody535_42

def AllocBody535_44 : StackLang.HolProg 64 :=
.seq AllocBody535_2 AllocBody535_43

def AllocBody535_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody535_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody535_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1773#64)

def AllocBody535_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody535_51 : StackLang.HolProg 64 :=
.seq AllocBody535_49 AllocBody535_50

def AllocBody535_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody535_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody535_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody535_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 535 5

def AllocBody535_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody535_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody535_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody535_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody535_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody535_62 : StackLang.HolProg 64 :=
.seq AllocBody535_60 AllocBody535_61

def AllocBody535_63 : StackLang.HolProg 64 :=
.seq AllocBody535_59 AllocBody535_62

def AllocBody535_64 : StackLang.HolProg 64 :=
.seq AllocBody535_58 AllocBody535_63

def AllocBody535_65 : StackLang.HolProg 64 :=
.seq AllocBody535_57 AllocBody535_64

def AllocBody535_66 : StackLang.HolProg 64 :=
.seq AllocBody535_56 AllocBody535_65

def AllocBody535_67 : StackLang.HolProg 64 :=
.seq AllocBody535_55 AllocBody535_66

def AllocBody535_68 : StackLang.HolProg 64 :=
.seq AllocBody535_54 AllocBody535_67

def AllocBody535_69 : StackLang.HolProg 64 :=
.seq AllocBody535_53 AllocBody535_68

def AllocBody535_70 : StackLang.HolProg 64 :=
.seq AllocBody535_52 AllocBody535_69

def AllocBody535_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody535_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody535_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody535_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody535_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_78 : StackLang.HolProg 64 :=
.seq AllocBody535_76 AllocBody535_77

def AllocBody535_79 : StackLang.HolProg 64 :=
.seq AllocBody535_75 AllocBody535_78

def AllocBody535_80 : StackLang.HolProg 64 :=
.seq AllocBody535_74 AllocBody535_79

def AllocBody535_81 : StackLang.HolProg 64 :=
.seq AllocBody535_73 AllocBody535_80

def AllocBody535_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody535_84 : StackLang.HolProg 64 :=
.seq AllocBody535_82 AllocBody535_83

def AllocBody535_85 : StackLang.HolProg 64 :=
.call (some (AllocBody535_81, 0, 535, 4)) (Sum.inl 470) (some (AllocBody535_84, 535, 5))

def AllocBody535_86 : StackLang.HolProg 64 :=
.seq AllocBody535_72 AllocBody535_85

def AllocBody535_87 : StackLang.HolProg 64 :=
.seq AllocBody535_71 AllocBody535_86

def AllocBody535_88 : StackLang.HolProg 64 :=
.seq AllocBody535_70 AllocBody535_87

def AllocBody535_89 : StackLang.HolProg 64 :=
.seq AllocBody535_51 AllocBody535_88

def AllocBody535_90 : StackLang.HolProg 64 :=
.seq AllocBody535_48 AllocBody535_89

def AllocBody535_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody535_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody535_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1774#64)

def AllocBody535_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody535_97 : StackLang.HolProg 64 :=
.seq AllocBody535_95 AllocBody535_96

def AllocBody535_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody535_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody535_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody535_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 535 7

def AllocBody535_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody535_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody535_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody535_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody535_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody535_108 : StackLang.HolProg 64 :=
.seq AllocBody535_106 AllocBody535_107

def AllocBody535_109 : StackLang.HolProg 64 :=
.seq AllocBody535_105 AllocBody535_108

def AllocBody535_110 : StackLang.HolProg 64 :=
.seq AllocBody535_104 AllocBody535_109

def AllocBody535_111 : StackLang.HolProg 64 :=
.seq AllocBody535_103 AllocBody535_110

def AllocBody535_112 : StackLang.HolProg 64 :=
.seq AllocBody535_102 AllocBody535_111

def AllocBody535_113 : StackLang.HolProg 64 :=
.seq AllocBody535_101 AllocBody535_112

def AllocBody535_114 : StackLang.HolProg 64 :=
.seq AllocBody535_100 AllocBody535_113

def AllocBody535_115 : StackLang.HolProg 64 :=
.seq AllocBody535_99 AllocBody535_114

def AllocBody535_116 : StackLang.HolProg 64 :=
.seq AllocBody535_98 AllocBody535_115

def AllocBody535_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody535_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody535_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody535_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody535_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody535_124 : StackLang.HolProg 64 :=
.seq AllocBody535_122 AllocBody535_123

def AllocBody535_125 : StackLang.HolProg 64 :=
.seq AllocBody535_121 AllocBody535_124

def AllocBody535_126 : StackLang.HolProg 64 :=
.seq AllocBody535_120 AllocBody535_125

def AllocBody535_127 : StackLang.HolProg 64 :=
.seq AllocBody535_119 AllocBody535_126

def AllocBody535_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody535_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody535_130 : StackLang.HolProg 64 :=
.seq AllocBody535_128 AllocBody535_129

def AllocBody535_131 : StackLang.HolProg 64 :=
.call (some (AllocBody535_127, 0, 535, 6)) (Sum.inl 490) (some (AllocBody535_130, 535, 7))

def AllocBody535_132 : StackLang.HolProg 64 :=
.seq AllocBody535_118 AllocBody535_131

def AllocBody535_133 : StackLang.HolProg 64 :=
.seq AllocBody535_117 AllocBody535_132

def AllocBody535_134 : StackLang.HolProg 64 :=
.seq AllocBody535_116 AllocBody535_133

def AllocBody535_135 : StackLang.HolProg 64 :=
.seq AllocBody535_97 AllocBody535_134

def AllocBody535_136 : StackLang.HolProg 64 :=
.seq AllocBody535_94 AllocBody535_135

def AllocBody535_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody535_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody535_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody535_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody535_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody535_142 : StackLang.HolProg 64 :=
.seq AllocBody535_140 AllocBody535_141

def AllocBody535_143 : StackLang.HolProg 64 :=
.seq AllocBody535_139 AllocBody535_142

def AllocBody535_144 : StackLang.HolProg 64 :=
.seq AllocBody535_138 AllocBody535_143

def AllocBody535_145 : StackLang.HolProg 64 :=
.seq AllocBody535_137 AllocBody535_144

def AllocBody535_146 : StackLang.HolProg 64 :=
.seq AllocBody535_136 AllocBody535_145

def AllocBody535_147 : StackLang.HolProg 64 :=
.seq AllocBody535_93 AllocBody535_146

def AllocBody535_148 : StackLang.HolProg 64 :=
.seq AllocBody535_92 AllocBody535_147

def AllocBody535_149 : StackLang.HolProg 64 :=
.seq AllocBody535_91 AllocBody535_148

def AllocBody535_150 : StackLang.HolProg 64 :=
.seq AllocBody535_90 AllocBody535_149

def AllocBody535_151 : StackLang.HolProg 64 :=
.seq AllocBody535_47 AllocBody535_150

def AllocBody535_152 : StackLang.HolProg 64 :=
.seq AllocBody535_46 AllocBody535_151

def AllocBody535_153 : StackLang.HolProg 64 :=
.seq AllocBody535_45 AllocBody535_152

def AllocBody535_154 : StackLang.HolProg 64 :=
.seq AllocBody535_44 AllocBody535_153

def AllocBody535_155 : StackLang.HolProg 64 :=
.seq AllocBody535_1 AllocBody535_154

def AllocBody535_156 : StackLang.HolProg 64 :=
.seq AllocBody535_0 AllocBody535_155

def Alloc535 : Nat × StackLang.HolProg 64 := (535, AllocBody535_156)
theorem Alloc535_eq : StackAlloc.progComp (535, raw535) = Alloc535 := by
  kernel_rfl
#print axioms Alloc535_eq
end InitECandidate.Proofs.BackendStages
