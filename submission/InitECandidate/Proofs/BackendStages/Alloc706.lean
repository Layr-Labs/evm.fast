import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw706
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody706_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody706_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody706_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody706_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody706_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody706_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody706_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody706_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody706_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody706_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody706_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody706_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody706_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody706_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody706_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody706_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody706_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody706_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody706_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody706_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody706_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody706_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody706_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody706_23 : StackLang.HolProg 64 :=
.seq AllocBody706_21 AllocBody706_22

def AllocBody706_24 : StackLang.HolProg 64 :=
.seq AllocBody706_20 AllocBody706_23

def AllocBody706_25 : StackLang.HolProg 64 :=
.seq AllocBody706_19 AllocBody706_24

def AllocBody706_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody706_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody706_25 AllocBody706_26

def AllocBody706_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody706_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody706_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody706_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody706_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody706_33 : StackLang.HolProg 64 :=
.seq AllocBody706_31 AllocBody706_32

def AllocBody706_34 : StackLang.HolProg 64 :=
.seq AllocBody706_30 AllocBody706_33

def AllocBody706_35 : StackLang.HolProg 64 :=
.seq AllocBody706_29 AllocBody706_34

def AllocBody706_36 : StackLang.HolProg 64 :=
.seq AllocBody706_28 AllocBody706_35

def AllocBody706_37 : StackLang.HolProg 64 :=
.seq AllocBody706_27 AllocBody706_36

def AllocBody706_38 : StackLang.HolProg 64 :=
.seq AllocBody706_18 AllocBody706_37

def AllocBody706_39 : StackLang.HolProg 64 :=
.seq AllocBody706_17 AllocBody706_38

def AllocBody706_40 : StackLang.HolProg 64 :=
.seq AllocBody706_16 AllocBody706_39

def AllocBody706_41 : StackLang.HolProg 64 :=
.seq AllocBody706_15 AllocBody706_40

def AllocBody706_42 : StackLang.HolProg 64 :=
.seq AllocBody706_14 AllocBody706_41

def AllocBody706_43 : StackLang.HolProg 64 :=
.seq AllocBody706_13 AllocBody706_42

def AllocBody706_44 : StackLang.HolProg 64 :=
.seq AllocBody706_12 AllocBody706_43

def AllocBody706_45 : StackLang.HolProg 64 :=
.seq AllocBody706_11 AllocBody706_44

def AllocBody706_46 : StackLang.HolProg 64 :=
.seq AllocBody706_10 AllocBody706_45

def AllocBody706_47 : StackLang.HolProg 64 :=
.seq AllocBody706_9 AllocBody706_46

def AllocBody706_48 : StackLang.HolProg 64 :=
.seq AllocBody706_8 AllocBody706_47

def AllocBody706_49 : StackLang.HolProg 64 :=
.seq AllocBody706_7 AllocBody706_48

def AllocBody706_50 : StackLang.HolProg 64 :=
.seq AllocBody706_6 AllocBody706_49

def AllocBody706_51 : StackLang.HolProg 64 :=
.seq AllocBody706_5 AllocBody706_50

def AllocBody706_52 : StackLang.HolProg 64 :=
.seq AllocBody706_4 AllocBody706_51

def AllocBody706_53 : StackLang.HolProg 64 :=
.seq AllocBody706_3 AllocBody706_52

def AllocBody706_54 : StackLang.HolProg 64 :=
.seq AllocBody706_2 AllocBody706_53

def AllocBody706_55 : StackLang.HolProg 64 :=
.seq AllocBody706_1 AllocBody706_54

def AllocBody706_56 : StackLang.HolProg 64 :=
.seq AllocBody706_0 AllocBody706_55

def Alloc706 : Nat × StackLang.HolProg 64 := (706, AllocBody706_56)
theorem Alloc706_eq : StackAlloc.progComp (706, raw706) = Alloc706 := by
  kernel_rfl
#print axioms Alloc706_eq
end InitECandidate.Proofs.BackendStages
