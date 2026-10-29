import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw676
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody676_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody676_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody676_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody676_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody676_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody676_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 80) none

def AllocBody676_6 : StackLang.HolProg 64 :=
.seq AllocBody676_4 AllocBody676_5

def AllocBody676_7 : StackLang.HolProg 64 :=
.seq AllocBody676_3 AllocBody676_6

def AllocBody676_8 : StackLang.HolProg 64 :=
.seq AllocBody676_2 AllocBody676_7

def AllocBody676_9 : StackLang.HolProg 64 :=
.seq AllocBody676_1 AllocBody676_8

def AllocBody676_10 : StackLang.HolProg 64 :=
.seq AllocBody676_0 AllocBody676_9

def Alloc676 : Nat × StackLang.HolProg 64 := (676, AllocBody676_10)
theorem Alloc676_eq : StackAlloc.progComp (676, raw676) = Alloc676 := by
  kernel_rfl
#print axioms Alloc676_eq
end InitECandidate.Proofs.BackendStages
