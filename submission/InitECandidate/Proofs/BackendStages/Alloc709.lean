import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw709
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody709_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody709_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody709_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody709_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody709_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 7 0))

def AllocBody709_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody709_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 7 0))

def AllocBody709_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody709_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 7 0))

def AllocBody709_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody709_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 7 0))

def AllocBody709_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody709_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 5 5 7 0))

def AllocBody709_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody709_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody709_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 6 6 7 0))

def AllocBody709_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody709_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def AllocBody709_28 : StackLang.HolProg 64 :=
.seq AllocBody709_26 AllocBody709_27

def AllocBody709_29 : StackLang.HolProg 64 :=
.seq AllocBody709_25 AllocBody709_28

def AllocBody709_30 : StackLang.HolProg 64 :=
.seq AllocBody709_24 AllocBody709_29

def AllocBody709_31 : StackLang.HolProg 64 :=
.seq AllocBody709_23 AllocBody709_30

def AllocBody709_32 : StackLang.HolProg 64 :=
.seq AllocBody709_22 AllocBody709_31

def AllocBody709_33 : StackLang.HolProg 64 :=
.seq AllocBody709_21 AllocBody709_32

def AllocBody709_34 : StackLang.HolProg 64 :=
.seq AllocBody709_20 AllocBody709_33

def AllocBody709_35 : StackLang.HolProg 64 :=
.seq AllocBody709_19 AllocBody709_34

def AllocBody709_36 : StackLang.HolProg 64 :=
.seq AllocBody709_18 AllocBody709_35

def AllocBody709_37 : StackLang.HolProg 64 :=
.seq AllocBody709_17 AllocBody709_36

def AllocBody709_38 : StackLang.HolProg 64 :=
.seq AllocBody709_16 AllocBody709_37

def AllocBody709_39 : StackLang.HolProg 64 :=
.seq AllocBody709_15 AllocBody709_38

def AllocBody709_40 : StackLang.HolProg 64 :=
.seq AllocBody709_14 AllocBody709_39

def AllocBody709_41 : StackLang.HolProg 64 :=
.seq AllocBody709_13 AllocBody709_40

def AllocBody709_42 : StackLang.HolProg 64 :=
.seq AllocBody709_12 AllocBody709_41

def AllocBody709_43 : StackLang.HolProg 64 :=
.seq AllocBody709_11 AllocBody709_42

def AllocBody709_44 : StackLang.HolProg 64 :=
.seq AllocBody709_10 AllocBody709_43

def AllocBody709_45 : StackLang.HolProg 64 :=
.seq AllocBody709_9 AllocBody709_44

def AllocBody709_46 : StackLang.HolProg 64 :=
.seq AllocBody709_8 AllocBody709_45

def AllocBody709_47 : StackLang.HolProg 64 :=
.seq AllocBody709_7 AllocBody709_46

def AllocBody709_48 : StackLang.HolProg 64 :=
.seq AllocBody709_6 AllocBody709_47

def AllocBody709_49 : StackLang.HolProg 64 :=
.seq AllocBody709_5 AllocBody709_48

def AllocBody709_50 : StackLang.HolProg 64 :=
.seq AllocBody709_4 AllocBody709_49

def AllocBody709_51 : StackLang.HolProg 64 :=
.seq AllocBody709_3 AllocBody709_50

def AllocBody709_52 : StackLang.HolProg 64 :=
.seq AllocBody709_2 AllocBody709_51

def AllocBody709_53 : StackLang.HolProg 64 :=
.seq AllocBody709_1 AllocBody709_52

def AllocBody709_54 : StackLang.HolProg 64 :=
.seq AllocBody709_0 AllocBody709_53

def Alloc709 : Nat × StackLang.HolProg 64 := (709, AllocBody709_54)
theorem Alloc709_eq : StackAlloc.progComp (709, raw709) = Alloc709 := by
  kernel_rfl
#print axioms Alloc709_eq
end InitECandidate.Proofs.BackendStages
