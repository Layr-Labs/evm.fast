import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw467
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody467_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody467_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody467_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def AllocBody467_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody467_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody467_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1493#64)

def AllocBody467_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody467_7 : StackLang.HolProg 64 :=
.seq AllocBody467_5 AllocBody467_6

def AllocBody467_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody467_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody467_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody467_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 467 3

def AllocBody467_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody467_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody467_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody467_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody467_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody467_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody467_18 : StackLang.HolProg 64 :=
.seq AllocBody467_16 AllocBody467_17

def AllocBody467_19 : StackLang.HolProg 64 :=
.seq AllocBody467_15 AllocBody467_18

def AllocBody467_20 : StackLang.HolProg 64 :=
.seq AllocBody467_14 AllocBody467_19

def AllocBody467_21 : StackLang.HolProg 64 :=
.seq AllocBody467_13 AllocBody467_20

def AllocBody467_22 : StackLang.HolProg 64 :=
.seq AllocBody467_12 AllocBody467_21

def AllocBody467_23 : StackLang.HolProg 64 :=
.seq AllocBody467_11 AllocBody467_22

def AllocBody467_24 : StackLang.HolProg 64 :=
.seq AllocBody467_10 AllocBody467_23

def AllocBody467_25 : StackLang.HolProg 64 :=
.seq AllocBody467_9 AllocBody467_24

def AllocBody467_26 : StackLang.HolProg 64 :=
.seq AllocBody467_8 AllocBody467_25

def AllocBody467_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody467_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody467_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody467_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody467_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody467_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody467_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody467_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody467_35 : StackLang.HolProg 64 :=
.seq AllocBody467_33 AllocBody467_34

def AllocBody467_36 : StackLang.HolProg 64 :=
.seq AllocBody467_32 AllocBody467_35

def AllocBody467_37 : StackLang.HolProg 64 :=
.seq AllocBody467_31 AllocBody467_36

def AllocBody467_38 : StackLang.HolProg 64 :=
.seq AllocBody467_30 AllocBody467_37

def AllocBody467_39 : StackLang.HolProg 64 :=
.seq AllocBody467_29 AllocBody467_38

def AllocBody467_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody467_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody467_42 : StackLang.HolProg 64 :=
.seq AllocBody467_40 AllocBody467_41

def AllocBody467_43 : StackLang.HolProg 64 :=
.call (some (AllocBody467_39, 0, 467, 2)) (Sum.inl 146) (some (AllocBody467_42, 467, 3))

def AllocBody467_44 : StackLang.HolProg 64 :=
.seq AllocBody467_28 AllocBody467_43

def AllocBody467_45 : StackLang.HolProg 64 :=
.seq AllocBody467_27 AllocBody467_44

def AllocBody467_46 : StackLang.HolProg 64 :=
.seq AllocBody467_26 AllocBody467_45

def AllocBody467_47 : StackLang.HolProg 64 :=
.seq AllocBody467_7 AllocBody467_46

def AllocBody467_48 : StackLang.HolProg 64 :=
.seq AllocBody467_4 AllocBody467_47

def AllocBody467_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody467_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody467_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody467_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody467_53 : StackLang.HolProg 64 :=
.seq AllocBody467_51 AllocBody467_52

def AllocBody467_54 : StackLang.HolProg 64 :=
.seq AllocBody467_50 AllocBody467_53

def AllocBody467_55 : StackLang.HolProg 64 :=
.seq AllocBody467_49 AllocBody467_54

def AllocBody467_56 : StackLang.HolProg 64 :=
.seq AllocBody467_48 AllocBody467_55

def AllocBody467_57 : StackLang.HolProg 64 :=
.seq AllocBody467_3 AllocBody467_56

def AllocBody467_58 : StackLang.HolProg 64 :=
.seq AllocBody467_2 AllocBody467_57

def AllocBody467_59 : StackLang.HolProg 64 :=
.seq AllocBody467_1 AllocBody467_58

def AllocBody467_60 : StackLang.HolProg 64 :=
.seq AllocBody467_0 AllocBody467_59

def Alloc467 : Nat × StackLang.HolProg 64 := (467, AllocBody467_60)
theorem Alloc467_eq : StackAlloc.progComp (467, raw467) = Alloc467 := by
  kernel_rfl
#print axioms Alloc467_eq
end InitECandidate.Proofs.BackendStages
