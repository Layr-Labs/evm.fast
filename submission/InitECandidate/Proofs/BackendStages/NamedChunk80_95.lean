import InitECandidate.Proofs.BackendStages.RemovedChunk80_95
import InitECandidate.Proofs.BackendStages.Named80
import InitECandidate.Proofs.BackendStages.Named81
import InitECandidate.Proofs.BackendStages.Named82
import InitECandidate.Proofs.BackendStages.Named83
import InitECandidate.Proofs.BackendStages.Named84
import InitECandidate.Proofs.BackendStages.Named85
import InitECandidate.Proofs.BackendStages.Named86
import InitECandidate.Proofs.BackendStages.Named87
import InitECandidate.Proofs.BackendStages.Named88
import InitECandidate.Proofs.BackendStages.Named89
import InitECandidate.Proofs.BackendStages.Named90
import InitECandidate.Proofs.BackendStages.Named91
import InitECandidate.Proofs.BackendStages.Named92
import InitECandidate.Proofs.BackendStages.Named93
import InitECandidate.Proofs.BackendStages.Named94
import InitECandidate.Proofs.BackendStages.Named95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk80_95
def bodies : List (Nat × StackLang.HolProg 64) := [Named80, Named81, Named82, Named83, Named84, Named85, Named86, Named87, Named88, Named89, Named90, Named91, Named92, Named93, Named94, Named95]
theorem compiled_eq : RemovedChunk80_95.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed80, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed81, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed82, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed83, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed84, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed85, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed86, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed87, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed88, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed89, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed90, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed91, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed92, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed93, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed94, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed95] = bodies
  rw [Named80_eq, Named81_eq, Named82_eq, Named83_eq, Named84_eq, Named85_eq, Named86_eq, Named87_eq, Named88_eq, Named89_eq, Named90_eq, Named91_eq, Named92_eq, Named93_eq, Named94_eq, Named95_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk80_95
