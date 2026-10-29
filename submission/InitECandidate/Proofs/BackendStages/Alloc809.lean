import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw809
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody809_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody809_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody809_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody809_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3986#64)

def AllocBody809_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody809_5 : StackLang.HolProg 64 :=
.seq AllocBody809_3 AllocBody809_4

def AllocBody809_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody809_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody809_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody809_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 809 3

def AllocBody809_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody809_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody809_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody809_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody809_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody809_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody809_16 : StackLang.HolProg 64 :=
.seq AllocBody809_14 AllocBody809_15

def AllocBody809_17 : StackLang.HolProg 64 :=
.seq AllocBody809_13 AllocBody809_16

def AllocBody809_18 : StackLang.HolProg 64 :=
.seq AllocBody809_12 AllocBody809_17

def AllocBody809_19 : StackLang.HolProg 64 :=
.seq AllocBody809_11 AllocBody809_18

def AllocBody809_20 : StackLang.HolProg 64 :=
.seq AllocBody809_10 AllocBody809_19

def AllocBody809_21 : StackLang.HolProg 64 :=
.seq AllocBody809_9 AllocBody809_20

def AllocBody809_22 : StackLang.HolProg 64 :=
.seq AllocBody809_8 AllocBody809_21

def AllocBody809_23 : StackLang.HolProg 64 :=
.seq AllocBody809_7 AllocBody809_22

def AllocBody809_24 : StackLang.HolProg 64 :=
.seq AllocBody809_6 AllocBody809_23

def AllocBody809_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody809_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody809_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody809_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody809_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody809_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody809_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody809_32 : StackLang.HolProg 64 :=
.seq AllocBody809_30 AllocBody809_31

def AllocBody809_33 : StackLang.HolProg 64 :=
.seq AllocBody809_29 AllocBody809_32

def AllocBody809_34 : StackLang.HolProg 64 :=
.seq AllocBody809_28 AllocBody809_33

def AllocBody809_35 : StackLang.HolProg 64 :=
.seq AllocBody809_27 AllocBody809_34

def AllocBody809_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody809_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody809_38 : StackLang.HolProg 64 :=
.seq AllocBody809_36 AllocBody809_37

def AllocBody809_39 : StackLang.HolProg 64 :=
.call (some (AllocBody809_35, 0, 809, 2)) (Sum.inl 704) (some (AllocBody809_38, 809, 3))

def AllocBody809_40 : StackLang.HolProg 64 :=
.seq AllocBody809_26 AllocBody809_39

def AllocBody809_41 : StackLang.HolProg 64 :=
.seq AllocBody809_25 AllocBody809_40

def AllocBody809_42 : StackLang.HolProg 64 :=
.seq AllocBody809_24 AllocBody809_41

def AllocBody809_43 : StackLang.HolProg 64 :=
.seq AllocBody809_5 AllocBody809_42

def AllocBody809_44 : StackLang.HolProg 64 :=
.seq AllocBody809_2 AllocBody809_43

def AllocBody809_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody809_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody809_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody809_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody809_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody809_50 : StackLang.HolProg 64 :=
.seq AllocBody809_48 AllocBody809_49

def AllocBody809_51 : StackLang.HolProg 64 :=
.seq AllocBody809_47 AllocBody809_50

def AllocBody809_52 : StackLang.HolProg 64 :=
.seq AllocBody809_46 AllocBody809_51

def AllocBody809_53 : StackLang.HolProg 64 :=
.seq AllocBody809_45 AllocBody809_52

def AllocBody809_54 : StackLang.HolProg 64 :=
.seq AllocBody809_44 AllocBody809_53

def AllocBody809_55 : StackLang.HolProg 64 :=
.seq AllocBody809_1 AllocBody809_54

def AllocBody809_56 : StackLang.HolProg 64 :=
.seq AllocBody809_0 AllocBody809_55

def Alloc809 : Nat × StackLang.HolProg 64 := (809, AllocBody809_56)
theorem Alloc809_eq : StackAlloc.progComp (809, raw809) = Alloc809 := by
  kernel_rfl
#print axioms Alloc809_eq
end InitECandidate.Proofs.BackendStages
