import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw730
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody730_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody730_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody730_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 96#64)

def AllocBody730_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody730_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody730_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3262#64)

def AllocBody730_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody730_7 : StackLang.HolProg 64 :=
.seq AllocBody730_5 AllocBody730_6

def AllocBody730_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody730_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody730_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody730_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 730 3

def AllocBody730_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody730_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody730_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody730_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody730_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody730_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody730_18 : StackLang.HolProg 64 :=
.seq AllocBody730_16 AllocBody730_17

def AllocBody730_19 : StackLang.HolProg 64 :=
.seq AllocBody730_15 AllocBody730_18

def AllocBody730_20 : StackLang.HolProg 64 :=
.seq AllocBody730_14 AllocBody730_19

def AllocBody730_21 : StackLang.HolProg 64 :=
.seq AllocBody730_13 AllocBody730_20

def AllocBody730_22 : StackLang.HolProg 64 :=
.seq AllocBody730_12 AllocBody730_21

def AllocBody730_23 : StackLang.HolProg 64 :=
.seq AllocBody730_11 AllocBody730_22

def AllocBody730_24 : StackLang.HolProg 64 :=
.seq AllocBody730_10 AllocBody730_23

def AllocBody730_25 : StackLang.HolProg 64 :=
.seq AllocBody730_9 AllocBody730_24

def AllocBody730_26 : StackLang.HolProg 64 :=
.seq AllocBody730_8 AllocBody730_25

def AllocBody730_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody730_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody730_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody730_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody730_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody730_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody730_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody730_34 : StackLang.HolProg 64 :=
.seq AllocBody730_32 AllocBody730_33

def AllocBody730_35 : StackLang.HolProg 64 :=
.seq AllocBody730_31 AllocBody730_34

def AllocBody730_36 : StackLang.HolProg 64 :=
.seq AllocBody730_30 AllocBody730_35

def AllocBody730_37 : StackLang.HolProg 64 :=
.seq AllocBody730_29 AllocBody730_36

def AllocBody730_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody730_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody730_40 : StackLang.HolProg 64 :=
.seq AllocBody730_38 AllocBody730_39

def AllocBody730_41 : StackLang.HolProg 64 :=
.call (some (AllocBody730_37, 0, 730, 2)) (Sum.inl 78) (some (AllocBody730_40, 730, 3))

def AllocBody730_42 : StackLang.HolProg 64 :=
.seq AllocBody730_28 AllocBody730_41

def AllocBody730_43 : StackLang.HolProg 64 :=
.seq AllocBody730_27 AllocBody730_42

def AllocBody730_44 : StackLang.HolProg 64 :=
.seq AllocBody730_26 AllocBody730_43

def AllocBody730_45 : StackLang.HolProg 64 :=
.seq AllocBody730_7 AllocBody730_44

def AllocBody730_46 : StackLang.HolProg 64 :=
.seq AllocBody730_4 AllocBody730_45

def AllocBody730_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody730_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody730_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody730_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody730_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody730_52 : StackLang.HolProg 64 :=
.seq AllocBody730_50 AllocBody730_51

def AllocBody730_53 : StackLang.HolProg 64 :=
.seq AllocBody730_49 AllocBody730_52

def AllocBody730_54 : StackLang.HolProg 64 :=
.seq AllocBody730_48 AllocBody730_53

def AllocBody730_55 : StackLang.HolProg 64 :=
.seq AllocBody730_47 AllocBody730_54

def AllocBody730_56 : StackLang.HolProg 64 :=
.seq AllocBody730_46 AllocBody730_55

def AllocBody730_57 : StackLang.HolProg 64 :=
.seq AllocBody730_3 AllocBody730_56

def AllocBody730_58 : StackLang.HolProg 64 :=
.seq AllocBody730_2 AllocBody730_57

def AllocBody730_59 : StackLang.HolProg 64 :=
.seq AllocBody730_1 AllocBody730_58

def AllocBody730_60 : StackLang.HolProg 64 :=
.seq AllocBody730_0 AllocBody730_59

def Alloc730 : Nat × StackLang.HolProg 64 := (730, AllocBody730_60)
theorem Alloc730_eq : StackAlloc.progComp (730, raw730) = Alloc730 := by
  kernel_rfl
#print axioms Alloc730_eq
end InitECandidate.Proofs.BackendStages
