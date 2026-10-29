import InitECandidate.Proofs.BackendStages.AllocChunk768_783
import InitECandidate.Proofs.BackendStages.Removed768
import InitECandidate.Proofs.BackendStages.Removed769
import InitECandidate.Proofs.BackendStages.Removed770
import InitECandidate.Proofs.BackendStages.Removed771
import InitECandidate.Proofs.BackendStages.Removed772
import InitECandidate.Proofs.BackendStages.Removed773
import InitECandidate.Proofs.BackendStages.Removed774
import InitECandidate.Proofs.BackendStages.Removed775
import InitECandidate.Proofs.BackendStages.Removed776
import InitECandidate.Proofs.BackendStages.Removed777
import InitECandidate.Proofs.BackendStages.Removed778
import InitECandidate.Proofs.BackendStages.Removed779
import InitECandidate.Proofs.BackendStages.Removed780
import InitECandidate.Proofs.BackendStages.Removed781
import InitECandidate.Proofs.BackendStages.Removed782
import InitECandidate.Proofs.BackendStages.Removed783
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk768_783
def bodies : List (Nat × StackLang.HolProg 64) := [Removed768, Removed769, Removed770, Removed771, Removed772, Removed773, Removed774, Removed775, Removed776, Removed777, Removed778, Removed779, Removed780, Removed781, Removed782, Removed783]
theorem compiled_eq : AllocChunk768_783.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc768, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc769, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc770, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc771, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc772, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc773, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc774, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc775, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc776, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc777, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc778, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc779, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc780, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc781, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc782, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc783] = bodies
  rw [Removed768_eq, Removed769_eq, Removed770_eq, Removed771_eq, Removed772_eq, Removed773_eq, Removed774_eq, Removed775_eq, Removed776_eq, Removed777_eq, Removed778_eq, Removed779_eq, Removed780_eq, Removed781_eq, Removed782_eq, Removed783_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk768_783
