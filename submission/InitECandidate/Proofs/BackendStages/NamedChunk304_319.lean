import InitECandidate.Proofs.BackendStages.RemovedChunk304_319
import InitECandidate.Proofs.BackendStages.Named304
import InitECandidate.Proofs.BackendStages.Named305
import InitECandidate.Proofs.BackendStages.Named306
import InitECandidate.Proofs.BackendStages.Named307
import InitECandidate.Proofs.BackendStages.Named308
import InitECandidate.Proofs.BackendStages.Named309
import InitECandidate.Proofs.BackendStages.Named310
import InitECandidate.Proofs.BackendStages.Named311
import InitECandidate.Proofs.BackendStages.Named312
import InitECandidate.Proofs.BackendStages.Named313
import InitECandidate.Proofs.BackendStages.Named314
import InitECandidate.Proofs.BackendStages.Named315
import InitECandidate.Proofs.BackendStages.Named316
import InitECandidate.Proofs.BackendStages.Named317
import InitECandidate.Proofs.BackendStages.Named318
import InitECandidate.Proofs.BackendStages.Named319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk304_319
def bodies : List (Nat × StackLang.HolProg 64) := [Named304, Named305, Named306, Named307, Named308, Named309, Named310, Named311, Named312, Named313, Named314, Named315, Named316, Named317, Named318, Named319]
theorem compiled_eq : RemovedChunk304_319.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed304, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed305, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed306, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed307, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed308, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed309, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed310, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed311, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed312, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed313, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed314, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed315, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed316, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed317, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed318, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed319] = bodies
  rw [Named304_eq, Named305_eq, Named306_eq, Named307_eq, Named308_eq, Named309_eq, Named310_eq, Named311_eq, Named312_eq, Named313_eq, Named314_eq, Named315_eq, Named316_eq, Named317_eq, Named318_eq, Named319_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk304_319
