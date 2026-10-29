import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw376
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody376_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody376_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody376_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody376_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody376_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody376_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody376_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def AllocBody376_7 : StackLang.HolProg 64 :=
.seq AllocBody376_5 AllocBody376_6

def AllocBody376_8 : StackLang.HolProg 64 :=
.seq AllocBody376_4 AllocBody376_7

def AllocBody376_9 : StackLang.HolProg 64 :=
.seq AllocBody376_3 AllocBody376_8

def AllocBody376_10 : StackLang.HolProg 64 :=
.seq AllocBody376_2 AllocBody376_9

def AllocBody376_11 : StackLang.HolProg 64 :=
.seq AllocBody376_1 AllocBody376_10

def AllocBody376_12 : StackLang.HolProg 64 :=
.seq AllocBody376_0 AllocBody376_11

def Alloc376 : Nat × StackLang.HolProg 64 := (376, AllocBody376_12)
theorem Alloc376_eq : StackAlloc.progComp (376, raw376) = Alloc376 := by
  kernel_rfl
#print axioms Alloc376_eq
end InitECandidate.Proofs.BackendStages
