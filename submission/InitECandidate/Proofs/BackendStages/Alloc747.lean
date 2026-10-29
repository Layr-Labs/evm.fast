import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw747
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody747_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody747_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody747_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 288#64)

def AllocBody747_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody747_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody747_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3307#64)

def AllocBody747_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody747_7 : StackLang.HolProg 64 :=
.seq AllocBody747_5 AllocBody747_6

def AllocBody747_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody747_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody747_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody747_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 747 3

def AllocBody747_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody747_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody747_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody747_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody747_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody747_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody747_18 : StackLang.HolProg 64 :=
.seq AllocBody747_16 AllocBody747_17

def AllocBody747_19 : StackLang.HolProg 64 :=
.seq AllocBody747_15 AllocBody747_18

def AllocBody747_20 : StackLang.HolProg 64 :=
.seq AllocBody747_14 AllocBody747_19

def AllocBody747_21 : StackLang.HolProg 64 :=
.seq AllocBody747_13 AllocBody747_20

def AllocBody747_22 : StackLang.HolProg 64 :=
.seq AllocBody747_12 AllocBody747_21

def AllocBody747_23 : StackLang.HolProg 64 :=
.seq AllocBody747_11 AllocBody747_22

def AllocBody747_24 : StackLang.HolProg 64 :=
.seq AllocBody747_10 AllocBody747_23

def AllocBody747_25 : StackLang.HolProg 64 :=
.seq AllocBody747_9 AllocBody747_24

def AllocBody747_26 : StackLang.HolProg 64 :=
.seq AllocBody747_8 AllocBody747_25

def AllocBody747_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody747_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody747_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody747_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody747_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody747_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody747_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody747_34 : StackLang.HolProg 64 :=
.seq AllocBody747_32 AllocBody747_33

def AllocBody747_35 : StackLang.HolProg 64 :=
.seq AllocBody747_31 AllocBody747_34

def AllocBody747_36 : StackLang.HolProg 64 :=
.seq AllocBody747_30 AllocBody747_35

def AllocBody747_37 : StackLang.HolProg 64 :=
.seq AllocBody747_29 AllocBody747_36

def AllocBody747_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody747_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody747_40 : StackLang.HolProg 64 :=
.seq AllocBody747_38 AllocBody747_39

def AllocBody747_41 : StackLang.HolProg 64 :=
.call (some (AllocBody747_37, 0, 747, 2)) (Sum.inl 78) (some (AllocBody747_40, 747, 3))

def AllocBody747_42 : StackLang.HolProg 64 :=
.seq AllocBody747_28 AllocBody747_41

def AllocBody747_43 : StackLang.HolProg 64 :=
.seq AllocBody747_27 AllocBody747_42

def AllocBody747_44 : StackLang.HolProg 64 :=
.seq AllocBody747_26 AllocBody747_43

def AllocBody747_45 : StackLang.HolProg 64 :=
.seq AllocBody747_7 AllocBody747_44

def AllocBody747_46 : StackLang.HolProg 64 :=
.seq AllocBody747_4 AllocBody747_45

def AllocBody747_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody747_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody747_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody747_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody747_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody747_52 : StackLang.HolProg 64 :=
.seq AllocBody747_50 AllocBody747_51

def AllocBody747_53 : StackLang.HolProg 64 :=
.seq AllocBody747_49 AllocBody747_52

def AllocBody747_54 : StackLang.HolProg 64 :=
.seq AllocBody747_48 AllocBody747_53

def AllocBody747_55 : StackLang.HolProg 64 :=
.seq AllocBody747_47 AllocBody747_54

def AllocBody747_56 : StackLang.HolProg 64 :=
.seq AllocBody747_46 AllocBody747_55

def AllocBody747_57 : StackLang.HolProg 64 :=
.seq AllocBody747_3 AllocBody747_56

def AllocBody747_58 : StackLang.HolProg 64 :=
.seq AllocBody747_2 AllocBody747_57

def AllocBody747_59 : StackLang.HolProg 64 :=
.seq AllocBody747_1 AllocBody747_58

def AllocBody747_60 : StackLang.HolProg 64 :=
.seq AllocBody747_0 AllocBody747_59

def Alloc747 : Nat × StackLang.HolProg 64 := (747, AllocBody747_60)
theorem Alloc747_eq : StackAlloc.progComp (747, raw747) = Alloc747 := by
  kernel_rfl
#print axioms Alloc747_eq
end InitECandidate.Proofs.BackendStages
