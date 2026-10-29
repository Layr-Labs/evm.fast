import InitECandidate.Proofs.BackendStages.AllocChunk672_687
import InitECandidate.Proofs.BackendStages.Removed672
import InitECandidate.Proofs.BackendStages.Removed673
import InitECandidate.Proofs.BackendStages.Removed674
import InitECandidate.Proofs.BackendStages.Removed675
import InitECandidate.Proofs.BackendStages.Removed676
import InitECandidate.Proofs.BackendStages.Removed677
import InitECandidate.Proofs.BackendStages.Removed678
import InitECandidate.Proofs.BackendStages.Removed679
import InitECandidate.Proofs.BackendStages.Removed680
import InitECandidate.Proofs.BackendStages.Removed681
import InitECandidate.Proofs.BackendStages.Removed682
import InitECandidate.Proofs.BackendStages.Removed683
import InitECandidate.Proofs.BackendStages.Removed684
import InitECandidate.Proofs.BackendStages.Removed685
import InitECandidate.Proofs.BackendStages.Removed686
import InitECandidate.Proofs.BackendStages.Removed687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk672_687
def bodies : List (Nat × StackLang.HolProg 64) := [Removed672, Removed673, Removed674, Removed675, Removed676, Removed677, Removed678, Removed679, Removed680, Removed681, Removed682, Removed683, Removed684, Removed685, Removed686, Removed687]
theorem compiled_eq : AllocChunk672_687.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc672, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc673, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc674, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc675, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc676, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc677, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc678, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc679, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc680, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc681, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc682, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc683, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc684, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc685, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc686, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc687] = bodies
  rw [Removed672_eq, Removed673_eq, Removed674_eq, Removed675_eq, Removed676_eq, Removed677_eq, Removed678_eq, Removed679_eq, Removed680_eq, Removed681_eq, Removed682_eq, Removed683_eq, Removed684_eq, Removed685_eq, Removed686_eq, Removed687_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk672_687
