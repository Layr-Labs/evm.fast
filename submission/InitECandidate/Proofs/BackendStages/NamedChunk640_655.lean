import InitECandidate.Proofs.BackendStages.RemovedChunk640_655
import InitECandidate.Proofs.BackendStages.Named640
import InitECandidate.Proofs.BackendStages.Named641
import InitECandidate.Proofs.BackendStages.Named642
import InitECandidate.Proofs.BackendStages.Named643
import InitECandidate.Proofs.BackendStages.Named644
import InitECandidate.Proofs.BackendStages.Named645
import InitECandidate.Proofs.BackendStages.Named646
import InitECandidate.Proofs.BackendStages.Named647
import InitECandidate.Proofs.BackendStages.Named648
import InitECandidate.Proofs.BackendStages.Named649
import InitECandidate.Proofs.BackendStages.Named650
import InitECandidate.Proofs.BackendStages.Named651
import InitECandidate.Proofs.BackendStages.Named652
import InitECandidate.Proofs.BackendStages.Named653
import InitECandidate.Proofs.BackendStages.Named654
import InitECandidate.Proofs.BackendStages.Named655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk640_655
def bodies : List (Nat × StackLang.HolProg 64) := [Named640, Named641, Named642, Named643, Named644, Named645, Named646, Named647, Named648, Named649, Named650, Named651, Named652, Named653, Named654, Named655]
theorem compiled_eq : RemovedChunk640_655.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed640, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed641, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed642, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed643, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed644, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed645, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed646, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed647, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed648, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed649, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed650, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed651, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed652, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed653, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed654, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed655] = bodies
  rw [Named640_eq, Named641_eq, Named642_eq, Named643_eq, Named644_eq, Named645_eq, Named646_eq, Named647_eq, Named648_eq, Named649_eq, Named650_eq, Named651_eq, Named652_eq, Named653_eq, Named654_eq, Named655_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk640_655
