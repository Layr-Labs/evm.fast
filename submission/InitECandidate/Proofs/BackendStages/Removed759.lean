import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc759
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody759_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody759_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody759_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody759_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 758) none

def RemovedBody759_4 : StackLang.HolProg 64 :=
.seq RemovedBody759_2 RemovedBody759_3

def RemovedBody759_5 : StackLang.HolProg 64 :=
.seq RemovedBody759_1 RemovedBody759_4

def RemovedBody759_6 : StackLang.HolProg 64 :=
.seq RemovedBody759_0 RemovedBody759_5

def Removed759 : Nat × StackLang.HolProg 64 := (759, RemovedBody759_6)
theorem Removed759_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc759 = Removed759 := by
  kernel_rfl
#print axioms Removed759_eq
end InitECandidate.Proofs.BackendStages
