import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw309
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody309_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody309_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody309_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody309_3 : StackLang.HolProg 64 :=
.seq AllocBody309_1 AllocBody309_2

def AllocBody309_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody309_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 850#64)

def AllocBody309_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody309_7 : StackLang.HolProg 64 :=
.seq AllocBody309_5 AllocBody309_6

def AllocBody309_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody309_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody309_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody309_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 309 3

def AllocBody309_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody309_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody309_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody309_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody309_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody309_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody309_18 : StackLang.HolProg 64 :=
.seq AllocBody309_16 AllocBody309_17

def AllocBody309_19 : StackLang.HolProg 64 :=
.seq AllocBody309_15 AllocBody309_18

def AllocBody309_20 : StackLang.HolProg 64 :=
.seq AllocBody309_14 AllocBody309_19

def AllocBody309_21 : StackLang.HolProg 64 :=
.seq AllocBody309_13 AllocBody309_20

def AllocBody309_22 : StackLang.HolProg 64 :=
.seq AllocBody309_12 AllocBody309_21

def AllocBody309_23 : StackLang.HolProg 64 :=
.seq AllocBody309_11 AllocBody309_22

def AllocBody309_24 : StackLang.HolProg 64 :=
.seq AllocBody309_10 AllocBody309_23

def AllocBody309_25 : StackLang.HolProg 64 :=
.seq AllocBody309_9 AllocBody309_24

def AllocBody309_26 : StackLang.HolProg 64 :=
.seq AllocBody309_8 AllocBody309_25

def AllocBody309_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody309_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody309_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody309_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody309_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody309_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody309_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody309_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody309_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody309_36 : StackLang.HolProg 64 :=
.seq AllocBody309_34 AllocBody309_35

def AllocBody309_37 : StackLang.HolProg 64 :=
.seq AllocBody309_33 AllocBody309_36

def AllocBody309_38 : StackLang.HolProg 64 :=
.seq AllocBody309_32 AllocBody309_37

def AllocBody309_39 : StackLang.HolProg 64 :=
.seq AllocBody309_31 AllocBody309_38

def AllocBody309_40 : StackLang.HolProg 64 :=
.seq AllocBody309_30 AllocBody309_39

def AllocBody309_41 : StackLang.HolProg 64 :=
.seq AllocBody309_29 AllocBody309_40

def AllocBody309_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody309_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody309_44 : StackLang.HolProg 64 :=
.seq AllocBody309_42 AllocBody309_43

def AllocBody309_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody309_46 : StackLang.HolProg 64 :=
.seq AllocBody309_44 AllocBody309_45

def AllocBody309_47 : StackLang.HolProg 64 :=
.call (some (AllocBody309_41, 0, 309, 2)) (Sum.inl 305) (some (AllocBody309_46, 309, 3))

def AllocBody309_48 : StackLang.HolProg 64 :=
.seq AllocBody309_28 AllocBody309_47

def AllocBody309_49 : StackLang.HolProg 64 :=
.seq AllocBody309_27 AllocBody309_48

def AllocBody309_50 : StackLang.HolProg 64 :=
.seq AllocBody309_26 AllocBody309_49

def AllocBody309_51 : StackLang.HolProg 64 :=
.seq AllocBody309_7 AllocBody309_50

def AllocBody309_52 : StackLang.HolProg 64 :=
.seq AllocBody309_4 AllocBody309_51

def AllocBody309_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody309_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody309_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody309_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody309_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 1

def AllocBody309_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 308

def AllocBody309_59 : StackLang.HolProg 64 :=
.seq AllocBody309_57 AllocBody309_58

def AllocBody309_60 : StackLang.HolProg 64 :=
.seq AllocBody309_56 AllocBody309_59

def AllocBody309_61 : StackLang.HolProg 64 :=
.seq AllocBody309_55 AllocBody309_60

def AllocBody309_62 : StackLang.HolProg 64 :=
.seq AllocBody309_54 AllocBody309_61

def AllocBody309_63 : StackLang.HolProg 64 :=
.seq AllocBody309_53 AllocBody309_62

def AllocBody309_64 : StackLang.HolProg 64 :=
.seq AllocBody309_52 AllocBody309_63

def AllocBody309_65 : StackLang.HolProg 64 :=
.seq AllocBody309_3 AllocBody309_64

def AllocBody309_66 : StackLang.HolProg 64 :=
.seq AllocBody309_0 AllocBody309_65

def Alloc309 : Nat × StackLang.HolProg 64 := (309, AllocBody309_66)
theorem Alloc309_eq : StackAlloc.progComp (309, raw309) = Alloc309 := by
  kernel_rfl
#print axioms Alloc309_eq
end InitECandidate.Proofs.BackendStages
