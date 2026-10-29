import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw117
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody117_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody117_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody117_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody117_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody117_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody117_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def AllocBody117_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody117_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody117_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody117_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 5 0))

def AllocBody117_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody117_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody117_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody117_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 5 0))

def AllocBody117_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody117_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody117_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody117_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 5 0))

def AllocBody117_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody117_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def AllocBody117_20 : StackLang.HolProg 64 :=
.seq AllocBody117_18 AllocBody117_19

def AllocBody117_21 : StackLang.HolProg 64 :=
.seq AllocBody117_17 AllocBody117_20

def AllocBody117_22 : StackLang.HolProg 64 :=
.seq AllocBody117_16 AllocBody117_21

def AllocBody117_23 : StackLang.HolProg 64 :=
.seq AllocBody117_15 AllocBody117_22

def AllocBody117_24 : StackLang.HolProg 64 :=
.seq AllocBody117_14 AllocBody117_23

def AllocBody117_25 : StackLang.HolProg 64 :=
.seq AllocBody117_13 AllocBody117_24

def AllocBody117_26 : StackLang.HolProg 64 :=
.seq AllocBody117_12 AllocBody117_25

def AllocBody117_27 : StackLang.HolProg 64 :=
.seq AllocBody117_11 AllocBody117_26

def AllocBody117_28 : StackLang.HolProg 64 :=
.seq AllocBody117_10 AllocBody117_27

def AllocBody117_29 : StackLang.HolProg 64 :=
.seq AllocBody117_9 AllocBody117_28

def AllocBody117_30 : StackLang.HolProg 64 :=
.seq AllocBody117_8 AllocBody117_29

def AllocBody117_31 : StackLang.HolProg 64 :=
.seq AllocBody117_7 AllocBody117_30

def AllocBody117_32 : StackLang.HolProg 64 :=
.seq AllocBody117_6 AllocBody117_31

def AllocBody117_33 : StackLang.HolProg 64 :=
.seq AllocBody117_5 AllocBody117_32

def AllocBody117_34 : StackLang.HolProg 64 :=
.seq AllocBody117_4 AllocBody117_33

def AllocBody117_35 : StackLang.HolProg 64 :=
.seq AllocBody117_3 AllocBody117_34

def AllocBody117_36 : StackLang.HolProg 64 :=
.seq AllocBody117_2 AllocBody117_35

def AllocBody117_37 : StackLang.HolProg 64 :=
.seq AllocBody117_1 AllocBody117_36

def AllocBody117_38 : StackLang.HolProg 64 :=
.seq AllocBody117_0 AllocBody117_37

def Alloc117 : Nat × StackLang.HolProg 64 := (117, AllocBody117_38)
theorem Alloc117_eq : StackAlloc.progComp (117, raw117) = Alloc117 := by
  kernel_rfl
#print axioms Alloc117_eq
end InitECandidate.Proofs.BackendStages
