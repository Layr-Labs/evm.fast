import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw677
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody677_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody677_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody677_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody677_3 : StackLang.HolProg 64 :=
.seq AllocBody677_1 AllocBody677_2

def AllocBody677_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody677_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody677_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody677_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 79) none

def AllocBody677_8 : StackLang.HolProg 64 :=
.seq AllocBody677_6 AllocBody677_7

def AllocBody677_9 : StackLang.HolProg 64 :=
.seq AllocBody677_5 AllocBody677_8

def AllocBody677_10 : StackLang.HolProg 64 :=
.seq AllocBody677_4 AllocBody677_9

def AllocBody677_11 : StackLang.HolProg 64 :=
.seq AllocBody677_3 AllocBody677_10

def AllocBody677_12 : StackLang.HolProg 64 :=
.seq AllocBody677_0 AllocBody677_11

def Alloc677 : Nat × StackLang.HolProg 64 := (677, AllocBody677_12)
theorem Alloc677_eq : StackAlloc.progComp (677, raw677) = Alloc677 := by
  kernel_rfl
#print axioms Alloc677_eq
end InitECandidate.Proofs.BackendStages
