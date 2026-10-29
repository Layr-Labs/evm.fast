import InitECandidate.Proofs.BackendStages.RemovedChunk336_351
import InitECandidate.Proofs.BackendStages.Named336
import InitECandidate.Proofs.BackendStages.Named337
import InitECandidate.Proofs.BackendStages.Named338
import InitECandidate.Proofs.BackendStages.Named339
import InitECandidate.Proofs.BackendStages.Named340
import InitECandidate.Proofs.BackendStages.Named341
import InitECandidate.Proofs.BackendStages.Named342
import InitECandidate.Proofs.BackendStages.Named343
import InitECandidate.Proofs.BackendStages.Named344
import InitECandidate.Proofs.BackendStages.Named345
import InitECandidate.Proofs.BackendStages.Named346
import InitECandidate.Proofs.BackendStages.Named347
import InitECandidate.Proofs.BackendStages.Named348
import InitECandidate.Proofs.BackendStages.Named349
import InitECandidate.Proofs.BackendStages.Named350
import InitECandidate.Proofs.BackendStages.Named351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk336_351
def bodies : List (Nat × StackLang.HolProg 64) := [Named336, Named337, Named338, Named339, Named340, Named341, Named342, Named343, Named344, Named345, Named346, Named347, Named348, Named349, Named350, Named351]
theorem compiled_eq : RemovedChunk336_351.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed336, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed337, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed338, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed339, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed340, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed341, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed342, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed343, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed344, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed345, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed346, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed347, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed348, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed349, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed350, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed351] = bodies
  rw [Named336_eq, Named337_eq, Named338_eq, Named339_eq, Named340_eq, Named341_eq, Named342_eq, Named343_eq, Named344_eq, Named345_eq, Named346_eq, Named347_eq, Named348_eq, Named349_eq, Named350_eq, Named351_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk336_351
