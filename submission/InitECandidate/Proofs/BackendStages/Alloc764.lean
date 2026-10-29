import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw764
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody764_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody764_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody764_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody764_3 : StackLang.HolProg 64 :=
.seq AllocBody764_1 AllocBody764_2

def AllocBody764_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody764_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3424#64)

def AllocBody764_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody764_7 : StackLang.HolProg 64 :=
.seq AllocBody764_5 AllocBody764_6

def AllocBody764_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody764_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody764_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody764_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 764 3

def AllocBody764_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody764_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody764_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody764_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody764_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody764_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody764_18 : StackLang.HolProg 64 :=
.seq AllocBody764_16 AllocBody764_17

def AllocBody764_19 : StackLang.HolProg 64 :=
.seq AllocBody764_15 AllocBody764_18

def AllocBody764_20 : StackLang.HolProg 64 :=
.seq AllocBody764_14 AllocBody764_19

def AllocBody764_21 : StackLang.HolProg 64 :=
.seq AllocBody764_13 AllocBody764_20

def AllocBody764_22 : StackLang.HolProg 64 :=
.seq AllocBody764_12 AllocBody764_21

def AllocBody764_23 : StackLang.HolProg 64 :=
.seq AllocBody764_11 AllocBody764_22

def AllocBody764_24 : StackLang.HolProg 64 :=
.seq AllocBody764_10 AllocBody764_23

def AllocBody764_25 : StackLang.HolProg 64 :=
.seq AllocBody764_9 AllocBody764_24

def AllocBody764_26 : StackLang.HolProg 64 :=
.seq AllocBody764_8 AllocBody764_25

def AllocBody764_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody764_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody764_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody764_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody764_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody764_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody764_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody764_34 : StackLang.HolProg 64 :=
.seq AllocBody764_32 AllocBody764_33

def AllocBody764_35 : StackLang.HolProg 64 :=
.seq AllocBody764_31 AllocBody764_34

def AllocBody764_36 : StackLang.HolProg 64 :=
.seq AllocBody764_30 AllocBody764_35

def AllocBody764_37 : StackLang.HolProg 64 :=
.seq AllocBody764_29 AllocBody764_36

def AllocBody764_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody764_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody764_40 : StackLang.HolProg 64 :=
.seq AllocBody764_38 AllocBody764_39

def AllocBody764_41 : StackLang.HolProg 64 :=
.call (some (AllocBody764_37, 0, 764, 2)) (Sum.inl 763) (some (AllocBody764_40, 764, 3))

def AllocBody764_42 : StackLang.HolProg 64 :=
.seq AllocBody764_28 AllocBody764_41

def AllocBody764_43 : StackLang.HolProg 64 :=
.seq AllocBody764_27 AllocBody764_42

def AllocBody764_44 : StackLang.HolProg 64 :=
.seq AllocBody764_26 AllocBody764_43

def AllocBody764_45 : StackLang.HolProg 64 :=
.seq AllocBody764_7 AllocBody764_44

def AllocBody764_46 : StackLang.HolProg 64 :=
.seq AllocBody764_4 AllocBody764_45

def AllocBody764_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody764_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody764_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody764_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3425#64)

def AllocBody764_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody764_52 : StackLang.HolProg 64 :=
.seq AllocBody764_50 AllocBody764_51

def AllocBody764_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody764_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody764_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody764_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 764 5

def AllocBody764_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody764_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody764_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody764_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody764_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody764_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody764_63 : StackLang.HolProg 64 :=
.seq AllocBody764_61 AllocBody764_62

def AllocBody764_64 : StackLang.HolProg 64 :=
.seq AllocBody764_60 AllocBody764_63

def AllocBody764_65 : StackLang.HolProg 64 :=
.seq AllocBody764_59 AllocBody764_64

def AllocBody764_66 : StackLang.HolProg 64 :=
.seq AllocBody764_58 AllocBody764_65

def AllocBody764_67 : StackLang.HolProg 64 :=
.seq AllocBody764_57 AllocBody764_66

def AllocBody764_68 : StackLang.HolProg 64 :=
.seq AllocBody764_56 AllocBody764_67

def AllocBody764_69 : StackLang.HolProg 64 :=
.seq AllocBody764_55 AllocBody764_68

def AllocBody764_70 : StackLang.HolProg 64 :=
.seq AllocBody764_54 AllocBody764_69

def AllocBody764_71 : StackLang.HolProg 64 :=
.seq AllocBody764_53 AllocBody764_70

def AllocBody764_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody764_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody764_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody764_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody764_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody764_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody764_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody764_79 : StackLang.HolProg 64 :=
.seq AllocBody764_77 AllocBody764_78

def AllocBody764_80 : StackLang.HolProg 64 :=
.seq AllocBody764_76 AllocBody764_79

def AllocBody764_81 : StackLang.HolProg 64 :=
.seq AllocBody764_75 AllocBody764_80

def AllocBody764_82 : StackLang.HolProg 64 :=
.seq AllocBody764_74 AllocBody764_81

def AllocBody764_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody764_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody764_85 : StackLang.HolProg 64 :=
.seq AllocBody764_83 AllocBody764_84

def AllocBody764_86 : StackLang.HolProg 64 :=
.call (some (AllocBody764_82, 0, 764, 4)) (Sum.inl 760) (some (AllocBody764_85, 764, 5))

def AllocBody764_87 : StackLang.HolProg 64 :=
.seq AllocBody764_73 AllocBody764_86

def AllocBody764_88 : StackLang.HolProg 64 :=
.seq AllocBody764_72 AllocBody764_87

def AllocBody764_89 : StackLang.HolProg 64 :=
.seq AllocBody764_71 AllocBody764_88

def AllocBody764_90 : StackLang.HolProg 64 :=
.seq AllocBody764_52 AllocBody764_89

def AllocBody764_91 : StackLang.HolProg 64 :=
.seq AllocBody764_49 AllocBody764_90

def AllocBody764_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody764_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody764_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody764_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody764_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody764_97 : StackLang.HolProg 64 :=
.seq AllocBody764_95 AllocBody764_96

def AllocBody764_98 : StackLang.HolProg 64 :=
.seq AllocBody764_94 AllocBody764_97

def AllocBody764_99 : StackLang.HolProg 64 :=
.seq AllocBody764_93 AllocBody764_98

def AllocBody764_100 : StackLang.HolProg 64 :=
.seq AllocBody764_92 AllocBody764_99

def AllocBody764_101 : StackLang.HolProg 64 :=
.seq AllocBody764_91 AllocBody764_100

def AllocBody764_102 : StackLang.HolProg 64 :=
.seq AllocBody764_48 AllocBody764_101

def AllocBody764_103 : StackLang.HolProg 64 :=
.seq AllocBody764_47 AllocBody764_102

def AllocBody764_104 : StackLang.HolProg 64 :=
.seq AllocBody764_46 AllocBody764_103

def AllocBody764_105 : StackLang.HolProg 64 :=
.seq AllocBody764_3 AllocBody764_104

def AllocBody764_106 : StackLang.HolProg 64 :=
.seq AllocBody764_0 AllocBody764_105

def Alloc764 : Nat × StackLang.HolProg 64 := (764, AllocBody764_106)
theorem Alloc764_eq : StackAlloc.progComp (764, raw764) = Alloc764 := by
  kernel_rfl
#print axioms Alloc764_eq
end InitECandidate.Proofs.BackendStages
