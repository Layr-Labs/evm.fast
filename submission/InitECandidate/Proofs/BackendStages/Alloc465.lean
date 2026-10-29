import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw465
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody465_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody465_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody465_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody465_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1489#64)

def AllocBody465_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody465_5 : StackLang.HolProg 64 :=
.seq AllocBody465_3 AllocBody465_4

def AllocBody465_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody465_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody465_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody465_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 465 3

def AllocBody465_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody465_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody465_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody465_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody465_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody465_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody465_16 : StackLang.HolProg 64 :=
.seq AllocBody465_14 AllocBody465_15

def AllocBody465_17 : StackLang.HolProg 64 :=
.seq AllocBody465_13 AllocBody465_16

def AllocBody465_18 : StackLang.HolProg 64 :=
.seq AllocBody465_12 AllocBody465_17

def AllocBody465_19 : StackLang.HolProg 64 :=
.seq AllocBody465_11 AllocBody465_18

def AllocBody465_20 : StackLang.HolProg 64 :=
.seq AllocBody465_10 AllocBody465_19

def AllocBody465_21 : StackLang.HolProg 64 :=
.seq AllocBody465_9 AllocBody465_20

def AllocBody465_22 : StackLang.HolProg 64 :=
.seq AllocBody465_8 AllocBody465_21

def AllocBody465_23 : StackLang.HolProg 64 :=
.seq AllocBody465_7 AllocBody465_22

def AllocBody465_24 : StackLang.HolProg 64 :=
.seq AllocBody465_6 AllocBody465_23

def AllocBody465_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody465_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody465_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody465_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody465_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody465_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody465_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody465_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody465_33 : StackLang.HolProg 64 :=
.seq AllocBody465_31 AllocBody465_32

def AllocBody465_34 : StackLang.HolProg 64 :=
.seq AllocBody465_30 AllocBody465_33

def AllocBody465_35 : StackLang.HolProg 64 :=
.seq AllocBody465_29 AllocBody465_34

def AllocBody465_36 : StackLang.HolProg 64 :=
.seq AllocBody465_28 AllocBody465_35

def AllocBody465_37 : StackLang.HolProg 64 :=
.seq AllocBody465_27 AllocBody465_36

def AllocBody465_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody465_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody465_40 : StackLang.HolProg 64 :=
.seq AllocBody465_38 AllocBody465_39

def AllocBody465_41 : StackLang.HolProg 64 :=
.call (some (AllocBody465_37, 0, 465, 2)) (Sum.inl 464) (some (AllocBody465_40, 465, 3))

def AllocBody465_42 : StackLang.HolProg 64 :=
.seq AllocBody465_26 AllocBody465_41

def AllocBody465_43 : StackLang.HolProg 64 :=
.seq AllocBody465_25 AllocBody465_42

def AllocBody465_44 : StackLang.HolProg 64 :=
.seq AllocBody465_24 AllocBody465_43

def AllocBody465_45 : StackLang.HolProg 64 :=
.seq AllocBody465_5 AllocBody465_44

def AllocBody465_46 : StackLang.HolProg 64 :=
.seq AllocBody465_2 AllocBody465_45

def AllocBody465_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody465_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody465_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody465_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody465_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody465_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody465_53 : StackLang.HolProg 64 :=
.seq AllocBody465_51 AllocBody465_52

def AllocBody465_54 : StackLang.HolProg 64 :=
.seq AllocBody465_50 AllocBody465_53

def AllocBody465_55 : StackLang.HolProg 64 :=
.seq AllocBody465_49 AllocBody465_54

def AllocBody465_56 : StackLang.HolProg 64 :=
.seq AllocBody465_48 AllocBody465_55

def AllocBody465_57 : StackLang.HolProg 64 :=
.seq AllocBody465_47 AllocBody465_56

def AllocBody465_58 : StackLang.HolProg 64 :=
.seq AllocBody465_46 AllocBody465_57

def AllocBody465_59 : StackLang.HolProg 64 :=
.seq AllocBody465_1 AllocBody465_58

def AllocBody465_60 : StackLang.HolProg 64 :=
.seq AllocBody465_0 AllocBody465_59

def Alloc465 : Nat × StackLang.HolProg 64 := (465, AllocBody465_60)
theorem Alloc465_eq : StackAlloc.progComp (465, raw465) = Alloc465 := by
  kernel_rfl
#print axioms Alloc465_eq
end InitECandidate.Proofs.BackendStages
