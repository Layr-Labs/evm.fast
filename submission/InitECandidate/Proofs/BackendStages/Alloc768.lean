import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw768
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody768_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody768_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody768_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 144#64)

def AllocBody768_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody768_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody768_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3454#64)

def AllocBody768_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody768_7 : StackLang.HolProg 64 :=
.seq AllocBody768_5 AllocBody768_6

def AllocBody768_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody768_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody768_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody768_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 768 3

def AllocBody768_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody768_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody768_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody768_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody768_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody768_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody768_18 : StackLang.HolProg 64 :=
.seq AllocBody768_16 AllocBody768_17

def AllocBody768_19 : StackLang.HolProg 64 :=
.seq AllocBody768_15 AllocBody768_18

def AllocBody768_20 : StackLang.HolProg 64 :=
.seq AllocBody768_14 AllocBody768_19

def AllocBody768_21 : StackLang.HolProg 64 :=
.seq AllocBody768_13 AllocBody768_20

def AllocBody768_22 : StackLang.HolProg 64 :=
.seq AllocBody768_12 AllocBody768_21

def AllocBody768_23 : StackLang.HolProg 64 :=
.seq AllocBody768_11 AllocBody768_22

def AllocBody768_24 : StackLang.HolProg 64 :=
.seq AllocBody768_10 AllocBody768_23

def AllocBody768_25 : StackLang.HolProg 64 :=
.seq AllocBody768_9 AllocBody768_24

def AllocBody768_26 : StackLang.HolProg 64 :=
.seq AllocBody768_8 AllocBody768_25

def AllocBody768_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody768_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody768_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody768_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody768_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody768_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody768_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody768_34 : StackLang.HolProg 64 :=
.seq AllocBody768_32 AllocBody768_33

def AllocBody768_35 : StackLang.HolProg 64 :=
.seq AllocBody768_31 AllocBody768_34

def AllocBody768_36 : StackLang.HolProg 64 :=
.seq AllocBody768_30 AllocBody768_35

def AllocBody768_37 : StackLang.HolProg 64 :=
.seq AllocBody768_29 AllocBody768_36

def AllocBody768_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody768_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody768_40 : StackLang.HolProg 64 :=
.seq AllocBody768_38 AllocBody768_39

def AllocBody768_41 : StackLang.HolProg 64 :=
.call (some (AllocBody768_37, 0, 768, 2)) (Sum.inl 77) (some (AllocBody768_40, 768, 3))

def AllocBody768_42 : StackLang.HolProg 64 :=
.seq AllocBody768_28 AllocBody768_41

def AllocBody768_43 : StackLang.HolProg 64 :=
.seq AllocBody768_27 AllocBody768_42

def AllocBody768_44 : StackLang.HolProg 64 :=
.seq AllocBody768_26 AllocBody768_43

def AllocBody768_45 : StackLang.HolProg 64 :=
.seq AllocBody768_7 AllocBody768_44

def AllocBody768_46 : StackLang.HolProg 64 :=
.seq AllocBody768_4 AllocBody768_45

def AllocBody768_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody768_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody768_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody768_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody768_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody768_52 : StackLang.HolProg 64 :=
.seq AllocBody768_50 AllocBody768_51

def AllocBody768_53 : StackLang.HolProg 64 :=
.seq AllocBody768_49 AllocBody768_52

def AllocBody768_54 : StackLang.HolProg 64 :=
.seq AllocBody768_48 AllocBody768_53

def AllocBody768_55 : StackLang.HolProg 64 :=
.seq AllocBody768_47 AllocBody768_54

def AllocBody768_56 : StackLang.HolProg 64 :=
.seq AllocBody768_46 AllocBody768_55

def AllocBody768_57 : StackLang.HolProg 64 :=
.seq AllocBody768_3 AllocBody768_56

def AllocBody768_58 : StackLang.HolProg 64 :=
.seq AllocBody768_2 AllocBody768_57

def AllocBody768_59 : StackLang.HolProg 64 :=
.seq AllocBody768_1 AllocBody768_58

def AllocBody768_60 : StackLang.HolProg 64 :=
.seq AllocBody768_0 AllocBody768_59

def Alloc768 : Nat × StackLang.HolProg 64 := (768, AllocBody768_60)
theorem Alloc768_eq : StackAlloc.progComp (768, raw768) = Alloc768 := by
  kernel_rfl
#print axioms Alloc768_eq
end InitECandidate.Proofs.BackendStages
