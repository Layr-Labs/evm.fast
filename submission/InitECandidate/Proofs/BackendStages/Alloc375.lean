import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw375
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody375_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody375_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody375_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody375_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody375_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody375_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody375_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def AllocBody375_7 : StackLang.HolProg 64 :=
.seq AllocBody375_5 AllocBody375_6

def AllocBody375_8 : StackLang.HolProg 64 :=
.seq AllocBody375_4 AllocBody375_7

def AllocBody375_9 : StackLang.HolProg 64 :=
.seq AllocBody375_3 AllocBody375_8

def AllocBody375_10 : StackLang.HolProg 64 :=
.seq AllocBody375_2 AllocBody375_9

def AllocBody375_11 : StackLang.HolProg 64 :=
.seq AllocBody375_1 AllocBody375_10

def AllocBody375_12 : StackLang.HolProg 64 :=
.seq AllocBody375_0 AllocBody375_11

def Alloc375 : Nat × StackLang.HolProg 64 := (375, AllocBody375_12)
theorem Alloc375_eq : StackAlloc.progComp (375, raw375) = Alloc375 := by
  kernel_rfl
#print axioms Alloc375_eq
end InitECandidate.Proofs.BackendStages
