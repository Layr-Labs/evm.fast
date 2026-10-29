import InitECandidate.Proofs.BackendStages.RemovedChunk208_223
import InitECandidate.Proofs.BackendStages.Named208
import InitECandidate.Proofs.BackendStages.Named209
import InitECandidate.Proofs.BackendStages.Named210
import InitECandidate.Proofs.BackendStages.Named211
import InitECandidate.Proofs.BackendStages.Named212
import InitECandidate.Proofs.BackendStages.Named213
import InitECandidate.Proofs.BackendStages.Named214
import InitECandidate.Proofs.BackendStages.Named215
import InitECandidate.Proofs.BackendStages.Named216
import InitECandidate.Proofs.BackendStages.Named217
import InitECandidate.Proofs.BackendStages.Named218
import InitECandidate.Proofs.BackendStages.Named219
import InitECandidate.Proofs.BackendStages.Named220
import InitECandidate.Proofs.BackendStages.Named221
import InitECandidate.Proofs.BackendStages.Named222
import InitECandidate.Proofs.BackendStages.Named223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk208_223
def bodies : List (Nat × StackLang.HolProg 64) := [Named208, Named209, Named210, Named211, Named212, Named213, Named214, Named215, Named216, Named217, Named218, Named219, Named220, Named221, Named222, Named223]
theorem compiled_eq : RemovedChunk208_223.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed208, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed209, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed210, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed211, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed212, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed213, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed214, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed215, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed216, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed217, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed218, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed219, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed220, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed221, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed222, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed223] = bodies
  rw [Named208_eq, Named209_eq, Named210_eq, Named211_eq, Named212_eq, Named213_eq, Named214_eq, Named215_eq, Named216_eq, Named217_eq, Named218_eq, Named219_eq, Named220_eq, Named221_eq, Named222_eq, Named223_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk208_223
