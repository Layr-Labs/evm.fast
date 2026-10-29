import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw303
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody303_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody303_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody303_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody303_3 : StackLang.HolProg 64 :=
.seq AllocBody303_1 AllocBody303_2

def AllocBody303_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 833#64)

def AllocBody303_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody303_7 : StackLang.HolProg 64 :=
.seq AllocBody303_5 AllocBody303_6

def AllocBody303_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody303_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody303_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody303_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 303 5

def AllocBody303_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody303_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody303_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody303_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody303_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody303_18 : StackLang.HolProg 64 :=
.seq AllocBody303_16 AllocBody303_17

def AllocBody303_19 : StackLang.HolProg 64 :=
.seq AllocBody303_15 AllocBody303_18

def AllocBody303_20 : StackLang.HolProg 64 :=
.seq AllocBody303_14 AllocBody303_19

def AllocBody303_21 : StackLang.HolProg 64 :=
.seq AllocBody303_13 AllocBody303_20

def AllocBody303_22 : StackLang.HolProg 64 :=
.seq AllocBody303_12 AllocBody303_21

def AllocBody303_23 : StackLang.HolProg 64 :=
.seq AllocBody303_11 AllocBody303_22

def AllocBody303_24 : StackLang.HolProg 64 :=
.seq AllocBody303_10 AllocBody303_23

def AllocBody303_25 : StackLang.HolProg 64 :=
.seq AllocBody303_9 AllocBody303_24

def AllocBody303_26 : StackLang.HolProg 64 :=
.seq AllocBody303_8 AllocBody303_25

def AllocBody303_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody303_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody303_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody303_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody303_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody303_34 : StackLang.HolProg 64 :=
.seq AllocBody303_32 AllocBody303_33

def AllocBody303_35 : StackLang.HolProg 64 :=
.seq AllocBody303_31 AllocBody303_34

def AllocBody303_36 : StackLang.HolProg 64 :=
.seq AllocBody303_30 AllocBody303_35

def AllocBody303_37 : StackLang.HolProg 64 :=
.seq AllocBody303_29 AllocBody303_36

def AllocBody303_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody303_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody303_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody303_41 : StackLang.HolProg 64 :=
.seq AllocBody303_39 AllocBody303_40

def AllocBody303_42 : StackLang.HolProg 64 :=
.seq AllocBody303_38 AllocBody303_41

def AllocBody303_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody303_45 : StackLang.HolProg 64 :=
.seq AllocBody303_43 AllocBody303_44

def AllocBody303_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody303_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody303_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody303_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody303_50 : StackLang.HolProg 64 :=
.seq AllocBody303_48 AllocBody303_49

def AllocBody303_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 834#64)

def AllocBody303_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody303_54 : StackLang.HolProg 64 :=
.seq AllocBody303_52 AllocBody303_53

def AllocBody303_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody303_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody303_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody303_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 303 4

def AllocBody303_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody303_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody303_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody303_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody303_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody303_65 : StackLang.HolProg 64 :=
.seq AllocBody303_63 AllocBody303_64

def AllocBody303_66 : StackLang.HolProg 64 :=
.seq AllocBody303_62 AllocBody303_65

def AllocBody303_67 : StackLang.HolProg 64 :=
.seq AllocBody303_61 AllocBody303_66

def AllocBody303_68 : StackLang.HolProg 64 :=
.seq AllocBody303_60 AllocBody303_67

def AllocBody303_69 : StackLang.HolProg 64 :=
.seq AllocBody303_59 AllocBody303_68

def AllocBody303_70 : StackLang.HolProg 64 :=
.seq AllocBody303_58 AllocBody303_69

def AllocBody303_71 : StackLang.HolProg 64 :=
.seq AllocBody303_57 AllocBody303_70

def AllocBody303_72 : StackLang.HolProg 64 :=
.seq AllocBody303_56 AllocBody303_71

def AllocBody303_73 : StackLang.HolProg 64 :=
.seq AllocBody303_55 AllocBody303_72

def AllocBody303_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody303_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody303_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody303_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody303_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody303_81 : StackLang.HolProg 64 :=
.seq AllocBody303_79 AllocBody303_80

def AllocBody303_82 : StackLang.HolProg 64 :=
.seq AllocBody303_78 AllocBody303_81

def AllocBody303_83 : StackLang.HolProg 64 :=
.seq AllocBody303_77 AllocBody303_82

def AllocBody303_84 : StackLang.HolProg 64 :=
.seq AllocBody303_76 AllocBody303_83

def AllocBody303_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody303_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody303_87 : StackLang.HolProg 64 :=
.seq AllocBody303_85 AllocBody303_86

def AllocBody303_88 : StackLang.HolProg 64 :=
.call (some (AllocBody303_84, 0, 303, 3)) (Sum.inl 76) (some (AllocBody303_87, 303, 4))

def AllocBody303_89 : StackLang.HolProg 64 :=
.seq AllocBody303_75 AllocBody303_88

def AllocBody303_90 : StackLang.HolProg 64 :=
.seq AllocBody303_74 AllocBody303_89

def AllocBody303_91 : StackLang.HolProg 64 :=
.seq AllocBody303_73 AllocBody303_90

def AllocBody303_92 : StackLang.HolProg 64 :=
.seq AllocBody303_54 AllocBody303_91

def AllocBody303_93 : StackLang.HolProg 64 :=
.seq AllocBody303_51 AllocBody303_92

def AllocBody303_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody303_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 2

def AllocBody303_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody303_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody303_100 : StackLang.HolProg 64 :=
.seq AllocBody303_98 AllocBody303_99

def AllocBody303_101 : StackLang.HolProg 64 :=
.seq AllocBody303_97 AllocBody303_100

def AllocBody303_102 : StackLang.HolProg 64 :=
.seq AllocBody303_96 AllocBody303_101

def AllocBody303_103 : StackLang.HolProg 64 :=
.seq AllocBody303_95 AllocBody303_102

def AllocBody303_104 : StackLang.HolProg 64 :=
.seq AllocBody303_94 AllocBody303_103

def AllocBody303_105 : StackLang.HolProg 64 :=
.seq AllocBody303_93 AllocBody303_104

def AllocBody303_106 : StackLang.HolProg 64 :=
.seq AllocBody303_50 AllocBody303_105

def AllocBody303_107 : StackLang.HolProg 64 :=
.seq AllocBody303_47 AllocBody303_106

def AllocBody303_108 : StackLang.HolProg 64 :=
.seq AllocBody303_46 AllocBody303_107

def AllocBody303_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) AllocBody303_45 AllocBody303_108

def AllocBody303_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody303_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody303_113 : StackLang.HolProg 64 :=
.seq AllocBody303_111 AllocBody303_112

def AllocBody303_114 : StackLang.HolProg 64 :=
.seq AllocBody303_110 AllocBody303_113

def AllocBody303_115 : StackLang.HolProg 64 :=
.seq AllocBody303_109 AllocBody303_114

def AllocBody303_116 : StackLang.HolProg 64 :=
.seq AllocBody303_42 AllocBody303_115

def AllocBody303_117 : StackLang.HolProg 64 :=
.call (some (AllocBody303_37, 0, 303, 2)) (Sum.inl 302) (some (AllocBody303_116, 303, 5))

def AllocBody303_118 : StackLang.HolProg 64 :=
.seq AllocBody303_28 AllocBody303_117

def AllocBody303_119 : StackLang.HolProg 64 :=
.seq AllocBody303_27 AllocBody303_118

def AllocBody303_120 : StackLang.HolProg 64 :=
.seq AllocBody303_26 AllocBody303_119

def AllocBody303_121 : StackLang.HolProg 64 :=
.seq AllocBody303_7 AllocBody303_120

def AllocBody303_122 : StackLang.HolProg 64 :=
.seq AllocBody303_4 AllocBody303_121

def AllocBody303_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody303_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody303_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody303_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody303_127 : StackLang.HolProg 64 :=
.seq AllocBody303_125 AllocBody303_126

def AllocBody303_128 : StackLang.HolProg 64 :=
.seq AllocBody303_124 AllocBody303_127

def AllocBody303_129 : StackLang.HolProg 64 :=
.seq AllocBody303_123 AllocBody303_128

def AllocBody303_130 : StackLang.HolProg 64 :=
.seq AllocBody303_122 AllocBody303_129

def AllocBody303_131 : StackLang.HolProg 64 :=
.seq AllocBody303_3 AllocBody303_130

def AllocBody303_132 : StackLang.HolProg 64 :=
.seq AllocBody303_0 AllocBody303_131

def Alloc303 : Nat × StackLang.HolProg 64 := (303, AllocBody303_132)
theorem Alloc303_eq : StackAlloc.progComp (303, raw303) = Alloc303 := by
  kernel_rfl
#print axioms Alloc303_eq
end InitECandidate.Proofs.BackendStages
