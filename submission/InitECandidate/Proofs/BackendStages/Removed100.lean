import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc100
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody100_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody100_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody100_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody100_3 : StackLang.HolProg 64 :=
.seq RemovedBody100_1 RemovedBody100_2

def RemovedBody100_4 : StackLang.HolProg 64 :=
.seq RemovedBody100_0 RemovedBody100_3

def Removed100 : Nat × StackLang.HolProg 64 := (100, RemovedBody100_4)
theorem Removed100_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc100 = Removed100 := by
  kernel_rfl
#print axioms Removed100_eq
end InitECandidate.Proofs.BackendStages
