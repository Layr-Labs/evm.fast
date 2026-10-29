import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw95
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody95_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody95_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody95_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody95_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 41#64)

def AllocBody95_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody95_5 : StackLang.HolProg 64 :=
.seq AllocBody95_3 AllocBody95_4

def AllocBody95_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody95_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody95_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody95_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 95 3

def AllocBody95_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody95_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody95_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody95_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody95_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody95_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody95_16 : StackLang.HolProg 64 :=
.seq AllocBody95_14 AllocBody95_15

def AllocBody95_17 : StackLang.HolProg 64 :=
.seq AllocBody95_13 AllocBody95_16

def AllocBody95_18 : StackLang.HolProg 64 :=
.seq AllocBody95_12 AllocBody95_17

def AllocBody95_19 : StackLang.HolProg 64 :=
.seq AllocBody95_11 AllocBody95_18

def AllocBody95_20 : StackLang.HolProg 64 :=
.seq AllocBody95_10 AllocBody95_19

def AllocBody95_21 : StackLang.HolProg 64 :=
.seq AllocBody95_9 AllocBody95_20

def AllocBody95_22 : StackLang.HolProg 64 :=
.seq AllocBody95_8 AllocBody95_21

def AllocBody95_23 : StackLang.HolProg 64 :=
.seq AllocBody95_7 AllocBody95_22

def AllocBody95_24 : StackLang.HolProg 64 :=
.seq AllocBody95_6 AllocBody95_23

def AllocBody95_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody95_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody95_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody95_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody95_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody95_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody95_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody95_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody95_33 : StackLang.HolProg 64 :=
.seq AllocBody95_31 AllocBody95_32

def AllocBody95_34 : StackLang.HolProg 64 :=
.seq AllocBody95_30 AllocBody95_33

def AllocBody95_35 : StackLang.HolProg 64 :=
.seq AllocBody95_29 AllocBody95_34

def AllocBody95_36 : StackLang.HolProg 64 :=
.seq AllocBody95_28 AllocBody95_35

def AllocBody95_37 : StackLang.HolProg 64 :=
.seq AllocBody95_27 AllocBody95_36

def AllocBody95_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody95_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody95_40 : StackLang.HolProg 64 :=
.seq AllocBody95_38 AllocBody95_39

def AllocBody95_41 : StackLang.HolProg 64 :=
.call (some (AllocBody95_37, 0, 95, 2)) (Sum.inl 94) (some (AllocBody95_40, 95, 3))

def AllocBody95_42 : StackLang.HolProg 64 :=
.seq AllocBody95_26 AllocBody95_41

def AllocBody95_43 : StackLang.HolProg 64 :=
.seq AllocBody95_25 AllocBody95_42

def AllocBody95_44 : StackLang.HolProg 64 :=
.seq AllocBody95_24 AllocBody95_43

def AllocBody95_45 : StackLang.HolProg 64 :=
.seq AllocBody95_5 AllocBody95_44

def AllocBody95_46 : StackLang.HolProg 64 :=
.seq AllocBody95_2 AllocBody95_45

def AllocBody95_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody95_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody95_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody95_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody95_51 : StackLang.HolProg 64 :=
.seq AllocBody95_49 AllocBody95_50

def AllocBody95_52 : StackLang.HolProg 64 :=
.seq AllocBody95_48 AllocBody95_51

def AllocBody95_53 : StackLang.HolProg 64 :=
.seq AllocBody95_47 AllocBody95_52

def AllocBody95_54 : StackLang.HolProg 64 :=
.seq AllocBody95_46 AllocBody95_53

def AllocBody95_55 : StackLang.HolProg 64 :=
.seq AllocBody95_1 AllocBody95_54

def AllocBody95_56 : StackLang.HolProg 64 :=
.seq AllocBody95_0 AllocBody95_55

def Alloc95 : Nat × StackLang.HolProg 64 := (95, AllocBody95_56)
theorem Alloc95_eq : StackAlloc.progComp (95, raw95) = Alloc95 := by
  kernel_rfl
#print axioms Alloc95_eq
end InitECandidate.Proofs.BackendStages
