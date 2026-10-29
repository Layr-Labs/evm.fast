import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw107
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody107_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody107_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody107_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody107_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody107_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody107_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody107_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody107_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody107_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody107_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody107_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody107_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody107_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody107_13 : StackLang.HolProg 64 :=
.seq AllocBody107_11 AllocBody107_12

def AllocBody107_14 : StackLang.HolProg 64 :=
.seq AllocBody107_10 AllocBody107_13

def AllocBody107_15 : StackLang.HolProg 64 :=
.seq AllocBody107_9 AllocBody107_14

def AllocBody107_16 : StackLang.HolProg 64 :=
.seq AllocBody107_8 AllocBody107_15

def AllocBody107_17 : StackLang.HolProg 64 :=
.seq AllocBody107_7 AllocBody107_16

def AllocBody107_18 : StackLang.HolProg 64 :=
.seq AllocBody107_6 AllocBody107_17

def AllocBody107_19 : StackLang.HolProg 64 :=
.seq AllocBody107_5 AllocBody107_18

def AllocBody107_20 : StackLang.HolProg 64 :=
.seq AllocBody107_4 AllocBody107_19

def AllocBody107_21 : StackLang.HolProg 64 :=
.seq AllocBody107_3 AllocBody107_20

def AllocBody107_22 : StackLang.HolProg 64 :=
.seq AllocBody107_2 AllocBody107_21

def AllocBody107_23 : StackLang.HolProg 64 :=
.seq AllocBody107_1 AllocBody107_22

def AllocBody107_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody107_25 : StackLang.HolProg 64 :=
.call none (Sum.inl 106) none

def AllocBody107_26 : StackLang.HolProg 64 :=
.seq AllocBody107_24 AllocBody107_25

def AllocBody107_27 : StackLang.HolProg 64 :=
.seq AllocBody107_23 AllocBody107_26

def AllocBody107_28 : StackLang.HolProg 64 :=
.seq AllocBody107_0 AllocBody107_27

def Alloc107 : Nat × StackLang.HolProg 64 := (107, AllocBody107_28)
theorem Alloc107_eq : StackAlloc.progComp (107, raw107) = Alloc107 := by
  kernel_rfl
#print axioms Alloc107_eq
end InitECandidate.Proofs.BackendStages
