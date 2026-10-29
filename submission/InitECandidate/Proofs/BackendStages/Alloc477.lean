import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw477
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody477_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody477_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody477_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody477_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody477_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody477_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody477_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody477_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1498#64)

def AllocBody477_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody477_9 : StackLang.HolProg 64 :=
.seq AllocBody477_7 AllocBody477_8

def AllocBody477_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody477_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody477_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody477_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 477 3

def AllocBody477_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody477_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody477_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody477_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody477_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody477_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody477_20 : StackLang.HolProg 64 :=
.seq AllocBody477_18 AllocBody477_19

def AllocBody477_21 : StackLang.HolProg 64 :=
.seq AllocBody477_17 AllocBody477_20

def AllocBody477_22 : StackLang.HolProg 64 :=
.seq AllocBody477_16 AllocBody477_21

def AllocBody477_23 : StackLang.HolProg 64 :=
.seq AllocBody477_15 AllocBody477_22

def AllocBody477_24 : StackLang.HolProg 64 :=
.seq AllocBody477_14 AllocBody477_23

def AllocBody477_25 : StackLang.HolProg 64 :=
.seq AllocBody477_13 AllocBody477_24

def AllocBody477_26 : StackLang.HolProg 64 :=
.seq AllocBody477_12 AllocBody477_25

def AllocBody477_27 : StackLang.HolProg 64 :=
.seq AllocBody477_11 AllocBody477_26

def AllocBody477_28 : StackLang.HolProg 64 :=
.seq AllocBody477_10 AllocBody477_27

def AllocBody477_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody477_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody477_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody477_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody477_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody477_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody477_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody477_36 : StackLang.HolProg 64 :=
.seq AllocBody477_34 AllocBody477_35

def AllocBody477_37 : StackLang.HolProg 64 :=
.seq AllocBody477_33 AllocBody477_36

def AllocBody477_38 : StackLang.HolProg 64 :=
.seq AllocBody477_32 AllocBody477_37

def AllocBody477_39 : StackLang.HolProg 64 :=
.seq AllocBody477_31 AllocBody477_38

def AllocBody477_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody477_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody477_42 : StackLang.HolProg 64 :=
.seq AllocBody477_40 AllocBody477_41

def AllocBody477_43 : StackLang.HolProg 64 :=
.call (some (AllocBody477_39, 0, 477, 2)) (Sum.inl 476) (some (AllocBody477_42, 477, 3))

def AllocBody477_44 : StackLang.HolProg 64 :=
.seq AllocBody477_30 AllocBody477_43

def AllocBody477_45 : StackLang.HolProg 64 :=
.seq AllocBody477_29 AllocBody477_44

def AllocBody477_46 : StackLang.HolProg 64 :=
.seq AllocBody477_28 AllocBody477_45

def AllocBody477_47 : StackLang.HolProg 64 :=
.seq AllocBody477_9 AllocBody477_46

def AllocBody477_48 : StackLang.HolProg 64 :=
.seq AllocBody477_6 AllocBody477_47

def AllocBody477_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody477_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody477_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody477_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody477_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody477_54 : StackLang.HolProg 64 :=
.seq AllocBody477_52 AllocBody477_53

def AllocBody477_55 : StackLang.HolProg 64 :=
.seq AllocBody477_51 AllocBody477_54

def AllocBody477_56 : StackLang.HolProg 64 :=
.seq AllocBody477_50 AllocBody477_55

def AllocBody477_57 : StackLang.HolProg 64 :=
.seq AllocBody477_49 AllocBody477_56

def AllocBody477_58 : StackLang.HolProg 64 :=
.seq AllocBody477_48 AllocBody477_57

def AllocBody477_59 : StackLang.HolProg 64 :=
.seq AllocBody477_5 AllocBody477_58

def AllocBody477_60 : StackLang.HolProg 64 :=
.seq AllocBody477_4 AllocBody477_59

def AllocBody477_61 : StackLang.HolProg 64 :=
.seq AllocBody477_3 AllocBody477_60

def AllocBody477_62 : StackLang.HolProg 64 :=
.seq AllocBody477_2 AllocBody477_61

def AllocBody477_63 : StackLang.HolProg 64 :=
.seq AllocBody477_1 AllocBody477_62

def AllocBody477_64 : StackLang.HolProg 64 :=
.seq AllocBody477_0 AllocBody477_63

def Alloc477 : Nat × StackLang.HolProg 64 := (477, AllocBody477_64)
theorem Alloc477_eq : StackAlloc.progComp (477, raw477) = Alloc477 := by
  kernel_rfl
#print axioms Alloc477_eq
end InitECandidate.Proofs.BackendStages
