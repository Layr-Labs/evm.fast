import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw280
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody280_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody280_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody280_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 11684671#64)

def AllocBody280_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody280_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody280_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody280_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 744#64)

def AllocBody280_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody280_8 : StackLang.HolProg 64 :=
.seq AllocBody280_6 AllocBody280_7

def AllocBody280_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody280_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody280_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody280_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 280 3

def AllocBody280_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody280_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody280_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody280_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody280_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody280_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody280_19 : StackLang.HolProg 64 :=
.seq AllocBody280_17 AllocBody280_18

def AllocBody280_20 : StackLang.HolProg 64 :=
.seq AllocBody280_16 AllocBody280_19

def AllocBody280_21 : StackLang.HolProg 64 :=
.seq AllocBody280_15 AllocBody280_20

def AllocBody280_22 : StackLang.HolProg 64 :=
.seq AllocBody280_14 AllocBody280_21

def AllocBody280_23 : StackLang.HolProg 64 :=
.seq AllocBody280_13 AllocBody280_22

def AllocBody280_24 : StackLang.HolProg 64 :=
.seq AllocBody280_12 AllocBody280_23

def AllocBody280_25 : StackLang.HolProg 64 :=
.seq AllocBody280_11 AllocBody280_24

def AllocBody280_26 : StackLang.HolProg 64 :=
.seq AllocBody280_10 AllocBody280_25

def AllocBody280_27 : StackLang.HolProg 64 :=
.seq AllocBody280_9 AllocBody280_26

def AllocBody280_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody280_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody280_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody280_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody280_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody280_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody280_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody280_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody280_36 : StackLang.HolProg 64 :=
.seq AllocBody280_34 AllocBody280_35

def AllocBody280_37 : StackLang.HolProg 64 :=
.seq AllocBody280_33 AllocBody280_36

def AllocBody280_38 : StackLang.HolProg 64 :=
.seq AllocBody280_32 AllocBody280_37

def AllocBody280_39 : StackLang.HolProg 64 :=
.seq AllocBody280_31 AllocBody280_38

def AllocBody280_40 : StackLang.HolProg 64 :=
.seq AllocBody280_30 AllocBody280_39

def AllocBody280_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody280_42 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody280_43 : StackLang.HolProg 64 :=
.seq AllocBody280_41 AllocBody280_42

def AllocBody280_44 : StackLang.HolProg 64 :=
.call (some (AllocBody280_40, 0, 280, 2)) (Sum.inl 279) (some (AllocBody280_43, 280, 3))

def AllocBody280_45 : StackLang.HolProg 64 :=
.seq AllocBody280_29 AllocBody280_44

def AllocBody280_46 : StackLang.HolProg 64 :=
.seq AllocBody280_28 AllocBody280_45

def AllocBody280_47 : StackLang.HolProg 64 :=
.seq AllocBody280_27 AllocBody280_46

def AllocBody280_48 : StackLang.HolProg 64 :=
.seq AllocBody280_8 AllocBody280_47

def AllocBody280_49 : StackLang.HolProg 64 :=
.seq AllocBody280_5 AllocBody280_48

def AllocBody280_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody280_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody280_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody280_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody280_54 : StackLang.HolProg 64 :=
.seq AllocBody280_52 AllocBody280_53

def AllocBody280_55 : StackLang.HolProg 64 :=
.seq AllocBody280_51 AllocBody280_54

def AllocBody280_56 : StackLang.HolProg 64 :=
.seq AllocBody280_50 AllocBody280_55

def AllocBody280_57 : StackLang.HolProg 64 :=
.seq AllocBody280_49 AllocBody280_56

def AllocBody280_58 : StackLang.HolProg 64 :=
.seq AllocBody280_4 AllocBody280_57

def AllocBody280_59 : StackLang.HolProg 64 :=
.seq AllocBody280_3 AllocBody280_58

def AllocBody280_60 : StackLang.HolProg 64 :=
.seq AllocBody280_2 AllocBody280_59

def AllocBody280_61 : StackLang.HolProg 64 :=
.seq AllocBody280_1 AllocBody280_60

def AllocBody280_62 : StackLang.HolProg 64 :=
.seq AllocBody280_0 AllocBody280_61

def Alloc280 : Nat × StackLang.HolProg 64 := (280, AllocBody280_62)
theorem Alloc280_eq : StackAlloc.progComp (280, raw280) = Alloc280 := by
  kernel_rfl
#print axioms Alloc280_eq
end InitECandidate.Proofs.BackendStages
