import InitECandidate.Proofs.BackendStages.RemovedChunk368_383
import InitECandidate.Proofs.BackendStages.Named368
import InitECandidate.Proofs.BackendStages.Named369
import InitECandidate.Proofs.BackendStages.Named370
import InitECandidate.Proofs.BackendStages.Named371
import InitECandidate.Proofs.BackendStages.Named372
import InitECandidate.Proofs.BackendStages.Named373
import InitECandidate.Proofs.BackendStages.Named374
import InitECandidate.Proofs.BackendStages.Named375
import InitECandidate.Proofs.BackendStages.Named376
import InitECandidate.Proofs.BackendStages.Named377
import InitECandidate.Proofs.BackendStages.Named378
import InitECandidate.Proofs.BackendStages.Named379
import InitECandidate.Proofs.BackendStages.Named380
import InitECandidate.Proofs.BackendStages.Named381
import InitECandidate.Proofs.BackendStages.Named382
import InitECandidate.Proofs.BackendStages.Named383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk368_383
def bodies : List (Nat × StackLang.HolProg 64) := [Named368, Named369, Named370, Named371, Named372, Named373, Named374, Named375, Named376, Named377, Named378, Named379, Named380, Named381, Named382, Named383]
theorem compiled_eq : RemovedChunk368_383.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed368, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed369, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed370, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed371, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed372, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed373, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed374, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed375, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed376, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed377, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed378, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed379, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed380, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed381, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed382, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed383] = bodies
  rw [Named368_eq, Named369_eq, Named370_eq, Named371_eq, Named372_eq, Named373_eq, Named374_eq, Named375_eq, Named376_eq, Named377_eq, Named378_eq, Named379_eq, Named380_eq, Named381_eq, Named382_eq, Named383_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk368_383
