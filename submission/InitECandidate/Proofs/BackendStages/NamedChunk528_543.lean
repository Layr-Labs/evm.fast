import InitECandidate.Proofs.BackendStages.RemovedChunk528_543
import InitECandidate.Proofs.BackendStages.Named528
import InitECandidate.Proofs.BackendStages.Named529
import InitECandidate.Proofs.BackendStages.Named530
import InitECandidate.Proofs.BackendStages.Named531
import InitECandidate.Proofs.BackendStages.Named532
import InitECandidate.Proofs.BackendStages.Named533
import InitECandidate.Proofs.BackendStages.Named534
import InitECandidate.Proofs.BackendStages.Named535
import InitECandidate.Proofs.BackendStages.Named536
import InitECandidate.Proofs.BackendStages.Named537
import InitECandidate.Proofs.BackendStages.Named538
import InitECandidate.Proofs.BackendStages.Named539
import InitECandidate.Proofs.BackendStages.Named540
import InitECandidate.Proofs.BackendStages.Named541
import InitECandidate.Proofs.BackendStages.Named542
import InitECandidate.Proofs.BackendStages.Named543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk528_543
def bodies : List (Nat × StackLang.HolProg 64) := [Named528, Named529, Named530, Named531, Named532, Named533, Named534, Named535, Named536, Named537, Named538, Named539, Named540, Named541, Named542, Named543]
theorem compiled_eq : RemovedChunk528_543.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed528, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed529, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed530, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed531, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed532, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed533, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed534, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed535, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed536, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed537, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed538, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed539, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed540, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed541, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed542, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed543] = bodies
  rw [Named528_eq, Named529_eq, Named530_eq, Named531_eq, Named532_eq, Named533_eq, Named534_eq, Named535_eq, Named536_eq, Named537_eq, Named538_eq, Named539_eq, Named540_eq, Named541_eq, Named542_eq, Named543_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk528_543
