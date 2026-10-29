import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw864
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody864_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody864_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody864_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 5#64)

def AllocBody864_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody864_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody864_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4520#64)

def AllocBody864_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody864_7 : StackLang.HolProg 64 :=
.seq AllocBody864_5 AllocBody864_6

def AllocBody864_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody864_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody864_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody864_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 864 3

def AllocBody864_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody864_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody864_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody864_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody864_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody864_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody864_18 : StackLang.HolProg 64 :=
.seq AllocBody864_16 AllocBody864_17

def AllocBody864_19 : StackLang.HolProg 64 :=
.seq AllocBody864_15 AllocBody864_18

def AllocBody864_20 : StackLang.HolProg 64 :=
.seq AllocBody864_14 AllocBody864_19

def AllocBody864_21 : StackLang.HolProg 64 :=
.seq AllocBody864_13 AllocBody864_20

def AllocBody864_22 : StackLang.HolProg 64 :=
.seq AllocBody864_12 AllocBody864_21

def AllocBody864_23 : StackLang.HolProg 64 :=
.seq AllocBody864_11 AllocBody864_22

def AllocBody864_24 : StackLang.HolProg 64 :=
.seq AllocBody864_10 AllocBody864_23

def AllocBody864_25 : StackLang.HolProg 64 :=
.seq AllocBody864_9 AllocBody864_24

def AllocBody864_26 : StackLang.HolProg 64 :=
.seq AllocBody864_8 AllocBody864_25

def AllocBody864_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody864_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody864_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody864_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody864_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody864_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody864_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody864_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody864_35 : StackLang.HolProg 64 :=
.seq AllocBody864_33 AllocBody864_34

def AllocBody864_36 : StackLang.HolProg 64 :=
.seq AllocBody864_32 AllocBody864_35

def AllocBody864_37 : StackLang.HolProg 64 :=
.seq AllocBody864_31 AllocBody864_36

def AllocBody864_38 : StackLang.HolProg 64 :=
.seq AllocBody864_30 AllocBody864_37

def AllocBody864_39 : StackLang.HolProg 64 :=
.seq AllocBody864_29 AllocBody864_38

def AllocBody864_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody864_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody864_42 : StackLang.HolProg 64 :=
.seq AllocBody864_40 AllocBody864_41

def AllocBody864_43 : StackLang.HolProg 64 :=
.call (some (AllocBody864_39, 0, 864, 2)) (Sum.inl 95) (some (AllocBody864_42, 864, 3))

def AllocBody864_44 : StackLang.HolProg 64 :=
.seq AllocBody864_28 AllocBody864_43

def AllocBody864_45 : StackLang.HolProg 64 :=
.seq AllocBody864_27 AllocBody864_44

def AllocBody864_46 : StackLang.HolProg 64 :=
.seq AllocBody864_26 AllocBody864_45

def AllocBody864_47 : StackLang.HolProg 64 :=
.seq AllocBody864_7 AllocBody864_46

def AllocBody864_48 : StackLang.HolProg 64 :=
.seq AllocBody864_4 AllocBody864_47

def AllocBody864_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody864_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody864_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody864_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody864_53 : StackLang.HolProg 64 :=
.seq AllocBody864_51 AllocBody864_52

def AllocBody864_54 : StackLang.HolProg 64 :=
.seq AllocBody864_50 AllocBody864_53

def AllocBody864_55 : StackLang.HolProg 64 :=
.seq AllocBody864_49 AllocBody864_54

def AllocBody864_56 : StackLang.HolProg 64 :=
.seq AllocBody864_48 AllocBody864_55

def AllocBody864_57 : StackLang.HolProg 64 :=
.seq AllocBody864_3 AllocBody864_56

def AllocBody864_58 : StackLang.HolProg 64 :=
.seq AllocBody864_2 AllocBody864_57

def AllocBody864_59 : StackLang.HolProg 64 :=
.seq AllocBody864_1 AllocBody864_58

def AllocBody864_60 : StackLang.HolProg 64 :=
.seq AllocBody864_0 AllocBody864_59

def Alloc864 : Nat × StackLang.HolProg 64 := (864, AllocBody864_60)
theorem Alloc864_eq : StackAlloc.progComp (864, raw864) = Alloc864 := by
  kernel_rfl
#print axioms Alloc864_eq
end InitECandidate.Proofs.BackendStages
