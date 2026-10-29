import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw249
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody249_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody249_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody249_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 506#64)

def AllocBody249_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody249_5 : StackLang.HolProg 64 :=
.seq AllocBody249_3 AllocBody249_4

def AllocBody249_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody249_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody249_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody249_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 249 3

def AllocBody249_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody249_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody249_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody249_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody249_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody249_16 : StackLang.HolProg 64 :=
.seq AllocBody249_14 AllocBody249_15

def AllocBody249_17 : StackLang.HolProg 64 :=
.seq AllocBody249_13 AllocBody249_16

def AllocBody249_18 : StackLang.HolProg 64 :=
.seq AllocBody249_12 AllocBody249_17

def AllocBody249_19 : StackLang.HolProg 64 :=
.seq AllocBody249_11 AllocBody249_18

def AllocBody249_20 : StackLang.HolProg 64 :=
.seq AllocBody249_10 AllocBody249_19

def AllocBody249_21 : StackLang.HolProg 64 :=
.seq AllocBody249_9 AllocBody249_20

def AllocBody249_22 : StackLang.HolProg 64 :=
.seq AllocBody249_8 AllocBody249_21

def AllocBody249_23 : StackLang.HolProg 64 :=
.seq AllocBody249_7 AllocBody249_22

def AllocBody249_24 : StackLang.HolProg 64 :=
.seq AllocBody249_6 AllocBody249_23

def AllocBody249_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody249_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody249_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody249_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody249_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_32 : StackLang.HolProg 64 :=
.seq AllocBody249_30 AllocBody249_31

def AllocBody249_33 : StackLang.HolProg 64 :=
.seq AllocBody249_29 AllocBody249_32

def AllocBody249_34 : StackLang.HolProg 64 :=
.seq AllocBody249_28 AllocBody249_33

def AllocBody249_35 : StackLang.HolProg 64 :=
.seq AllocBody249_27 AllocBody249_34

def AllocBody249_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody249_38 : StackLang.HolProg 64 :=
.seq AllocBody249_36 AllocBody249_37

def AllocBody249_39 : StackLang.HolProg 64 :=
.call (some (AllocBody249_35, 0, 249, 2)) (Sum.inl 248) (some (AllocBody249_38, 249, 3))

def AllocBody249_40 : StackLang.HolProg 64 :=
.seq AllocBody249_26 AllocBody249_39

def AllocBody249_41 : StackLang.HolProg 64 :=
.seq AllocBody249_25 AllocBody249_40

def AllocBody249_42 : StackLang.HolProg 64 :=
.seq AllocBody249_24 AllocBody249_41

def AllocBody249_43 : StackLang.HolProg 64 :=
.seq AllocBody249_5 AllocBody249_42

def AllocBody249_44 : StackLang.HolProg 64 :=
.seq AllocBody249_2 AllocBody249_43

def AllocBody249_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody249_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 507#64)

def AllocBody249_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody249_50 : StackLang.HolProg 64 :=
.seq AllocBody249_48 AllocBody249_49

def AllocBody249_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody249_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody249_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody249_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 249 5

def AllocBody249_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody249_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody249_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody249_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody249_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody249_61 : StackLang.HolProg 64 :=
.seq AllocBody249_59 AllocBody249_60

def AllocBody249_62 : StackLang.HolProg 64 :=
.seq AllocBody249_58 AllocBody249_61

def AllocBody249_63 : StackLang.HolProg 64 :=
.seq AllocBody249_57 AllocBody249_62

def AllocBody249_64 : StackLang.HolProg 64 :=
.seq AllocBody249_56 AllocBody249_63

def AllocBody249_65 : StackLang.HolProg 64 :=
.seq AllocBody249_55 AllocBody249_64

def AllocBody249_66 : StackLang.HolProg 64 :=
.seq AllocBody249_54 AllocBody249_65

def AllocBody249_67 : StackLang.HolProg 64 :=
.seq AllocBody249_53 AllocBody249_66

def AllocBody249_68 : StackLang.HolProg 64 :=
.seq AllocBody249_52 AllocBody249_67

def AllocBody249_69 : StackLang.HolProg 64 :=
.seq AllocBody249_51 AllocBody249_68

def AllocBody249_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody249_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody249_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody249_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody249_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody249_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody249_78 : StackLang.HolProg 64 :=
.seq AllocBody249_76 AllocBody249_77

def AllocBody249_79 : StackLang.HolProg 64 :=
.seq AllocBody249_75 AllocBody249_78

def AllocBody249_80 : StackLang.HolProg 64 :=
.seq AllocBody249_74 AllocBody249_79

def AllocBody249_81 : StackLang.HolProg 64 :=
.seq AllocBody249_73 AllocBody249_80

def AllocBody249_82 : StackLang.HolProg 64 :=
.seq AllocBody249_72 AllocBody249_81

def AllocBody249_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody249_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody249_85 : StackLang.HolProg 64 :=
.seq AllocBody249_83 AllocBody249_84

def AllocBody249_86 : StackLang.HolProg 64 :=
.call (some (AllocBody249_82, 0, 249, 4)) (Sum.inl 90) (some (AllocBody249_85, 249, 5))

def AllocBody249_87 : StackLang.HolProg 64 :=
.seq AllocBody249_71 AllocBody249_86

def AllocBody249_88 : StackLang.HolProg 64 :=
.seq AllocBody249_70 AllocBody249_87

def AllocBody249_89 : StackLang.HolProg 64 :=
.seq AllocBody249_69 AllocBody249_88

def AllocBody249_90 : StackLang.HolProg 64 :=
.seq AllocBody249_50 AllocBody249_89

def AllocBody249_91 : StackLang.HolProg 64 :=
.seq AllocBody249_47 AllocBody249_90

def AllocBody249_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody249_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody249_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody249_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody249_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 15

def AllocBody249_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 256

def AllocBody249_98 : StackLang.HolProg 64 :=
.seq AllocBody249_96 AllocBody249_97

def AllocBody249_99 : StackLang.HolProg 64 :=
.seq AllocBody249_95 AllocBody249_98

def AllocBody249_100 : StackLang.HolProg 64 :=
.seq AllocBody249_94 AllocBody249_99

def AllocBody249_101 : StackLang.HolProg 64 :=
.seq AllocBody249_93 AllocBody249_100

def AllocBody249_102 : StackLang.HolProg 64 :=
.seq AllocBody249_92 AllocBody249_101

def AllocBody249_103 : StackLang.HolProg 64 :=
.seq AllocBody249_91 AllocBody249_102

def AllocBody249_104 : StackLang.HolProg 64 :=
.seq AllocBody249_46 AllocBody249_103

def AllocBody249_105 : StackLang.HolProg 64 :=
.seq AllocBody249_45 AllocBody249_104

def AllocBody249_106 : StackLang.HolProg 64 :=
.seq AllocBody249_44 AllocBody249_105

def AllocBody249_107 : StackLang.HolProg 64 :=
.seq AllocBody249_1 AllocBody249_106

def AllocBody249_108 : StackLang.HolProg 64 :=
.seq AllocBody249_0 AllocBody249_107

def Alloc249 : Nat × StackLang.HolProg 64 := (249, AllocBody249_108)
theorem Alloc249_eq : StackAlloc.progComp (249, raw249) = Alloc249 := by
  kernel_rfl
#print axioms Alloc249_eq
end InitECandidate.Proofs.BackendStages
