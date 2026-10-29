import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw130
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody130_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody130_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody130_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody130_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 82#64)

def AllocBody130_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody130_5 : StackLang.HolProg 64 :=
.seq AllocBody130_3 AllocBody130_4

def AllocBody130_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody130_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody130_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody130_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 130 3

def AllocBody130_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody130_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody130_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody130_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody130_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody130_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody130_16 : StackLang.HolProg 64 :=
.seq AllocBody130_14 AllocBody130_15

def AllocBody130_17 : StackLang.HolProg 64 :=
.seq AllocBody130_13 AllocBody130_16

def AllocBody130_18 : StackLang.HolProg 64 :=
.seq AllocBody130_12 AllocBody130_17

def AllocBody130_19 : StackLang.HolProg 64 :=
.seq AllocBody130_11 AllocBody130_18

def AllocBody130_20 : StackLang.HolProg 64 :=
.seq AllocBody130_10 AllocBody130_19

def AllocBody130_21 : StackLang.HolProg 64 :=
.seq AllocBody130_9 AllocBody130_20

def AllocBody130_22 : StackLang.HolProg 64 :=
.seq AllocBody130_8 AllocBody130_21

def AllocBody130_23 : StackLang.HolProg 64 :=
.seq AllocBody130_7 AllocBody130_22

def AllocBody130_24 : StackLang.HolProg 64 :=
.seq AllocBody130_6 AllocBody130_23

def AllocBody130_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody130_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody130_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody130_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody130_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody130_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody130_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody130_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody130_33 : StackLang.HolProg 64 :=
.seq AllocBody130_31 AllocBody130_32

def AllocBody130_34 : StackLang.HolProg 64 :=
.seq AllocBody130_30 AllocBody130_33

def AllocBody130_35 : StackLang.HolProg 64 :=
.seq AllocBody130_29 AllocBody130_34

def AllocBody130_36 : StackLang.HolProg 64 :=
.seq AllocBody130_28 AllocBody130_35

def AllocBody130_37 : StackLang.HolProg 64 :=
.seq AllocBody130_27 AllocBody130_36

def AllocBody130_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody130_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody130_40 : StackLang.HolProg 64 :=
.seq AllocBody130_38 AllocBody130_39

def AllocBody130_41 : StackLang.HolProg 64 :=
.call (some (AllocBody130_37, 0, 130, 2)) (Sum.inl 129) (some (AllocBody130_40, 130, 3))

def AllocBody130_42 : StackLang.HolProg 64 :=
.seq AllocBody130_26 AllocBody130_41

def AllocBody130_43 : StackLang.HolProg 64 :=
.seq AllocBody130_25 AllocBody130_42

def AllocBody130_44 : StackLang.HolProg 64 :=
.seq AllocBody130_24 AllocBody130_43

def AllocBody130_45 : StackLang.HolProg 64 :=
.seq AllocBody130_5 AllocBody130_44

def AllocBody130_46 : StackLang.HolProg 64 :=
.seq AllocBody130_2 AllocBody130_45

def AllocBody130_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody130_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody130_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody130_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody130_51 : StackLang.HolProg 64 :=
.seq AllocBody130_49 AllocBody130_50

def AllocBody130_52 : StackLang.HolProg 64 :=
.seq AllocBody130_48 AllocBody130_51

def AllocBody130_53 : StackLang.HolProg 64 :=
.seq AllocBody130_47 AllocBody130_52

def AllocBody130_54 : StackLang.HolProg 64 :=
.seq AllocBody130_46 AllocBody130_53

def AllocBody130_55 : StackLang.HolProg 64 :=
.seq AllocBody130_1 AllocBody130_54

def AllocBody130_56 : StackLang.HolProg 64 :=
.seq AllocBody130_0 AllocBody130_55

def Alloc130 : Nat × StackLang.HolProg 64 := (130, AllocBody130_56)
theorem Alloc130_eq : StackAlloc.progComp (130, raw130) = Alloc130 := by
  kernel_rfl
#print axioms Alloc130_eq
end InitECandidate.Proofs.BackendStages
