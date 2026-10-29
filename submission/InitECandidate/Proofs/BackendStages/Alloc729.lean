import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw729
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody729_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody729_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody729_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 96#64)

def AllocBody729_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody729_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody729_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3261#64)

def AllocBody729_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody729_7 : StackLang.HolProg 64 :=
.seq AllocBody729_5 AllocBody729_6

def AllocBody729_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody729_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody729_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody729_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 729 3

def AllocBody729_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody729_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody729_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody729_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody729_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody729_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody729_18 : StackLang.HolProg 64 :=
.seq AllocBody729_16 AllocBody729_17

def AllocBody729_19 : StackLang.HolProg 64 :=
.seq AllocBody729_15 AllocBody729_18

def AllocBody729_20 : StackLang.HolProg 64 :=
.seq AllocBody729_14 AllocBody729_19

def AllocBody729_21 : StackLang.HolProg 64 :=
.seq AllocBody729_13 AllocBody729_20

def AllocBody729_22 : StackLang.HolProg 64 :=
.seq AllocBody729_12 AllocBody729_21

def AllocBody729_23 : StackLang.HolProg 64 :=
.seq AllocBody729_11 AllocBody729_22

def AllocBody729_24 : StackLang.HolProg 64 :=
.seq AllocBody729_10 AllocBody729_23

def AllocBody729_25 : StackLang.HolProg 64 :=
.seq AllocBody729_9 AllocBody729_24

def AllocBody729_26 : StackLang.HolProg 64 :=
.seq AllocBody729_8 AllocBody729_25

def AllocBody729_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody729_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody729_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody729_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody729_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody729_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody729_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody729_34 : StackLang.HolProg 64 :=
.seq AllocBody729_32 AllocBody729_33

def AllocBody729_35 : StackLang.HolProg 64 :=
.seq AllocBody729_31 AllocBody729_34

def AllocBody729_36 : StackLang.HolProg 64 :=
.seq AllocBody729_30 AllocBody729_35

def AllocBody729_37 : StackLang.HolProg 64 :=
.seq AllocBody729_29 AllocBody729_36

def AllocBody729_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody729_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody729_40 : StackLang.HolProg 64 :=
.seq AllocBody729_38 AllocBody729_39

def AllocBody729_41 : StackLang.HolProg 64 :=
.call (some (AllocBody729_37, 0, 729, 2)) (Sum.inl 77) (some (AllocBody729_40, 729, 3))

def AllocBody729_42 : StackLang.HolProg 64 :=
.seq AllocBody729_28 AllocBody729_41

def AllocBody729_43 : StackLang.HolProg 64 :=
.seq AllocBody729_27 AllocBody729_42

def AllocBody729_44 : StackLang.HolProg 64 :=
.seq AllocBody729_26 AllocBody729_43

def AllocBody729_45 : StackLang.HolProg 64 :=
.seq AllocBody729_7 AllocBody729_44

def AllocBody729_46 : StackLang.HolProg 64 :=
.seq AllocBody729_4 AllocBody729_45

def AllocBody729_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody729_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody729_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody729_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody729_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody729_52 : StackLang.HolProg 64 :=
.seq AllocBody729_50 AllocBody729_51

def AllocBody729_53 : StackLang.HolProg 64 :=
.seq AllocBody729_49 AllocBody729_52

def AllocBody729_54 : StackLang.HolProg 64 :=
.seq AllocBody729_48 AllocBody729_53

def AllocBody729_55 : StackLang.HolProg 64 :=
.seq AllocBody729_47 AllocBody729_54

def AllocBody729_56 : StackLang.HolProg 64 :=
.seq AllocBody729_46 AllocBody729_55

def AllocBody729_57 : StackLang.HolProg 64 :=
.seq AllocBody729_3 AllocBody729_56

def AllocBody729_58 : StackLang.HolProg 64 :=
.seq AllocBody729_2 AllocBody729_57

def AllocBody729_59 : StackLang.HolProg 64 :=
.seq AllocBody729_1 AllocBody729_58

def AllocBody729_60 : StackLang.HolProg 64 :=
.seq AllocBody729_0 AllocBody729_59

def Alloc729 : Nat × StackLang.HolProg 64 := (729, AllocBody729_60)
theorem Alloc729_eq : StackAlloc.progComp (729, raw729) = Alloc729 := by
  kernel_rfl
#print axioms Alloc729_eq
end InitECandidate.Proofs.BackendStages
