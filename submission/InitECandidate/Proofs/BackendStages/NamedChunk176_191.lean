import InitECandidate.Proofs.BackendStages.RemovedChunk176_191
import InitECandidate.Proofs.BackendStages.Named176
import InitECandidate.Proofs.BackendStages.Named177
import InitECandidate.Proofs.BackendStages.Named178
import InitECandidate.Proofs.BackendStages.Named179
import InitECandidate.Proofs.BackendStages.Named180
import InitECandidate.Proofs.BackendStages.Named181
import InitECandidate.Proofs.BackendStages.Named182
import InitECandidate.Proofs.BackendStages.Named183
import InitECandidate.Proofs.BackendStages.Named184
import InitECandidate.Proofs.BackendStages.Named185
import InitECandidate.Proofs.BackendStages.Named186
import InitECandidate.Proofs.BackendStages.Named187
import InitECandidate.Proofs.BackendStages.Named188
import InitECandidate.Proofs.BackendStages.Named189
import InitECandidate.Proofs.BackendStages.Named190
import InitECandidate.Proofs.BackendStages.Named191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk176_191
def bodies : List (Nat × StackLang.HolProg 64) := [Named176, Named177, Named178, Named179, Named180, Named181, Named182, Named183, Named184, Named185, Named186, Named187, Named188, Named189, Named190, Named191]
theorem compiled_eq : RemovedChunk176_191.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed176, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed177, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed178, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed179, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed180, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed181, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed182, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed183, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed184, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed185, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed186, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed187, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed188, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed189, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed190, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed191] = bodies
  rw [Named176_eq, Named177_eq, Named178_eq, Named179_eq, Named180_eq, Named181_eq, Named182_eq, Named183_eq, Named184_eq, Named185_eq, Named186_eq, Named187_eq, Named188_eq, Named189_eq, Named190_eq, Named191_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk176_191
