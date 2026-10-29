import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw755
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody755_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody755_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody755_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 576#64)

def AllocBody755_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody755_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody755_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3371#64)

def AllocBody755_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody755_7 : StackLang.HolProg 64 :=
.seq AllocBody755_5 AllocBody755_6

def AllocBody755_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody755_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody755_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody755_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 755 3

def AllocBody755_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody755_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody755_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody755_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody755_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody755_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody755_18 : StackLang.HolProg 64 :=
.seq AllocBody755_16 AllocBody755_17

def AllocBody755_19 : StackLang.HolProg 64 :=
.seq AllocBody755_15 AllocBody755_18

def AllocBody755_20 : StackLang.HolProg 64 :=
.seq AllocBody755_14 AllocBody755_19

def AllocBody755_21 : StackLang.HolProg 64 :=
.seq AllocBody755_13 AllocBody755_20

def AllocBody755_22 : StackLang.HolProg 64 :=
.seq AllocBody755_12 AllocBody755_21

def AllocBody755_23 : StackLang.HolProg 64 :=
.seq AllocBody755_11 AllocBody755_22

def AllocBody755_24 : StackLang.HolProg 64 :=
.seq AllocBody755_10 AllocBody755_23

def AllocBody755_25 : StackLang.HolProg 64 :=
.seq AllocBody755_9 AllocBody755_24

def AllocBody755_26 : StackLang.HolProg 64 :=
.seq AllocBody755_8 AllocBody755_25

def AllocBody755_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody755_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody755_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody755_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody755_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody755_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody755_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody755_34 : StackLang.HolProg 64 :=
.seq AllocBody755_32 AllocBody755_33

def AllocBody755_35 : StackLang.HolProg 64 :=
.seq AllocBody755_31 AllocBody755_34

def AllocBody755_36 : StackLang.HolProg 64 :=
.seq AllocBody755_30 AllocBody755_35

def AllocBody755_37 : StackLang.HolProg 64 :=
.seq AllocBody755_29 AllocBody755_36

def AllocBody755_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody755_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody755_40 : StackLang.HolProg 64 :=
.seq AllocBody755_38 AllocBody755_39

def AllocBody755_41 : StackLang.HolProg 64 :=
.call (some (AllocBody755_37, 0, 755, 2)) (Sum.inl 77) (some (AllocBody755_40, 755, 3))

def AllocBody755_42 : StackLang.HolProg 64 :=
.seq AllocBody755_28 AllocBody755_41

def AllocBody755_43 : StackLang.HolProg 64 :=
.seq AllocBody755_27 AllocBody755_42

def AllocBody755_44 : StackLang.HolProg 64 :=
.seq AllocBody755_26 AllocBody755_43

def AllocBody755_45 : StackLang.HolProg 64 :=
.seq AllocBody755_7 AllocBody755_44

def AllocBody755_46 : StackLang.HolProg 64 :=
.seq AllocBody755_4 AllocBody755_45

def AllocBody755_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody755_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody755_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody755_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody755_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody755_52 : StackLang.HolProg 64 :=
.seq AllocBody755_50 AllocBody755_51

def AllocBody755_53 : StackLang.HolProg 64 :=
.seq AllocBody755_49 AllocBody755_52

def AllocBody755_54 : StackLang.HolProg 64 :=
.seq AllocBody755_48 AllocBody755_53

def AllocBody755_55 : StackLang.HolProg 64 :=
.seq AllocBody755_47 AllocBody755_54

def AllocBody755_56 : StackLang.HolProg 64 :=
.seq AllocBody755_46 AllocBody755_55

def AllocBody755_57 : StackLang.HolProg 64 :=
.seq AllocBody755_3 AllocBody755_56

def AllocBody755_58 : StackLang.HolProg 64 :=
.seq AllocBody755_2 AllocBody755_57

def AllocBody755_59 : StackLang.HolProg 64 :=
.seq AllocBody755_1 AllocBody755_58

def AllocBody755_60 : StackLang.HolProg 64 :=
.seq AllocBody755_0 AllocBody755_59

def Alloc755 : Nat × StackLang.HolProg 64 := (755, AllocBody755_60)
theorem Alloc755_eq : StackAlloc.progComp (755, raw755) = Alloc755 := by
  kernel_rfl
#print axioms Alloc755_eq
end InitECandidate.Proofs.BackendStages
