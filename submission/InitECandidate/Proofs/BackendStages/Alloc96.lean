import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw96
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody96_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody96_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody96_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody96_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 42#64)

def AllocBody96_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody96_5 : StackLang.HolProg 64 :=
.seq AllocBody96_3 AllocBody96_4

def AllocBody96_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody96_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody96_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody96_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 96 3

def AllocBody96_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody96_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody96_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody96_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody96_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody96_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody96_16 : StackLang.HolProg 64 :=
.seq AllocBody96_14 AllocBody96_15

def AllocBody96_17 : StackLang.HolProg 64 :=
.seq AllocBody96_13 AllocBody96_16

def AllocBody96_18 : StackLang.HolProg 64 :=
.seq AllocBody96_12 AllocBody96_17

def AllocBody96_19 : StackLang.HolProg 64 :=
.seq AllocBody96_11 AllocBody96_18

def AllocBody96_20 : StackLang.HolProg 64 :=
.seq AllocBody96_10 AllocBody96_19

def AllocBody96_21 : StackLang.HolProg 64 :=
.seq AllocBody96_9 AllocBody96_20

def AllocBody96_22 : StackLang.HolProg 64 :=
.seq AllocBody96_8 AllocBody96_21

def AllocBody96_23 : StackLang.HolProg 64 :=
.seq AllocBody96_7 AllocBody96_22

def AllocBody96_24 : StackLang.HolProg 64 :=
.seq AllocBody96_6 AllocBody96_23

def AllocBody96_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody96_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody96_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody96_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody96_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody96_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody96_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody96_32 : StackLang.HolProg 64 :=
.seq AllocBody96_30 AllocBody96_31

def AllocBody96_33 : StackLang.HolProg 64 :=
.seq AllocBody96_29 AllocBody96_32

def AllocBody96_34 : StackLang.HolProg 64 :=
.seq AllocBody96_28 AllocBody96_33

def AllocBody96_35 : StackLang.HolProg 64 :=
.seq AllocBody96_27 AllocBody96_34

def AllocBody96_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody96_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody96_38 : StackLang.HolProg 64 :=
.seq AllocBody96_36 AllocBody96_37

def AllocBody96_39 : StackLang.HolProg 64 :=
.call (some (AllocBody96_35, 0, 96, 2)) (Sum.inl 94) (some (AllocBody96_38, 96, 3))

def AllocBody96_40 : StackLang.HolProg 64 :=
.seq AllocBody96_26 AllocBody96_39

def AllocBody96_41 : StackLang.HolProg 64 :=
.seq AllocBody96_25 AllocBody96_40

def AllocBody96_42 : StackLang.HolProg 64 :=
.seq AllocBody96_24 AllocBody96_41

def AllocBody96_43 : StackLang.HolProg 64 :=
.seq AllocBody96_5 AllocBody96_42

def AllocBody96_44 : StackLang.HolProg 64 :=
.seq AllocBody96_2 AllocBody96_43

def AllocBody96_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody96_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody96_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody96_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody96_49 : StackLang.HolProg 64 :=
.seq AllocBody96_47 AllocBody96_48

def AllocBody96_50 : StackLang.HolProg 64 :=
.seq AllocBody96_46 AllocBody96_49

def AllocBody96_51 : StackLang.HolProg 64 :=
.seq AllocBody96_45 AllocBody96_50

def AllocBody96_52 : StackLang.HolProg 64 :=
.seq AllocBody96_44 AllocBody96_51

def AllocBody96_53 : StackLang.HolProg 64 :=
.seq AllocBody96_1 AllocBody96_52

def AllocBody96_54 : StackLang.HolProg 64 :=
.seq AllocBody96_0 AllocBody96_53

def Alloc96 : Nat × StackLang.HolProg 64 := (96, AllocBody96_54)
theorem Alloc96_eq : StackAlloc.progComp (96, raw96) = Alloc96 := by
  kernel_rfl
#print axioms Alloc96_eq
end InitECandidate.Proofs.BackendStages
