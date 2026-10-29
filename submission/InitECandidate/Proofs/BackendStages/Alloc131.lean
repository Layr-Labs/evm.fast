import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw131
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody131_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody131_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody131_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody131_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 83#64)

def AllocBody131_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody131_5 : StackLang.HolProg 64 :=
.seq AllocBody131_3 AllocBody131_4

def AllocBody131_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody131_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody131_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody131_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 131 3

def AllocBody131_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody131_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody131_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody131_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody131_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody131_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody131_16 : StackLang.HolProg 64 :=
.seq AllocBody131_14 AllocBody131_15

def AllocBody131_17 : StackLang.HolProg 64 :=
.seq AllocBody131_13 AllocBody131_16

def AllocBody131_18 : StackLang.HolProg 64 :=
.seq AllocBody131_12 AllocBody131_17

def AllocBody131_19 : StackLang.HolProg 64 :=
.seq AllocBody131_11 AllocBody131_18

def AllocBody131_20 : StackLang.HolProg 64 :=
.seq AllocBody131_10 AllocBody131_19

def AllocBody131_21 : StackLang.HolProg 64 :=
.seq AllocBody131_9 AllocBody131_20

def AllocBody131_22 : StackLang.HolProg 64 :=
.seq AllocBody131_8 AllocBody131_21

def AllocBody131_23 : StackLang.HolProg 64 :=
.seq AllocBody131_7 AllocBody131_22

def AllocBody131_24 : StackLang.HolProg 64 :=
.seq AllocBody131_6 AllocBody131_23

def AllocBody131_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody131_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody131_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody131_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody131_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody131_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody131_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody131_32 : StackLang.HolProg 64 :=
.seq AllocBody131_30 AllocBody131_31

def AllocBody131_33 : StackLang.HolProg 64 :=
.seq AllocBody131_29 AllocBody131_32

def AllocBody131_34 : StackLang.HolProg 64 :=
.seq AllocBody131_28 AllocBody131_33

def AllocBody131_35 : StackLang.HolProg 64 :=
.seq AllocBody131_27 AllocBody131_34

def AllocBody131_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody131_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody131_38 : StackLang.HolProg 64 :=
.seq AllocBody131_36 AllocBody131_37

def AllocBody131_39 : StackLang.HolProg 64 :=
.call (some (AllocBody131_35, 0, 131, 2)) (Sum.inl 129) (some (AllocBody131_38, 131, 3))

def AllocBody131_40 : StackLang.HolProg 64 :=
.seq AllocBody131_26 AllocBody131_39

def AllocBody131_41 : StackLang.HolProg 64 :=
.seq AllocBody131_25 AllocBody131_40

def AllocBody131_42 : StackLang.HolProg 64 :=
.seq AllocBody131_24 AllocBody131_41

def AllocBody131_43 : StackLang.HolProg 64 :=
.seq AllocBody131_5 AllocBody131_42

def AllocBody131_44 : StackLang.HolProg 64 :=
.seq AllocBody131_2 AllocBody131_43

def AllocBody131_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody131_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody131_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody131_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody131_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody131_50 : StackLang.HolProg 64 :=
.seq AllocBody131_48 AllocBody131_49

def AllocBody131_51 : StackLang.HolProg 64 :=
.seq AllocBody131_47 AllocBody131_50

def AllocBody131_52 : StackLang.HolProg 64 :=
.seq AllocBody131_46 AllocBody131_51

def AllocBody131_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody131_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody131_55 : StackLang.HolProg 64 :=
.seq AllocBody131_53 AllocBody131_54

def AllocBody131_56 : StackLang.HolProg 64 :=
.seq AllocBody131_52 AllocBody131_55

def AllocBody131_57 : StackLang.HolProg 64 :=
.seq AllocBody131_45 AllocBody131_56

def AllocBody131_58 : StackLang.HolProg 64 :=
.seq AllocBody131_44 AllocBody131_57

def AllocBody131_59 : StackLang.HolProg 64 :=
.seq AllocBody131_1 AllocBody131_58

def AllocBody131_60 : StackLang.HolProg 64 :=
.seq AllocBody131_0 AllocBody131_59

def Alloc131 : Nat × StackLang.HolProg 64 := (131, AllocBody131_60)
theorem Alloc131_eq : StackAlloc.progComp (131, raw131) = Alloc131 := by
  kernel_rfl
#print axioms Alloc131_eq
end InitECandidate.Proofs.BackendStages
