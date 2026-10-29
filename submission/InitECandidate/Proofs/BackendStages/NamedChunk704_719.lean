import InitECandidate.Proofs.BackendStages.RemovedChunk704_719
import InitECandidate.Proofs.BackendStages.Named704
import InitECandidate.Proofs.BackendStages.Named705
import InitECandidate.Proofs.BackendStages.Named706
import InitECandidate.Proofs.BackendStages.Named707
import InitECandidate.Proofs.BackendStages.Named708
import InitECandidate.Proofs.BackendStages.Named709
import InitECandidate.Proofs.BackendStages.Named710
import InitECandidate.Proofs.BackendStages.Named711
import InitECandidate.Proofs.BackendStages.Named712
import InitECandidate.Proofs.BackendStages.Named713
import InitECandidate.Proofs.BackendStages.Named714
import InitECandidate.Proofs.BackendStages.Named715
import InitECandidate.Proofs.BackendStages.Named716
import InitECandidate.Proofs.BackendStages.Named717
import InitECandidate.Proofs.BackendStages.Named718
import InitECandidate.Proofs.BackendStages.Named719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk704_719
def bodies : List (Nat × StackLang.HolProg 64) := [Named704, Named705, Named706, Named707, Named708, Named709, Named710, Named711, Named712, Named713, Named714, Named715, Named716, Named717, Named718, Named719]
theorem compiled_eq : RemovedChunk704_719.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed704, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed705, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed706, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed707, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed708, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed709, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed710, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed711, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed712, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed713, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed714, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed715, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed716, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed717, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed718, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed719] = bodies
  rw [Named704_eq, Named705_eq, Named706_eq, Named707_eq, Named708_eq, Named709_eq, Named710_eq, Named711_eq, Named712_eq, Named713_eq, Named714_eq, Named715_eq, Named716_eq, Named717_eq, Named718_eq, Named719_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk704_719
