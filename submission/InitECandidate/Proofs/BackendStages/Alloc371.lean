import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw371
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody371_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody371_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody371_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody371_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody371_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody371_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody371_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def AllocBody371_7 : StackLang.HolProg 64 :=
.seq AllocBody371_5 AllocBody371_6

def AllocBody371_8 : StackLang.HolProg 64 :=
.seq AllocBody371_4 AllocBody371_7

def AllocBody371_9 : StackLang.HolProg 64 :=
.seq AllocBody371_3 AllocBody371_8

def AllocBody371_10 : StackLang.HolProg 64 :=
.seq AllocBody371_2 AllocBody371_9

def AllocBody371_11 : StackLang.HolProg 64 :=
.seq AllocBody371_1 AllocBody371_10

def AllocBody371_12 : StackLang.HolProg 64 :=
.seq AllocBody371_0 AllocBody371_11

def Alloc371 : Nat × StackLang.HolProg 64 := (371, AllocBody371_12)
theorem Alloc371_eq : StackAlloc.progComp (371, raw371) = Alloc371 := by
  kernel_rfl
#print axioms Alloc371_eq
end InitECandidate.Proofs.BackendStages
