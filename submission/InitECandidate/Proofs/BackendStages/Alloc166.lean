import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw166
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody166_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody166_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody166_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody166_3 : StackLang.HolProg 64 :=
.seq AllocBody166_1 AllocBody166_2

def AllocBody166_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 182#64)

def AllocBody166_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody166_7 : StackLang.HolProg 64 :=
.seq AllocBody166_5 AllocBody166_6

def AllocBody166_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody166_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody166_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody166_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 166 3

def AllocBody166_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody166_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody166_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody166_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody166_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody166_18 : StackLang.HolProg 64 :=
.seq AllocBody166_16 AllocBody166_17

def AllocBody166_19 : StackLang.HolProg 64 :=
.seq AllocBody166_15 AllocBody166_18

def AllocBody166_20 : StackLang.HolProg 64 :=
.seq AllocBody166_14 AllocBody166_19

def AllocBody166_21 : StackLang.HolProg 64 :=
.seq AllocBody166_13 AllocBody166_20

def AllocBody166_22 : StackLang.HolProg 64 :=
.seq AllocBody166_12 AllocBody166_21

def AllocBody166_23 : StackLang.HolProg 64 :=
.seq AllocBody166_11 AllocBody166_22

def AllocBody166_24 : StackLang.HolProg 64 :=
.seq AllocBody166_10 AllocBody166_23

def AllocBody166_25 : StackLang.HolProg 64 :=
.seq AllocBody166_9 AllocBody166_24

def AllocBody166_26 : StackLang.HolProg 64 :=
.seq AllocBody166_8 AllocBody166_25

def AllocBody166_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody166_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody166_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody166_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody166_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody166_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody166_35 : StackLang.HolProg 64 :=
.seq AllocBody166_33 AllocBody166_34

def AllocBody166_36 : StackLang.HolProg 64 :=
.seq AllocBody166_32 AllocBody166_35

def AllocBody166_37 : StackLang.HolProg 64 :=
.seq AllocBody166_31 AllocBody166_36

def AllocBody166_38 : StackLang.HolProg 64 :=
.seq AllocBody166_30 AllocBody166_37

def AllocBody166_39 : StackLang.HolProg 64 :=
.seq AllocBody166_29 AllocBody166_38

def AllocBody166_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody166_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody166_42 : StackLang.HolProg 64 :=
.seq AllocBody166_40 AllocBody166_41

def AllocBody166_43 : StackLang.HolProg 64 :=
.call (some (AllocBody166_39, 0, 166, 2)) (Sum.inl 163) (some (AllocBody166_42, 166, 3))

def AllocBody166_44 : StackLang.HolProg 64 :=
.seq AllocBody166_28 AllocBody166_43

def AllocBody166_45 : StackLang.HolProg 64 :=
.seq AllocBody166_27 AllocBody166_44

def AllocBody166_46 : StackLang.HolProg 64 :=
.seq AllocBody166_26 AllocBody166_45

def AllocBody166_47 : StackLang.HolProg 64 :=
.seq AllocBody166_7 AllocBody166_46

def AllocBody166_48 : StackLang.HolProg 64 :=
.seq AllocBody166_4 AllocBody166_47

def AllocBody166_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody166_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody166_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody166_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody166_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody166_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody166_57 : StackLang.HolProg 64 :=
.seq AllocBody166_55 AllocBody166_56

def AllocBody166_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 183#64)

def AllocBody166_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody166_61 : StackLang.HolProg 64 :=
.seq AllocBody166_59 AllocBody166_60

def AllocBody166_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody166_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody166_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody166_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 166 5

def AllocBody166_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody166_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody166_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody166_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody166_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody166_72 : StackLang.HolProg 64 :=
.seq AllocBody166_70 AllocBody166_71

def AllocBody166_73 : StackLang.HolProg 64 :=
.seq AllocBody166_69 AllocBody166_72

def AllocBody166_74 : StackLang.HolProg 64 :=
.seq AllocBody166_68 AllocBody166_73

def AllocBody166_75 : StackLang.HolProg 64 :=
.seq AllocBody166_67 AllocBody166_74

def AllocBody166_76 : StackLang.HolProg 64 :=
.seq AllocBody166_66 AllocBody166_75

def AllocBody166_77 : StackLang.HolProg 64 :=
.seq AllocBody166_65 AllocBody166_76

def AllocBody166_78 : StackLang.HolProg 64 :=
.seq AllocBody166_64 AllocBody166_77

def AllocBody166_79 : StackLang.HolProg 64 :=
.seq AllocBody166_63 AllocBody166_78

def AllocBody166_80 : StackLang.HolProg 64 :=
.seq AllocBody166_62 AllocBody166_79

def AllocBody166_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody166_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody166_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody166_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody166_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody166_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody166_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody166_90 : StackLang.HolProg 64 :=
.seq AllocBody166_88 AllocBody166_89

def AllocBody166_91 : StackLang.HolProg 64 :=
.seq AllocBody166_87 AllocBody166_90

def AllocBody166_92 : StackLang.HolProg 64 :=
.seq AllocBody166_86 AllocBody166_91

def AllocBody166_93 : StackLang.HolProg 64 :=
.seq AllocBody166_85 AllocBody166_92

def AllocBody166_94 : StackLang.HolProg 64 :=
.seq AllocBody166_84 AllocBody166_93

def AllocBody166_95 : StackLang.HolProg 64 :=
.seq AllocBody166_83 AllocBody166_94

def AllocBody166_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody166_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody166_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody166_99 : StackLang.HolProg 64 :=
.seq AllocBody166_97 AllocBody166_98

def AllocBody166_100 : StackLang.HolProg 64 :=
.seq AllocBody166_96 AllocBody166_99

def AllocBody166_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody166_102 : StackLang.HolProg 64 :=
.seq AllocBody166_100 AllocBody166_101

def AllocBody166_103 : StackLang.HolProg 64 :=
.call (some (AllocBody166_95, 0, 166, 4)) (Sum.inl 165) (some (AllocBody166_102, 166, 5))

def AllocBody166_104 : StackLang.HolProg 64 :=
.seq AllocBody166_82 AllocBody166_103

def AllocBody166_105 : StackLang.HolProg 64 :=
.seq AllocBody166_81 AllocBody166_104

def AllocBody166_106 : StackLang.HolProg 64 :=
.seq AllocBody166_80 AllocBody166_105

def AllocBody166_107 : StackLang.HolProg 64 :=
.seq AllocBody166_61 AllocBody166_106

def AllocBody166_108 : StackLang.HolProg 64 :=
.seq AllocBody166_58 AllocBody166_107

def AllocBody166_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody166_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_111 : StackLang.HolProg 64 :=
.seq AllocBody166_109 AllocBody166_110

def AllocBody166_112 : StackLang.HolProg 64 :=
.seq AllocBody166_108 AllocBody166_111

def AllocBody166_113 : StackLang.HolProg 64 :=
.seq AllocBody166_57 AllocBody166_112

def AllocBody166_114 : StackLang.HolProg 64 :=
.seq AllocBody166_54 AllocBody166_113

def AllocBody166_115 : StackLang.HolProg 64 :=
.seq AllocBody166_53 AllocBody166_114

def AllocBody166_116 : StackLang.HolProg 64 :=
.seq AllocBody166_52 AllocBody166_115

def AllocBody166_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody166_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody166_119 : StackLang.HolProg 64 :=
.seq AllocBody166_117 AllocBody166_118

def AllocBody166_120 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody166_116 AllocBody166_119

def AllocBody166_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody166_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody166_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody166_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody166_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody166_127 : StackLang.HolProg 64 :=
.seq AllocBody166_125 AllocBody166_126

def AllocBody166_128 : StackLang.HolProg 64 :=
.seq AllocBody166_124 AllocBody166_127

def AllocBody166_129 : StackLang.HolProg 64 :=
.seq AllocBody166_123 AllocBody166_128

def AllocBody166_130 : StackLang.HolProg 64 :=
.seq AllocBody166_122 AllocBody166_129

def AllocBody166_131 : StackLang.HolProg 64 :=
.seq AllocBody166_121 AllocBody166_130

def AllocBody166_132 : StackLang.HolProg 64 :=
.seq AllocBody166_120 AllocBody166_131

def AllocBody166_133 : StackLang.HolProg 64 :=
.seq AllocBody166_51 AllocBody166_132

def AllocBody166_134 : StackLang.HolProg 64 :=
.seq AllocBody166_50 AllocBody166_133

def AllocBody166_135 : StackLang.HolProg 64 :=
.seq AllocBody166_49 AllocBody166_134

def AllocBody166_136 : StackLang.HolProg 64 :=
.seq AllocBody166_48 AllocBody166_135

def AllocBody166_137 : StackLang.HolProg 64 :=
.seq AllocBody166_3 AllocBody166_136

def AllocBody166_138 : StackLang.HolProg 64 :=
.seq AllocBody166_0 AllocBody166_137

def Alloc166 : Nat × StackLang.HolProg 64 := (166, AllocBody166_138)
theorem Alloc166_eq : StackAlloc.progComp (166, raw166) = Alloc166 := by
  kernel_rfl
#print axioms Alloc166_eq
end InitECandidate.Proofs.BackendStages
