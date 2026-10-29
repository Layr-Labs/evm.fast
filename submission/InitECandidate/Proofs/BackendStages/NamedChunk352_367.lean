import InitECandidate.Proofs.BackendStages.RemovedChunk352_367
import InitECandidate.Proofs.BackendStages.Named352
import InitECandidate.Proofs.BackendStages.Named353
import InitECandidate.Proofs.BackendStages.Named354
import InitECandidate.Proofs.BackendStages.Named355
import InitECandidate.Proofs.BackendStages.Named356
import InitECandidate.Proofs.BackendStages.Named357
import InitECandidate.Proofs.BackendStages.Named358
import InitECandidate.Proofs.BackendStages.Named359
import InitECandidate.Proofs.BackendStages.Named360
import InitECandidate.Proofs.BackendStages.Named361
import InitECandidate.Proofs.BackendStages.Named362
import InitECandidate.Proofs.BackendStages.Named363
import InitECandidate.Proofs.BackendStages.Named364
import InitECandidate.Proofs.BackendStages.Named365
import InitECandidate.Proofs.BackendStages.Named366
import InitECandidate.Proofs.BackendStages.Named367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk352_367
def bodies : List (Nat × StackLang.HolProg 64) := [Named352, Named353, Named354, Named355, Named356, Named357, Named358, Named359, Named360, Named361, Named362, Named363, Named364, Named365, Named366, Named367]
theorem compiled_eq : RemovedChunk352_367.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed352, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed353, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed354, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed355, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed356, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed357, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed358, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed359, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed360, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed361, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed362, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed363, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed364, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed365, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed366, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed367] = bodies
  rw [Named352_eq, Named353_eq, Named354_eq, Named355_eq, Named356_eq, Named357_eq, Named358_eq, Named359_eq, Named360_eq, Named361_eq, Named362_eq, Named363_eq, Named364_eq, Named365_eq, Named366_eq, Named367_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk352_367
