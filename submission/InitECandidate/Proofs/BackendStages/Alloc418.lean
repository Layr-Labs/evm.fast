import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw418
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody418_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody418_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody418_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1245#64)

def AllocBody418_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody418_5 : StackLang.HolProg 64 :=
.seq AllocBody418_3 AllocBody418_4

def AllocBody418_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody418_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody418_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody418_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 418 3

def AllocBody418_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody418_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody418_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody418_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody418_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody418_16 : StackLang.HolProg 64 :=
.seq AllocBody418_14 AllocBody418_15

def AllocBody418_17 : StackLang.HolProg 64 :=
.seq AllocBody418_13 AllocBody418_16

def AllocBody418_18 : StackLang.HolProg 64 :=
.seq AllocBody418_12 AllocBody418_17

def AllocBody418_19 : StackLang.HolProg 64 :=
.seq AllocBody418_11 AllocBody418_18

def AllocBody418_20 : StackLang.HolProg 64 :=
.seq AllocBody418_10 AllocBody418_19

def AllocBody418_21 : StackLang.HolProg 64 :=
.seq AllocBody418_9 AllocBody418_20

def AllocBody418_22 : StackLang.HolProg 64 :=
.seq AllocBody418_8 AllocBody418_21

def AllocBody418_23 : StackLang.HolProg 64 :=
.seq AllocBody418_7 AllocBody418_22

def AllocBody418_24 : StackLang.HolProg 64 :=
.seq AllocBody418_6 AllocBody418_23

def AllocBody418_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody418_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody418_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody418_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody418_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody418_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody418_33 : StackLang.HolProg 64 :=
.seq AllocBody418_31 AllocBody418_32

def AllocBody418_34 : StackLang.HolProg 64 :=
.seq AllocBody418_30 AllocBody418_33

def AllocBody418_35 : StackLang.HolProg 64 :=
.seq AllocBody418_29 AllocBody418_34

def AllocBody418_36 : StackLang.HolProg 64 :=
.seq AllocBody418_28 AllocBody418_35

def AllocBody418_37 : StackLang.HolProg 64 :=
.seq AllocBody418_27 AllocBody418_36

def AllocBody418_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody418_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody418_40 : StackLang.HolProg 64 :=
.seq AllocBody418_38 AllocBody418_39

def AllocBody418_41 : StackLang.HolProg 64 :=
.call (some (AllocBody418_37, 0, 418, 2)) (Sum.inl 406) (some (AllocBody418_40, 418, 3))

def AllocBody418_42 : StackLang.HolProg 64 :=
.seq AllocBody418_26 AllocBody418_41

def AllocBody418_43 : StackLang.HolProg 64 :=
.seq AllocBody418_25 AllocBody418_42

def AllocBody418_44 : StackLang.HolProg 64 :=
.seq AllocBody418_24 AllocBody418_43

def AllocBody418_45 : StackLang.HolProg 64 :=
.seq AllocBody418_5 AllocBody418_44

def AllocBody418_46 : StackLang.HolProg 64 :=
.seq AllocBody418_2 AllocBody418_45

def AllocBody418_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody418_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody418_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody418_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody418_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody418_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody418_55 : StackLang.HolProg 64 :=
.seq AllocBody418_53 AllocBody418_54

def AllocBody418_56 : StackLang.HolProg 64 :=
.seq AllocBody418_52 AllocBody418_55

def AllocBody418_57 : StackLang.HolProg 64 :=
.seq AllocBody418_51 AllocBody418_56

def AllocBody418_58 : StackLang.HolProg 64 :=
.seq AllocBody418_50 AllocBody418_57

def AllocBody418_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody418_58 AllocBody418_59

def AllocBody418_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody418_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody418_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody418_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody418_65 : StackLang.HolProg 64 :=
.seq AllocBody418_63 AllocBody418_64

def AllocBody418_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1246#64)

def AllocBody418_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody418_69 : StackLang.HolProg 64 :=
.seq AllocBody418_67 AllocBody418_68

def AllocBody418_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody418_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody418_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody418_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 418 5

def AllocBody418_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody418_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody418_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody418_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody418_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody418_80 : StackLang.HolProg 64 :=
.seq AllocBody418_78 AllocBody418_79

def AllocBody418_81 : StackLang.HolProg 64 :=
.seq AllocBody418_77 AllocBody418_80

def AllocBody418_82 : StackLang.HolProg 64 :=
.seq AllocBody418_76 AllocBody418_81

def AllocBody418_83 : StackLang.HolProg 64 :=
.seq AllocBody418_75 AllocBody418_82

def AllocBody418_84 : StackLang.HolProg 64 :=
.seq AllocBody418_74 AllocBody418_83

def AllocBody418_85 : StackLang.HolProg 64 :=
.seq AllocBody418_73 AllocBody418_84

def AllocBody418_86 : StackLang.HolProg 64 :=
.seq AllocBody418_72 AllocBody418_85

def AllocBody418_87 : StackLang.HolProg 64 :=
.seq AllocBody418_71 AllocBody418_86

def AllocBody418_88 : StackLang.HolProg 64 :=
.seq AllocBody418_70 AllocBody418_87

def AllocBody418_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody418_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody418_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody418_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody418_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody418_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody418_97 : StackLang.HolProg 64 :=
.seq AllocBody418_95 AllocBody418_96

def AllocBody418_98 : StackLang.HolProg 64 :=
.seq AllocBody418_94 AllocBody418_97

def AllocBody418_99 : StackLang.HolProg 64 :=
.seq AllocBody418_93 AllocBody418_98

def AllocBody418_100 : StackLang.HolProg 64 :=
.seq AllocBody418_92 AllocBody418_99

def AllocBody418_101 : StackLang.HolProg 64 :=
.seq AllocBody418_91 AllocBody418_100

def AllocBody418_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody418_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody418_104 : StackLang.HolProg 64 :=
.seq AllocBody418_102 AllocBody418_103

def AllocBody418_105 : StackLang.HolProg 64 :=
.call (some (AllocBody418_101, 0, 418, 4)) (Sum.inl 416) (some (AllocBody418_104, 418, 5))

def AllocBody418_106 : StackLang.HolProg 64 :=
.seq AllocBody418_90 AllocBody418_105

def AllocBody418_107 : StackLang.HolProg 64 :=
.seq AllocBody418_89 AllocBody418_106

def AllocBody418_108 : StackLang.HolProg 64 :=
.seq AllocBody418_88 AllocBody418_107

def AllocBody418_109 : StackLang.HolProg 64 :=
.seq AllocBody418_69 AllocBody418_108

def AllocBody418_110 : StackLang.HolProg 64 :=
.seq AllocBody418_66 AllocBody418_109

def AllocBody418_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody418_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody418_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody418_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody418_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody418_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody418_119 : StackLang.HolProg 64 :=
.seq AllocBody418_117 AllocBody418_118

def AllocBody418_120 : StackLang.HolProg 64 :=
.seq AllocBody418_116 AllocBody418_119

def AllocBody418_121 : StackLang.HolProg 64 :=
.seq AllocBody418_115 AllocBody418_120

def AllocBody418_122 : StackLang.HolProg 64 :=
.seq AllocBody418_114 AllocBody418_121

def AllocBody418_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody418_122 AllocBody418_123

def AllocBody418_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody418_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody418_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody418_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody418_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody418_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody418_131 : StackLang.HolProg 64 :=
.seq AllocBody418_129 AllocBody418_130

def AllocBody418_132 : StackLang.HolProg 64 :=
.seq AllocBody418_128 AllocBody418_131

def AllocBody418_133 : StackLang.HolProg 64 :=
.seq AllocBody418_127 AllocBody418_132

def AllocBody418_134 : StackLang.HolProg 64 :=
.seq AllocBody418_126 AllocBody418_133

def AllocBody418_135 : StackLang.HolProg 64 :=
.seq AllocBody418_125 AllocBody418_134

def AllocBody418_136 : StackLang.HolProg 64 :=
.seq AllocBody418_124 AllocBody418_135

def AllocBody418_137 : StackLang.HolProg 64 :=
.seq AllocBody418_113 AllocBody418_136

def AllocBody418_138 : StackLang.HolProg 64 :=
.seq AllocBody418_112 AllocBody418_137

def AllocBody418_139 : StackLang.HolProg 64 :=
.seq AllocBody418_111 AllocBody418_138

def AllocBody418_140 : StackLang.HolProg 64 :=
.seq AllocBody418_110 AllocBody418_139

def AllocBody418_141 : StackLang.HolProg 64 :=
.seq AllocBody418_65 AllocBody418_140

def AllocBody418_142 : StackLang.HolProg 64 :=
.seq AllocBody418_62 AllocBody418_141

def AllocBody418_143 : StackLang.HolProg 64 :=
.seq AllocBody418_61 AllocBody418_142

def AllocBody418_144 : StackLang.HolProg 64 :=
.seq AllocBody418_60 AllocBody418_143

def AllocBody418_145 : StackLang.HolProg 64 :=
.seq AllocBody418_49 AllocBody418_144

def AllocBody418_146 : StackLang.HolProg 64 :=
.seq AllocBody418_48 AllocBody418_145

def AllocBody418_147 : StackLang.HolProg 64 :=
.seq AllocBody418_47 AllocBody418_146

def AllocBody418_148 : StackLang.HolProg 64 :=
.seq AllocBody418_46 AllocBody418_147

def AllocBody418_149 : StackLang.HolProg 64 :=
.seq AllocBody418_1 AllocBody418_148

def AllocBody418_150 : StackLang.HolProg 64 :=
.seq AllocBody418_0 AllocBody418_149

def Alloc418 : Nat × StackLang.HolProg 64 := (418, AllocBody418_150)
theorem Alloc418_eq : StackAlloc.progComp (418, raw418) = Alloc418 := by
  kernel_rfl
#print axioms Alloc418_eq
end InitECandidate.Proofs.BackendStages
