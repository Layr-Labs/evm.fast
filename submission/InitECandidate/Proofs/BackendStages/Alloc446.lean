import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw446
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody446_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody446_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody446_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody446_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1345#64)

def AllocBody446_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody446_5 : StackLang.HolProg 64 :=
.seq AllocBody446_3 AllocBody446_4

def AllocBody446_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody446_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody446_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody446_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 446 3

def AllocBody446_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody446_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody446_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody446_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody446_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody446_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody446_16 : StackLang.HolProg 64 :=
.seq AllocBody446_14 AllocBody446_15

def AllocBody446_17 : StackLang.HolProg 64 :=
.seq AllocBody446_13 AllocBody446_16

def AllocBody446_18 : StackLang.HolProg 64 :=
.seq AllocBody446_12 AllocBody446_17

def AllocBody446_19 : StackLang.HolProg 64 :=
.seq AllocBody446_11 AllocBody446_18

def AllocBody446_20 : StackLang.HolProg 64 :=
.seq AllocBody446_10 AllocBody446_19

def AllocBody446_21 : StackLang.HolProg 64 :=
.seq AllocBody446_9 AllocBody446_20

def AllocBody446_22 : StackLang.HolProg 64 :=
.seq AllocBody446_8 AllocBody446_21

def AllocBody446_23 : StackLang.HolProg 64 :=
.seq AllocBody446_7 AllocBody446_22

def AllocBody446_24 : StackLang.HolProg 64 :=
.seq AllocBody446_6 AllocBody446_23

def AllocBody446_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody446_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody446_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody446_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody446_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody446_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody446_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody446_32 : StackLang.HolProg 64 :=
.seq AllocBody446_30 AllocBody446_31

def AllocBody446_33 : StackLang.HolProg 64 :=
.seq AllocBody446_29 AllocBody446_32

def AllocBody446_34 : StackLang.HolProg 64 :=
.seq AllocBody446_28 AllocBody446_33

def AllocBody446_35 : StackLang.HolProg 64 :=
.seq AllocBody446_27 AllocBody446_34

def AllocBody446_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody446_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody446_38 : StackLang.HolProg 64 :=
.seq AllocBody446_36 AllocBody446_37

def AllocBody446_39 : StackLang.HolProg 64 :=
.call (some (AllocBody446_35, 0, 446, 2)) (Sum.inl 439) (some (AllocBody446_38, 446, 3))

def AllocBody446_40 : StackLang.HolProg 64 :=
.seq AllocBody446_26 AllocBody446_39

def AllocBody446_41 : StackLang.HolProg 64 :=
.seq AllocBody446_25 AllocBody446_40

def AllocBody446_42 : StackLang.HolProg 64 :=
.seq AllocBody446_24 AllocBody446_41

def AllocBody446_43 : StackLang.HolProg 64 :=
.seq AllocBody446_5 AllocBody446_42

def AllocBody446_44 : StackLang.HolProg 64 :=
.seq AllocBody446_2 AllocBody446_43

def AllocBody446_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody446_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody446_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody446_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody446_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody446_50 : StackLang.HolProg 64 :=
.seq AllocBody446_48 AllocBody446_49

def AllocBody446_51 : StackLang.HolProg 64 :=
.seq AllocBody446_47 AllocBody446_50

def AllocBody446_52 : StackLang.HolProg 64 :=
.seq AllocBody446_46 AllocBody446_51

def AllocBody446_53 : StackLang.HolProg 64 :=
.seq AllocBody446_45 AllocBody446_52

def AllocBody446_54 : StackLang.HolProg 64 :=
.seq AllocBody446_44 AllocBody446_53

def AllocBody446_55 : StackLang.HolProg 64 :=
.seq AllocBody446_1 AllocBody446_54

def AllocBody446_56 : StackLang.HolProg 64 :=
.seq AllocBody446_0 AllocBody446_55

def Alloc446 : Nat × StackLang.HolProg 64 := (446, AllocBody446_56)
theorem Alloc446_eq : StackAlloc.progComp (446, raw446) = Alloc446 := by
  kernel_rfl
#print axioms Alloc446_eq
end InitECandidate.Proofs.BackendStages
