import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc180
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody180_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody180_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody180_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody180_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 175) none

def RemovedBody180_4 : StackLang.HolProg 64 :=
.seq RemovedBody180_2 RemovedBody180_3

def RemovedBody180_5 : StackLang.HolProg 64 :=
.seq RemovedBody180_1 RemovedBody180_4

def RemovedBody180_6 : StackLang.HolProg 64 :=
.seq RemovedBody180_0 RemovedBody180_5

def Removed180 : Nat × StackLang.HolProg 64 := (180, RemovedBody180_6)
theorem Removed180_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc180 = Removed180 := by
  kernel_rfl
#print axioms Removed180_eq
end InitECandidate.Proofs.BackendStages
