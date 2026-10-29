import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed759
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody759_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody759_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody759_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody759_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 758) none

def NamedBody759_4 : StackLang.HolProg 64 :=
.seq NamedBody759_2 NamedBody759_3

def NamedBody759_5 : StackLang.HolProg 64 :=
.seq NamedBody759_1 NamedBody759_4

def NamedBody759_6 : StackLang.HolProg 64 :=
.seq NamedBody759_0 NamedBody759_5

def Named759 : Nat × StackLang.HolProg 64 := (759, NamedBody759_6)
theorem Named759_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed759 = Named759 := by
  kernel_rfl
#print axioms Named759_eq
end InitECandidate.Proofs.BackendStages
