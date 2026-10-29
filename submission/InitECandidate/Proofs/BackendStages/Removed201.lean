import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc201
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody201_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody201_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody201_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody201_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody201_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody201_5 : StackLang.HolProg 64 :=
.seq RemovedBody201_3 RemovedBody201_4

def RemovedBody201_6 : StackLang.HolProg 64 :=
.seq RemovedBody201_2 RemovedBody201_5

def RemovedBody201_7 : StackLang.HolProg 64 :=
.seq RemovedBody201_1 RemovedBody201_6

def RemovedBody201_8 : StackLang.HolProg 64 :=
.seq RemovedBody201_0 RemovedBody201_7

def Removed201 : Nat × StackLang.HolProg 64 := (201, RemovedBody201_8)
theorem Removed201_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc201 = Removed201 := by
  kernel_rfl
#print axioms Removed201_eq
end InitECandidate.Proofs.BackendStages
