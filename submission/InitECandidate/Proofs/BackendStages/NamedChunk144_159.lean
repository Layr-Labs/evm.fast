import InitECandidate.Proofs.BackendStages.RemovedChunk144_159
import InitECandidate.Proofs.BackendStages.Named144
import InitECandidate.Proofs.BackendStages.Named145
import InitECandidate.Proofs.BackendStages.Named146
import InitECandidate.Proofs.BackendStages.Named147
import InitECandidate.Proofs.BackendStages.Named148
import InitECandidate.Proofs.BackendStages.Named149
import InitECandidate.Proofs.BackendStages.Named150
import InitECandidate.Proofs.BackendStages.Named151
import InitECandidate.Proofs.BackendStages.Named152
import InitECandidate.Proofs.BackendStages.Named153
import InitECandidate.Proofs.BackendStages.Named154
import InitECandidate.Proofs.BackendStages.Named155
import InitECandidate.Proofs.BackendStages.Named156
import InitECandidate.Proofs.BackendStages.Named157
import InitECandidate.Proofs.BackendStages.Named158
import InitECandidate.Proofs.BackendStages.Named159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk144_159
def bodies : List (Nat × StackLang.HolProg 64) := [Named144, Named145, Named146, Named147, Named148, Named149, Named150, Named151, Named152, Named153, Named154, Named155, Named156, Named157, Named158, Named159]
theorem compiled_eq : RemovedChunk144_159.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed144, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed145, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed146, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed147, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed148, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed149, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed150, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed151, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed152, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed153, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed154, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed155, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed156, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed157, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed158, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed159] = bodies
  rw [Named144_eq, Named145_eq, Named146_eq, Named147_eq, Named148_eq, Named149_eq, Named150_eq, Named151_eq, Named152_eq, Named153_eq, Named154_eq, Named155_eq, Named156_eq, Named157_eq, Named158_eq, Named159_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk144_159
