import InitECandidate.Proofs.BackendStages.AllocChunk720_735
import InitECandidate.Proofs.BackendStages.Removed720
import InitECandidate.Proofs.BackendStages.Removed721
import InitECandidate.Proofs.BackendStages.Removed722
import InitECandidate.Proofs.BackendStages.Removed723
import InitECandidate.Proofs.BackendStages.Removed724
import InitECandidate.Proofs.BackendStages.Removed725
import InitECandidate.Proofs.BackendStages.Removed726
import InitECandidate.Proofs.BackendStages.Removed727
import InitECandidate.Proofs.BackendStages.Removed728
import InitECandidate.Proofs.BackendStages.Removed729
import InitECandidate.Proofs.BackendStages.Removed730
import InitECandidate.Proofs.BackendStages.Removed731
import InitECandidate.Proofs.BackendStages.Removed732
import InitECandidate.Proofs.BackendStages.Removed733
import InitECandidate.Proofs.BackendStages.Removed734
import InitECandidate.Proofs.BackendStages.Removed735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk720_735
def bodies : List (Nat × StackLang.HolProg 64) := [Removed720, Removed721, Removed722, Removed723, Removed724, Removed725, Removed726, Removed727, Removed728, Removed729, Removed730, Removed731, Removed732, Removed733, Removed734, Removed735]
theorem compiled_eq : AllocChunk720_735.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc720, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc721, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc722, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc723, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc724, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc725, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc726, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc727, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc728, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc729, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc730, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc731, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc732, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc733, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc734, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc735] = bodies
  rw [Removed720_eq, Removed721_eq, Removed722_eq, Removed723_eq, Removed724_eq, Removed725_eq, Removed726_eq, Removed727_eq, Removed728_eq, Removed729_eq, Removed730_eq, Removed731_eq, Removed732_eq, Removed733_eq, Removed734_eq, Removed735_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk720_735
