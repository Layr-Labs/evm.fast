import InitECandidate.Proofs.BackendStages.RemovedChunk656_671
import InitECandidate.Proofs.BackendStages.Named656
import InitECandidate.Proofs.BackendStages.Named657
import InitECandidate.Proofs.BackendStages.Named658
import InitECandidate.Proofs.BackendStages.Named659
import InitECandidate.Proofs.BackendStages.Named660
import InitECandidate.Proofs.BackendStages.Named661
import InitECandidate.Proofs.BackendStages.Named662
import InitECandidate.Proofs.BackendStages.Named663
import InitECandidate.Proofs.BackendStages.Named664
import InitECandidate.Proofs.BackendStages.Named665
import InitECandidate.Proofs.BackendStages.Named666
import InitECandidate.Proofs.BackendStages.Named667
import InitECandidate.Proofs.BackendStages.Named668
import InitECandidate.Proofs.BackendStages.Named669
import InitECandidate.Proofs.BackendStages.Named670
import InitECandidate.Proofs.BackendStages.Named671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk656_671
def bodies : List (Nat × StackLang.HolProg 64) := [Named656, Named657, Named658, Named659, Named660, Named661, Named662, Named663, Named664, Named665, Named666, Named667, Named668, Named669, Named670, Named671]
theorem compiled_eq : RemovedChunk656_671.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed656, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed657, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed658, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed659, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed660, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed661, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed662, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed663, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed664, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed665, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed666, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed667, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed668, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed669, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed670, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed671] = bodies
  rw [Named656_eq, Named657_eq, Named658_eq, Named659_eq, Named660_eq, Named661_eq, Named662_eq, Named663_eq, Named664_eq, Named665_eq, Named666_eq, Named667_eq, Named668_eq, Named669_eq, Named670_eq, Named671_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk656_671
