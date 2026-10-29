import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw409
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody409_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody409_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody409_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody409_3 : StackLang.HolProg 64 :=
.seq AllocBody409_1 AllocBody409_2

def AllocBody409_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1219#64)

def AllocBody409_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody409_7 : StackLang.HolProg 64 :=
.seq AllocBody409_5 AllocBody409_6

def AllocBody409_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody409_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody409_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody409_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 409 3

def AllocBody409_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody409_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody409_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody409_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody409_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody409_18 : StackLang.HolProg 64 :=
.seq AllocBody409_16 AllocBody409_17

def AllocBody409_19 : StackLang.HolProg 64 :=
.seq AllocBody409_15 AllocBody409_18

def AllocBody409_20 : StackLang.HolProg 64 :=
.seq AllocBody409_14 AllocBody409_19

def AllocBody409_21 : StackLang.HolProg 64 :=
.seq AllocBody409_13 AllocBody409_20

def AllocBody409_22 : StackLang.HolProg 64 :=
.seq AllocBody409_12 AllocBody409_21

def AllocBody409_23 : StackLang.HolProg 64 :=
.seq AllocBody409_11 AllocBody409_22

def AllocBody409_24 : StackLang.HolProg 64 :=
.seq AllocBody409_10 AllocBody409_23

def AllocBody409_25 : StackLang.HolProg 64 :=
.seq AllocBody409_9 AllocBody409_24

def AllocBody409_26 : StackLang.HolProg 64 :=
.seq AllocBody409_8 AllocBody409_25

def AllocBody409_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody409_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody409_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody409_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody409_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody409_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody409_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody409_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody409_37 : StackLang.HolProg 64 :=
.seq AllocBody409_35 AllocBody409_36

def AllocBody409_38 : StackLang.HolProg 64 :=
.seq AllocBody409_34 AllocBody409_37

def AllocBody409_39 : StackLang.HolProg 64 :=
.seq AllocBody409_33 AllocBody409_38

def AllocBody409_40 : StackLang.HolProg 64 :=
.seq AllocBody409_32 AllocBody409_39

def AllocBody409_41 : StackLang.HolProg 64 :=
.seq AllocBody409_31 AllocBody409_40

def AllocBody409_42 : StackLang.HolProg 64 :=
.seq AllocBody409_30 AllocBody409_41

def AllocBody409_43 : StackLang.HolProg 64 :=
.seq AllocBody409_29 AllocBody409_42

def AllocBody409_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody409_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody409_46 : StackLang.HolProg 64 :=
.seq AllocBody409_44 AllocBody409_45

def AllocBody409_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody409_48 : StackLang.HolProg 64 :=
.seq AllocBody409_46 AllocBody409_47

def AllocBody409_49 : StackLang.HolProg 64 :=
.call (some (AllocBody409_43, 0, 409, 2)) (Sum.inl 186) (some (AllocBody409_48, 409, 3))

def AllocBody409_50 : StackLang.HolProg 64 :=
.seq AllocBody409_28 AllocBody409_49

def AllocBody409_51 : StackLang.HolProg 64 :=
.seq AllocBody409_27 AllocBody409_50

def AllocBody409_52 : StackLang.HolProg 64 :=
.seq AllocBody409_26 AllocBody409_51

def AllocBody409_53 : StackLang.HolProg 64 :=
.seq AllocBody409_7 AllocBody409_52

def AllocBody409_54 : StackLang.HolProg 64 :=
.seq AllocBody409_4 AllocBody409_53

def AllocBody409_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody409_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody409_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody409_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody409_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody409_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody409_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody409_64 : StackLang.HolProg 64 :=
.seq AllocBody409_62 AllocBody409_63

def AllocBody409_65 : StackLang.HolProg 64 :=
.seq AllocBody409_61 AllocBody409_64

def AllocBody409_66 : StackLang.HolProg 64 :=
.seq AllocBody409_60 AllocBody409_65

def AllocBody409_67 : StackLang.HolProg 64 :=
.seq AllocBody409_59 AllocBody409_66

def AllocBody409_68 : StackLang.HolProg 64 :=
.seq AllocBody409_58 AllocBody409_67

def AllocBody409_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_70 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody409_68 AllocBody409_69

def AllocBody409_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody409_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody409_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody409_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody409_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody409_76 : StackLang.HolProg 64 :=
.seq AllocBody409_74 AllocBody409_75

def AllocBody409_77 : StackLang.HolProg 64 :=
.seq AllocBody409_73 AllocBody409_76

def AllocBody409_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1220#64)

def AllocBody409_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody409_81 : StackLang.HolProg 64 :=
.seq AllocBody409_79 AllocBody409_80

def AllocBody409_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody409_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody409_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody409_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 409 5

def AllocBody409_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody409_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody409_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody409_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody409_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody409_92 : StackLang.HolProg 64 :=
.seq AllocBody409_90 AllocBody409_91

def AllocBody409_93 : StackLang.HolProg 64 :=
.seq AllocBody409_89 AllocBody409_92

def AllocBody409_94 : StackLang.HolProg 64 :=
.seq AllocBody409_88 AllocBody409_93

def AllocBody409_95 : StackLang.HolProg 64 :=
.seq AllocBody409_87 AllocBody409_94

def AllocBody409_96 : StackLang.HolProg 64 :=
.seq AllocBody409_86 AllocBody409_95

def AllocBody409_97 : StackLang.HolProg 64 :=
.seq AllocBody409_85 AllocBody409_96

def AllocBody409_98 : StackLang.HolProg 64 :=
.seq AllocBody409_84 AllocBody409_97

def AllocBody409_99 : StackLang.HolProg 64 :=
.seq AllocBody409_83 AllocBody409_98

def AllocBody409_100 : StackLang.HolProg 64 :=
.seq AllocBody409_82 AllocBody409_99

def AllocBody409_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody409_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody409_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody409_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody409_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody409_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody409_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody409_109 : StackLang.HolProg 64 :=
.seq AllocBody409_107 AllocBody409_108

def AllocBody409_110 : StackLang.HolProg 64 :=
.seq AllocBody409_106 AllocBody409_109

def AllocBody409_111 : StackLang.HolProg 64 :=
.seq AllocBody409_105 AllocBody409_110

def AllocBody409_112 : StackLang.HolProg 64 :=
.seq AllocBody409_104 AllocBody409_111

def AllocBody409_113 : StackLang.HolProg 64 :=
.seq AllocBody409_103 AllocBody409_112

def AllocBody409_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody409_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody409_116 : StackLang.HolProg 64 :=
.seq AllocBody409_114 AllocBody409_115

def AllocBody409_117 : StackLang.HolProg 64 :=
.call (some (AllocBody409_113, 0, 409, 4)) (Sum.inl 186) (some (AllocBody409_116, 409, 5))

def AllocBody409_118 : StackLang.HolProg 64 :=
.seq AllocBody409_102 AllocBody409_117

def AllocBody409_119 : StackLang.HolProg 64 :=
.seq AllocBody409_101 AllocBody409_118

def AllocBody409_120 : StackLang.HolProg 64 :=
.seq AllocBody409_100 AllocBody409_119

def AllocBody409_121 : StackLang.HolProg 64 :=
.seq AllocBody409_81 AllocBody409_120

def AllocBody409_122 : StackLang.HolProg 64 :=
.seq AllocBody409_78 AllocBody409_121

def AllocBody409_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody409_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody409_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody409_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody409_127 : StackLang.HolProg 64 :=
.seq AllocBody409_125 AllocBody409_126

def AllocBody409_128 : StackLang.HolProg 64 :=
.seq AllocBody409_124 AllocBody409_127

def AllocBody409_129 : StackLang.HolProg 64 :=
.seq AllocBody409_123 AllocBody409_128

def AllocBody409_130 : StackLang.HolProg 64 :=
.seq AllocBody409_122 AllocBody409_129

def AllocBody409_131 : StackLang.HolProg 64 :=
.seq AllocBody409_77 AllocBody409_130

def AllocBody409_132 : StackLang.HolProg 64 :=
.seq AllocBody409_72 AllocBody409_131

def AllocBody409_133 : StackLang.HolProg 64 :=
.seq AllocBody409_71 AllocBody409_132

def AllocBody409_134 : StackLang.HolProg 64 :=
.seq AllocBody409_70 AllocBody409_133

def AllocBody409_135 : StackLang.HolProg 64 :=
.seq AllocBody409_57 AllocBody409_134

def AllocBody409_136 : StackLang.HolProg 64 :=
.seq AllocBody409_56 AllocBody409_135

def AllocBody409_137 : StackLang.HolProg 64 :=
.seq AllocBody409_55 AllocBody409_136

def AllocBody409_138 : StackLang.HolProg 64 :=
.seq AllocBody409_54 AllocBody409_137

def AllocBody409_139 : StackLang.HolProg 64 :=
.seq AllocBody409_3 AllocBody409_138

def AllocBody409_140 : StackLang.HolProg 64 :=
.seq AllocBody409_0 AllocBody409_139

def Alloc409 : Nat × StackLang.HolProg 64 := (409, AllocBody409_140)
theorem Alloc409_eq : StackAlloc.progComp (409, raw409) = Alloc409 := by
  kernel_rfl
#print axioms Alloc409_eq
end InitECandidate.Proofs.BackendStages
