import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw746
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody746_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody746_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody746_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 288#64)

def AllocBody746_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody746_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody746_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3306#64)

def AllocBody746_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody746_7 : StackLang.HolProg 64 :=
.seq AllocBody746_5 AllocBody746_6

def AllocBody746_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody746_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody746_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody746_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 746 3

def AllocBody746_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody746_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody746_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody746_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody746_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody746_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody746_18 : StackLang.HolProg 64 :=
.seq AllocBody746_16 AllocBody746_17

def AllocBody746_19 : StackLang.HolProg 64 :=
.seq AllocBody746_15 AllocBody746_18

def AllocBody746_20 : StackLang.HolProg 64 :=
.seq AllocBody746_14 AllocBody746_19

def AllocBody746_21 : StackLang.HolProg 64 :=
.seq AllocBody746_13 AllocBody746_20

def AllocBody746_22 : StackLang.HolProg 64 :=
.seq AllocBody746_12 AllocBody746_21

def AllocBody746_23 : StackLang.HolProg 64 :=
.seq AllocBody746_11 AllocBody746_22

def AllocBody746_24 : StackLang.HolProg 64 :=
.seq AllocBody746_10 AllocBody746_23

def AllocBody746_25 : StackLang.HolProg 64 :=
.seq AllocBody746_9 AllocBody746_24

def AllocBody746_26 : StackLang.HolProg 64 :=
.seq AllocBody746_8 AllocBody746_25

def AllocBody746_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody746_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody746_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody746_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody746_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody746_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody746_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody746_34 : StackLang.HolProg 64 :=
.seq AllocBody746_32 AllocBody746_33

def AllocBody746_35 : StackLang.HolProg 64 :=
.seq AllocBody746_31 AllocBody746_34

def AllocBody746_36 : StackLang.HolProg 64 :=
.seq AllocBody746_30 AllocBody746_35

def AllocBody746_37 : StackLang.HolProg 64 :=
.seq AllocBody746_29 AllocBody746_36

def AllocBody746_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody746_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody746_40 : StackLang.HolProg 64 :=
.seq AllocBody746_38 AllocBody746_39

def AllocBody746_41 : StackLang.HolProg 64 :=
.call (some (AllocBody746_37, 0, 746, 2)) (Sum.inl 77) (some (AllocBody746_40, 746, 3))

def AllocBody746_42 : StackLang.HolProg 64 :=
.seq AllocBody746_28 AllocBody746_41

def AllocBody746_43 : StackLang.HolProg 64 :=
.seq AllocBody746_27 AllocBody746_42

def AllocBody746_44 : StackLang.HolProg 64 :=
.seq AllocBody746_26 AllocBody746_43

def AllocBody746_45 : StackLang.HolProg 64 :=
.seq AllocBody746_7 AllocBody746_44

def AllocBody746_46 : StackLang.HolProg 64 :=
.seq AllocBody746_4 AllocBody746_45

def AllocBody746_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody746_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody746_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody746_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody746_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody746_52 : StackLang.HolProg 64 :=
.seq AllocBody746_50 AllocBody746_51

def AllocBody746_53 : StackLang.HolProg 64 :=
.seq AllocBody746_49 AllocBody746_52

def AllocBody746_54 : StackLang.HolProg 64 :=
.seq AllocBody746_48 AllocBody746_53

def AllocBody746_55 : StackLang.HolProg 64 :=
.seq AllocBody746_47 AllocBody746_54

def AllocBody746_56 : StackLang.HolProg 64 :=
.seq AllocBody746_46 AllocBody746_55

def AllocBody746_57 : StackLang.HolProg 64 :=
.seq AllocBody746_3 AllocBody746_56

def AllocBody746_58 : StackLang.HolProg 64 :=
.seq AllocBody746_2 AllocBody746_57

def AllocBody746_59 : StackLang.HolProg 64 :=
.seq AllocBody746_1 AllocBody746_58

def AllocBody746_60 : StackLang.HolProg 64 :=
.seq AllocBody746_0 AllocBody746_59

def Alloc746 : Nat × StackLang.HolProg 64 := (746, AllocBody746_60)
theorem Alloc746_eq : StackAlloc.progComp (746, raw746) = Alloc746 := by
  kernel_rfl
#print axioms Alloc746_eq
end InitECandidate.Proofs.BackendStages
