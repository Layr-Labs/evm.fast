import InitECandidate.Proofs.BackendStages.AllocChunk640_655
import InitECandidate.Proofs.BackendStages.Removed640
import InitECandidate.Proofs.BackendStages.Removed641
import InitECandidate.Proofs.BackendStages.Removed642
import InitECandidate.Proofs.BackendStages.Removed643
import InitECandidate.Proofs.BackendStages.Removed644
import InitECandidate.Proofs.BackendStages.Removed645
import InitECandidate.Proofs.BackendStages.Removed646
import InitECandidate.Proofs.BackendStages.Removed647
import InitECandidate.Proofs.BackendStages.Removed648
import InitECandidate.Proofs.BackendStages.Removed649
import InitECandidate.Proofs.BackendStages.Removed650
import InitECandidate.Proofs.BackendStages.Removed651
import InitECandidate.Proofs.BackendStages.Removed652
import InitECandidate.Proofs.BackendStages.Removed653
import InitECandidate.Proofs.BackendStages.Removed654
import InitECandidate.Proofs.BackendStages.Removed655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk640_655
def bodies : List (Nat × StackLang.HolProg 64) := [Removed640, Removed641, Removed642, Removed643, Removed644, Removed645, Removed646, Removed647, Removed648, Removed649, Removed650, Removed651, Removed652, Removed653, Removed654, Removed655]
theorem compiled_eq : AllocChunk640_655.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc640, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc641, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc642, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc643, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc644, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc645, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc646, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc647, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc648, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc649, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc650, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc651, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc652, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc653, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc654, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc655] = bodies
  rw [Removed640_eq, Removed641_eq, Removed642_eq, Removed643_eq, Removed644_eq, Removed645_eq, Removed646_eq, Removed647_eq, Removed648_eq, Removed649_eq, Removed650_eq, Removed651_eq, Removed652_eq, Removed653_eq, Removed654_eq, Removed655_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk640_655
