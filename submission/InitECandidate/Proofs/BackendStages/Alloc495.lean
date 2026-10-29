import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw495
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody495_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody495_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody495_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody495_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1542#64)

def AllocBody495_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody495_5 : StackLang.HolProg 64 :=
.seq AllocBody495_3 AllocBody495_4

def AllocBody495_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody495_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody495_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody495_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 495 3

def AllocBody495_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody495_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody495_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody495_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody495_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody495_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody495_16 : StackLang.HolProg 64 :=
.seq AllocBody495_14 AllocBody495_15

def AllocBody495_17 : StackLang.HolProg 64 :=
.seq AllocBody495_13 AllocBody495_16

def AllocBody495_18 : StackLang.HolProg 64 :=
.seq AllocBody495_12 AllocBody495_17

def AllocBody495_19 : StackLang.HolProg 64 :=
.seq AllocBody495_11 AllocBody495_18

def AllocBody495_20 : StackLang.HolProg 64 :=
.seq AllocBody495_10 AllocBody495_19

def AllocBody495_21 : StackLang.HolProg 64 :=
.seq AllocBody495_9 AllocBody495_20

def AllocBody495_22 : StackLang.HolProg 64 :=
.seq AllocBody495_8 AllocBody495_21

def AllocBody495_23 : StackLang.HolProg 64 :=
.seq AllocBody495_7 AllocBody495_22

def AllocBody495_24 : StackLang.HolProg 64 :=
.seq AllocBody495_6 AllocBody495_23

def AllocBody495_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody495_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody495_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody495_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody495_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody495_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody495_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody495_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody495_33 : StackLang.HolProg 64 :=
.seq AllocBody495_31 AllocBody495_32

def AllocBody495_34 : StackLang.HolProg 64 :=
.seq AllocBody495_30 AllocBody495_33

def AllocBody495_35 : StackLang.HolProg 64 :=
.seq AllocBody495_29 AllocBody495_34

def AllocBody495_36 : StackLang.HolProg 64 :=
.seq AllocBody495_28 AllocBody495_35

def AllocBody495_37 : StackLang.HolProg 64 :=
.seq AllocBody495_27 AllocBody495_36

def AllocBody495_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody495_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody495_40 : StackLang.HolProg 64 :=
.seq AllocBody495_38 AllocBody495_39

def AllocBody495_41 : StackLang.HolProg 64 :=
.call (some (AllocBody495_37, 0, 495, 2)) (Sum.inl 493) (some (AllocBody495_40, 495, 3))

def AllocBody495_42 : StackLang.HolProg 64 :=
.seq AllocBody495_26 AllocBody495_41

def AllocBody495_43 : StackLang.HolProg 64 :=
.seq AllocBody495_25 AllocBody495_42

def AllocBody495_44 : StackLang.HolProg 64 :=
.seq AllocBody495_24 AllocBody495_43

def AllocBody495_45 : StackLang.HolProg 64 :=
.seq AllocBody495_5 AllocBody495_44

def AllocBody495_46 : StackLang.HolProg 64 :=
.seq AllocBody495_2 AllocBody495_45

def AllocBody495_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody495_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody495_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody495_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody495_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 100#64)

def AllocBody495_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody495_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody495_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody495_55 : StackLang.HolProg 64 :=
.seq AllocBody495_53 AllocBody495_54

def AllocBody495_56 : StackLang.HolProg 64 :=
.seq AllocBody495_52 AllocBody495_55

def AllocBody495_57 : StackLang.HolProg 64 :=
.seq AllocBody495_51 AllocBody495_56

def AllocBody495_58 : StackLang.HolProg 64 :=
.seq AllocBody495_50 AllocBody495_57

def AllocBody495_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody495_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody495_58 AllocBody495_59

def AllocBody495_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody495_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody495_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3000#64)

def AllocBody495_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody495_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody495_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody495_67 : StackLang.HolProg 64 :=
.seq AllocBody495_65 AllocBody495_66

def AllocBody495_68 : StackLang.HolProg 64 :=
.seq AllocBody495_64 AllocBody495_67

def AllocBody495_69 : StackLang.HolProg 64 :=
.seq AllocBody495_63 AllocBody495_68

def AllocBody495_70 : StackLang.HolProg 64 :=
.seq AllocBody495_62 AllocBody495_69

def AllocBody495_71 : StackLang.HolProg 64 :=
.seq AllocBody495_61 AllocBody495_70

def AllocBody495_72 : StackLang.HolProg 64 :=
.seq AllocBody495_60 AllocBody495_71

def AllocBody495_73 : StackLang.HolProg 64 :=
.seq AllocBody495_49 AllocBody495_72

def AllocBody495_74 : StackLang.HolProg 64 :=
.seq AllocBody495_48 AllocBody495_73

def AllocBody495_75 : StackLang.HolProg 64 :=
.seq AllocBody495_47 AllocBody495_74

def AllocBody495_76 : StackLang.HolProg 64 :=
.seq AllocBody495_46 AllocBody495_75

def AllocBody495_77 : StackLang.HolProg 64 :=
.seq AllocBody495_1 AllocBody495_76

def AllocBody495_78 : StackLang.HolProg 64 :=
.seq AllocBody495_0 AllocBody495_77

def Alloc495 : Nat × StackLang.HolProg 64 := (495, AllocBody495_78)
theorem Alloc495_eq : StackAlloc.progComp (495, raw495) = Alloc495 := by
  kernel_rfl
#print axioms Alloc495_eq
end InitECandidate.Proofs.BackendStages
