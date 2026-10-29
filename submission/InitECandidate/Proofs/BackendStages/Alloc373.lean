import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw373
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody373_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody373_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody373_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody373_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody373_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody373_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody373_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def AllocBody373_7 : StackLang.HolProg 64 :=
.seq AllocBody373_5 AllocBody373_6

def AllocBody373_8 : StackLang.HolProg 64 :=
.seq AllocBody373_4 AllocBody373_7

def AllocBody373_9 : StackLang.HolProg 64 :=
.seq AllocBody373_3 AllocBody373_8

def AllocBody373_10 : StackLang.HolProg 64 :=
.seq AllocBody373_2 AllocBody373_9

def AllocBody373_11 : StackLang.HolProg 64 :=
.seq AllocBody373_1 AllocBody373_10

def AllocBody373_12 : StackLang.HolProg 64 :=
.seq AllocBody373_0 AllocBody373_11

def Alloc373 : Nat × StackLang.HolProg 64 := (373, AllocBody373_12)
theorem Alloc373_eq : StackAlloc.progComp (373, raw373) = Alloc373 := by
  kernel_rfl
#print axioms Alloc373_eq
end InitECandidate.Proofs.BackendStages
