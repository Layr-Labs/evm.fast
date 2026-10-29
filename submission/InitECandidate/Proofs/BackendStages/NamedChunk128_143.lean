import InitECandidate.Proofs.BackendStages.RemovedChunk128_143
import InitECandidate.Proofs.BackendStages.Named128
import InitECandidate.Proofs.BackendStages.Named129
import InitECandidate.Proofs.BackendStages.Named130
import InitECandidate.Proofs.BackendStages.Named131
import InitECandidate.Proofs.BackendStages.Named132
import InitECandidate.Proofs.BackendStages.Named133
import InitECandidate.Proofs.BackendStages.Named134
import InitECandidate.Proofs.BackendStages.Named135
import InitECandidate.Proofs.BackendStages.Named136
import InitECandidate.Proofs.BackendStages.Named137
import InitECandidate.Proofs.BackendStages.Named138
import InitECandidate.Proofs.BackendStages.Named139
import InitECandidate.Proofs.BackendStages.Named140
import InitECandidate.Proofs.BackendStages.Named141
import InitECandidate.Proofs.BackendStages.Named142
import InitECandidate.Proofs.BackendStages.Named143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk128_143
def bodies : List (Nat × StackLang.HolProg 64) := [Named128, Named129, Named130, Named131, Named132, Named133, Named134, Named135, Named136, Named137, Named138, Named139, Named140, Named141, Named142, Named143]
theorem compiled_eq : RemovedChunk128_143.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed128, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed129, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed130, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed131, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed132, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed133, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed134, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed135, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed136, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed137, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed138, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed139, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed140, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed141, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed142, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed143] = bodies
  rw [Named128_eq, Named129_eq, Named130_eq, Named131_eq, Named132_eq, Named133_eq, Named134_eq, Named135_eq, Named136_eq, Named137_eq, Named138_eq, Named139_eq, Named140_eq, Named141_eq, Named142_eq, Named143_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk128_143
