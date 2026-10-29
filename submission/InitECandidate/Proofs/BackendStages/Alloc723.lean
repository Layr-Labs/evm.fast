import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw723
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody723_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody723_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody723_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody723_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3245#64)

def AllocBody723_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody723_5 : StackLang.HolProg 64 :=
.seq AllocBody723_3 AllocBody723_4

def AllocBody723_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody723_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody723_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody723_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 723 3

def AllocBody723_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody723_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody723_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody723_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody723_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody723_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody723_16 : StackLang.HolProg 64 :=
.seq AllocBody723_14 AllocBody723_15

def AllocBody723_17 : StackLang.HolProg 64 :=
.seq AllocBody723_13 AllocBody723_16

def AllocBody723_18 : StackLang.HolProg 64 :=
.seq AllocBody723_12 AllocBody723_17

def AllocBody723_19 : StackLang.HolProg 64 :=
.seq AllocBody723_11 AllocBody723_18

def AllocBody723_20 : StackLang.HolProg 64 :=
.seq AllocBody723_10 AllocBody723_19

def AllocBody723_21 : StackLang.HolProg 64 :=
.seq AllocBody723_9 AllocBody723_20

def AllocBody723_22 : StackLang.HolProg 64 :=
.seq AllocBody723_8 AllocBody723_21

def AllocBody723_23 : StackLang.HolProg 64 :=
.seq AllocBody723_7 AllocBody723_22

def AllocBody723_24 : StackLang.HolProg 64 :=
.seq AllocBody723_6 AllocBody723_23

def AllocBody723_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody723_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody723_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody723_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody723_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody723_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody723_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody723_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody723_33 : StackLang.HolProg 64 :=
.seq AllocBody723_31 AllocBody723_32

def AllocBody723_34 : StackLang.HolProg 64 :=
.seq AllocBody723_30 AllocBody723_33

def AllocBody723_35 : StackLang.HolProg 64 :=
.seq AllocBody723_29 AllocBody723_34

def AllocBody723_36 : StackLang.HolProg 64 :=
.seq AllocBody723_28 AllocBody723_35

def AllocBody723_37 : StackLang.HolProg 64 :=
.seq AllocBody723_27 AllocBody723_36

def AllocBody723_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody723_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody723_40 : StackLang.HolProg 64 :=
.seq AllocBody723_38 AllocBody723_39

def AllocBody723_41 : StackLang.HolProg 64 :=
.call (some (AllocBody723_37, 0, 723, 2)) (Sum.inl 717) (some (AllocBody723_40, 723, 3))

def AllocBody723_42 : StackLang.HolProg 64 :=
.seq AllocBody723_26 AllocBody723_41

def AllocBody723_43 : StackLang.HolProg 64 :=
.seq AllocBody723_25 AllocBody723_42

def AllocBody723_44 : StackLang.HolProg 64 :=
.seq AllocBody723_24 AllocBody723_43

def AllocBody723_45 : StackLang.HolProg 64 :=
.seq AllocBody723_5 AllocBody723_44

def AllocBody723_46 : StackLang.HolProg 64 :=
.seq AllocBody723_2 AllocBody723_45

def AllocBody723_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody723_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody723_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody723_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody723_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody723_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody723_53 : StackLang.HolProg 64 :=
.seq AllocBody723_51 AllocBody723_52

def AllocBody723_54 : StackLang.HolProg 64 :=
.seq AllocBody723_50 AllocBody723_53

def AllocBody723_55 : StackLang.HolProg 64 :=
.seq AllocBody723_49 AllocBody723_54

def AllocBody723_56 : StackLang.HolProg 64 :=
.seq AllocBody723_48 AllocBody723_55

def AllocBody723_57 : StackLang.HolProg 64 :=
.seq AllocBody723_47 AllocBody723_56

def AllocBody723_58 : StackLang.HolProg 64 :=
.seq AllocBody723_46 AllocBody723_57

def AllocBody723_59 : StackLang.HolProg 64 :=
.seq AllocBody723_1 AllocBody723_58

def AllocBody723_60 : StackLang.HolProg 64 :=
.seq AllocBody723_0 AllocBody723_59

def Alloc723 : Nat × StackLang.HolProg 64 := (723, AllocBody723_60)
theorem Alloc723_eq : StackAlloc.progComp (723, raw723) = Alloc723 := by
  kernel_rfl
#print axioms Alloc723_eq
end InitECandidate.Proofs.BackendStages
