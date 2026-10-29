import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw678
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody678_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody678_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody678_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody678_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody678_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody678_5 : StackLang.HolProg 64 :=
.seq AllocBody678_3 AllocBody678_4

def AllocBody678_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody678_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2792#64)

def AllocBody678_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody678_9 : StackLang.HolProg 64 :=
.seq AllocBody678_7 AllocBody678_8

def AllocBody678_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody678_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody678_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody678_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 678 3

def AllocBody678_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody678_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody678_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody678_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody678_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody678_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody678_20 : StackLang.HolProg 64 :=
.seq AllocBody678_18 AllocBody678_19

def AllocBody678_21 : StackLang.HolProg 64 :=
.seq AllocBody678_17 AllocBody678_20

def AllocBody678_22 : StackLang.HolProg 64 :=
.seq AllocBody678_16 AllocBody678_21

def AllocBody678_23 : StackLang.HolProg 64 :=
.seq AllocBody678_15 AllocBody678_22

def AllocBody678_24 : StackLang.HolProg 64 :=
.seq AllocBody678_14 AllocBody678_23

def AllocBody678_25 : StackLang.HolProg 64 :=
.seq AllocBody678_13 AllocBody678_24

def AllocBody678_26 : StackLang.HolProg 64 :=
.seq AllocBody678_12 AllocBody678_25

def AllocBody678_27 : StackLang.HolProg 64 :=
.seq AllocBody678_11 AllocBody678_26

def AllocBody678_28 : StackLang.HolProg 64 :=
.seq AllocBody678_10 AllocBody678_27

def AllocBody678_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody678_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody678_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody678_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody678_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody678_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody678_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody678_36 : StackLang.HolProg 64 :=
.seq AllocBody678_34 AllocBody678_35

def AllocBody678_37 : StackLang.HolProg 64 :=
.seq AllocBody678_33 AllocBody678_36

def AllocBody678_38 : StackLang.HolProg 64 :=
.seq AllocBody678_32 AllocBody678_37

def AllocBody678_39 : StackLang.HolProg 64 :=
.seq AllocBody678_31 AllocBody678_38

def AllocBody678_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody678_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody678_42 : StackLang.HolProg 64 :=
.seq AllocBody678_40 AllocBody678_41

def AllocBody678_43 : StackLang.HolProg 64 :=
.call (some (AllocBody678_39, 0, 678, 2)) (Sum.inl 78) (some (AllocBody678_42, 678, 3))

def AllocBody678_44 : StackLang.HolProg 64 :=
.seq AllocBody678_30 AllocBody678_43

def AllocBody678_45 : StackLang.HolProg 64 :=
.seq AllocBody678_29 AllocBody678_44

def AllocBody678_46 : StackLang.HolProg 64 :=
.seq AllocBody678_28 AllocBody678_45

def AllocBody678_47 : StackLang.HolProg 64 :=
.seq AllocBody678_9 AllocBody678_46

def AllocBody678_48 : StackLang.HolProg 64 :=
.seq AllocBody678_6 AllocBody678_47

def AllocBody678_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody678_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody678_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody678_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody678_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody678_54 : StackLang.HolProg 64 :=
.seq AllocBody678_52 AllocBody678_53

def AllocBody678_55 : StackLang.HolProg 64 :=
.seq AllocBody678_51 AllocBody678_54

def AllocBody678_56 : StackLang.HolProg 64 :=
.seq AllocBody678_50 AllocBody678_55

def AllocBody678_57 : StackLang.HolProg 64 :=
.seq AllocBody678_49 AllocBody678_56

def AllocBody678_58 : StackLang.HolProg 64 :=
.seq AllocBody678_48 AllocBody678_57

def AllocBody678_59 : StackLang.HolProg 64 :=
.seq AllocBody678_5 AllocBody678_58

def AllocBody678_60 : StackLang.HolProg 64 :=
.seq AllocBody678_2 AllocBody678_59

def AllocBody678_61 : StackLang.HolProg 64 :=
.seq AllocBody678_1 AllocBody678_60

def AllocBody678_62 : StackLang.HolProg 64 :=
.seq AllocBody678_0 AllocBody678_61

def Alloc678 : Nat × StackLang.HolProg 64 := (678, AllocBody678_62)
theorem Alloc678_eq : StackAlloc.progComp (678, raw678) = Alloc678 := by
  kernel_rfl
#print axioms Alloc678_eq
end InitECandidate.Proofs.BackendStages
