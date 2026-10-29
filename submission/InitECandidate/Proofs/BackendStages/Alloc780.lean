import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw780
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody780_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody780_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody780_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 288#64)

def AllocBody780_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody780_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody780_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3546#64)

def AllocBody780_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody780_7 : StackLang.HolProg 64 :=
.seq AllocBody780_5 AllocBody780_6

def AllocBody780_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody780_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody780_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody780_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 780 3

def AllocBody780_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody780_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody780_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody780_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody780_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody780_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody780_18 : StackLang.HolProg 64 :=
.seq AllocBody780_16 AllocBody780_17

def AllocBody780_19 : StackLang.HolProg 64 :=
.seq AllocBody780_15 AllocBody780_18

def AllocBody780_20 : StackLang.HolProg 64 :=
.seq AllocBody780_14 AllocBody780_19

def AllocBody780_21 : StackLang.HolProg 64 :=
.seq AllocBody780_13 AllocBody780_20

def AllocBody780_22 : StackLang.HolProg 64 :=
.seq AllocBody780_12 AllocBody780_21

def AllocBody780_23 : StackLang.HolProg 64 :=
.seq AllocBody780_11 AllocBody780_22

def AllocBody780_24 : StackLang.HolProg 64 :=
.seq AllocBody780_10 AllocBody780_23

def AllocBody780_25 : StackLang.HolProg 64 :=
.seq AllocBody780_9 AllocBody780_24

def AllocBody780_26 : StackLang.HolProg 64 :=
.seq AllocBody780_8 AllocBody780_25

def AllocBody780_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody780_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody780_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody780_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody780_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody780_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody780_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody780_34 : StackLang.HolProg 64 :=
.seq AllocBody780_32 AllocBody780_33

def AllocBody780_35 : StackLang.HolProg 64 :=
.seq AllocBody780_31 AllocBody780_34

def AllocBody780_36 : StackLang.HolProg 64 :=
.seq AllocBody780_30 AllocBody780_35

def AllocBody780_37 : StackLang.HolProg 64 :=
.seq AllocBody780_29 AllocBody780_36

def AllocBody780_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody780_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody780_40 : StackLang.HolProg 64 :=
.seq AllocBody780_38 AllocBody780_39

def AllocBody780_41 : StackLang.HolProg 64 :=
.call (some (AllocBody780_37, 0, 780, 2)) (Sum.inl 77) (some (AllocBody780_40, 780, 3))

def AllocBody780_42 : StackLang.HolProg 64 :=
.seq AllocBody780_28 AllocBody780_41

def AllocBody780_43 : StackLang.HolProg 64 :=
.seq AllocBody780_27 AllocBody780_42

def AllocBody780_44 : StackLang.HolProg 64 :=
.seq AllocBody780_26 AllocBody780_43

def AllocBody780_45 : StackLang.HolProg 64 :=
.seq AllocBody780_7 AllocBody780_44

def AllocBody780_46 : StackLang.HolProg 64 :=
.seq AllocBody780_4 AllocBody780_45

def AllocBody780_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody780_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody780_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody780_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody780_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody780_52 : StackLang.HolProg 64 :=
.seq AllocBody780_50 AllocBody780_51

def AllocBody780_53 : StackLang.HolProg 64 :=
.seq AllocBody780_49 AllocBody780_52

def AllocBody780_54 : StackLang.HolProg 64 :=
.seq AllocBody780_48 AllocBody780_53

def AllocBody780_55 : StackLang.HolProg 64 :=
.seq AllocBody780_47 AllocBody780_54

def AllocBody780_56 : StackLang.HolProg 64 :=
.seq AllocBody780_46 AllocBody780_55

def AllocBody780_57 : StackLang.HolProg 64 :=
.seq AllocBody780_3 AllocBody780_56

def AllocBody780_58 : StackLang.HolProg 64 :=
.seq AllocBody780_2 AllocBody780_57

def AllocBody780_59 : StackLang.HolProg 64 :=
.seq AllocBody780_1 AllocBody780_58

def AllocBody780_60 : StackLang.HolProg 64 :=
.seq AllocBody780_0 AllocBody780_59

def Alloc780 : Nat × StackLang.HolProg 64 := (780, AllocBody780_60)
theorem Alloc780_eq : StackAlloc.progComp (780, raw780) = Alloc780 := by
  kernel_rfl
#print axioms Alloc780_eq
end InitECandidate.Proofs.BackendStages
