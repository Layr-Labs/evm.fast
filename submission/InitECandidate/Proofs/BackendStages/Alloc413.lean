import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw413
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody413_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody413_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody413_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody413_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1233#64)

def AllocBody413_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody413_5 : StackLang.HolProg 64 :=
.seq AllocBody413_3 AllocBody413_4

def AllocBody413_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody413_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody413_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody413_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 413 3

def AllocBody413_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody413_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody413_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody413_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody413_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody413_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody413_16 : StackLang.HolProg 64 :=
.seq AllocBody413_14 AllocBody413_15

def AllocBody413_17 : StackLang.HolProg 64 :=
.seq AllocBody413_13 AllocBody413_16

def AllocBody413_18 : StackLang.HolProg 64 :=
.seq AllocBody413_12 AllocBody413_17

def AllocBody413_19 : StackLang.HolProg 64 :=
.seq AllocBody413_11 AllocBody413_18

def AllocBody413_20 : StackLang.HolProg 64 :=
.seq AllocBody413_10 AllocBody413_19

def AllocBody413_21 : StackLang.HolProg 64 :=
.seq AllocBody413_9 AllocBody413_20

def AllocBody413_22 : StackLang.HolProg 64 :=
.seq AllocBody413_8 AllocBody413_21

def AllocBody413_23 : StackLang.HolProg 64 :=
.seq AllocBody413_7 AllocBody413_22

def AllocBody413_24 : StackLang.HolProg 64 :=
.seq AllocBody413_6 AllocBody413_23

def AllocBody413_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody413_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody413_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody413_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody413_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody413_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody413_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody413_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody413_33 : StackLang.HolProg 64 :=
.seq AllocBody413_31 AllocBody413_32

def AllocBody413_34 : StackLang.HolProg 64 :=
.seq AllocBody413_30 AllocBody413_33

def AllocBody413_35 : StackLang.HolProg 64 :=
.seq AllocBody413_29 AllocBody413_34

def AllocBody413_36 : StackLang.HolProg 64 :=
.seq AllocBody413_28 AllocBody413_35

def AllocBody413_37 : StackLang.HolProg 64 :=
.seq AllocBody413_27 AllocBody413_36

def AllocBody413_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody413_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody413_40 : StackLang.HolProg 64 :=
.seq AllocBody413_38 AllocBody413_39

def AllocBody413_41 : StackLang.HolProg 64 :=
.call (some (AllocBody413_37, 0, 413, 2)) (Sum.inl 406) (some (AllocBody413_40, 413, 3))

def AllocBody413_42 : StackLang.HolProg 64 :=
.seq AllocBody413_26 AllocBody413_41

def AllocBody413_43 : StackLang.HolProg 64 :=
.seq AllocBody413_25 AllocBody413_42

def AllocBody413_44 : StackLang.HolProg 64 :=
.seq AllocBody413_24 AllocBody413_43

def AllocBody413_45 : StackLang.HolProg 64 :=
.seq AllocBody413_5 AllocBody413_44

def AllocBody413_46 : StackLang.HolProg 64 :=
.seq AllocBody413_2 AllocBody413_45

def AllocBody413_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody413_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody413_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody413_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody413_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody413_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody413_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody413_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody413_55 : StackLang.HolProg 64 :=
.seq AllocBody413_53 AllocBody413_54

def AllocBody413_56 : StackLang.HolProg 64 :=
.seq AllocBody413_52 AllocBody413_55

def AllocBody413_57 : StackLang.HolProg 64 :=
.seq AllocBody413_51 AllocBody413_56

def AllocBody413_58 : StackLang.HolProg 64 :=
.seq AllocBody413_50 AllocBody413_57

def AllocBody413_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody413_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody413_58 AllocBody413_59

def AllocBody413_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody413_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody413_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody413_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody413_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody413_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody413_67 : StackLang.HolProg 64 :=
.seq AllocBody413_65 AllocBody413_66

def AllocBody413_68 : StackLang.HolProg 64 :=
.seq AllocBody413_64 AllocBody413_67

def AllocBody413_69 : StackLang.HolProg 64 :=
.seq AllocBody413_63 AllocBody413_68

def AllocBody413_70 : StackLang.HolProg 64 :=
.seq AllocBody413_62 AllocBody413_69

def AllocBody413_71 : StackLang.HolProg 64 :=
.seq AllocBody413_61 AllocBody413_70

def AllocBody413_72 : StackLang.HolProg 64 :=
.seq AllocBody413_60 AllocBody413_71

def AllocBody413_73 : StackLang.HolProg 64 :=
.seq AllocBody413_49 AllocBody413_72

def AllocBody413_74 : StackLang.HolProg 64 :=
.seq AllocBody413_48 AllocBody413_73

def AllocBody413_75 : StackLang.HolProg 64 :=
.seq AllocBody413_47 AllocBody413_74

def AllocBody413_76 : StackLang.HolProg 64 :=
.seq AllocBody413_46 AllocBody413_75

def AllocBody413_77 : StackLang.HolProg 64 :=
.seq AllocBody413_1 AllocBody413_76

def AllocBody413_78 : StackLang.HolProg 64 :=
.seq AllocBody413_0 AllocBody413_77

def Alloc413 : Nat × StackLang.HolProg 64 := (413, AllocBody413_78)
theorem Alloc413_eq : StackAlloc.progComp (413, raw413) = Alloc413 := by
  kernel_rfl
#print axioms Alloc413_eq
end InitECandidate.Proofs.BackendStages
