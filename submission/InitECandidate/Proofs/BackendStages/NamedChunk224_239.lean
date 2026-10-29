import InitECandidate.Proofs.BackendStages.RemovedChunk224_239
import InitECandidate.Proofs.BackendStages.Named224
import InitECandidate.Proofs.BackendStages.Named225
import InitECandidate.Proofs.BackendStages.Named226
import InitECandidate.Proofs.BackendStages.Named227
import InitECandidate.Proofs.BackendStages.Named228
import InitECandidate.Proofs.BackendStages.Named229
import InitECandidate.Proofs.BackendStages.Named230
import InitECandidate.Proofs.BackendStages.Named231
import InitECandidate.Proofs.BackendStages.Named232
import InitECandidate.Proofs.BackendStages.Named233
import InitECandidate.Proofs.BackendStages.Named234
import InitECandidate.Proofs.BackendStages.Named235
import InitECandidate.Proofs.BackendStages.Named236
import InitECandidate.Proofs.BackendStages.Named237
import InitECandidate.Proofs.BackendStages.Named238
import InitECandidate.Proofs.BackendStages.Named239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk224_239
def bodies : List (Nat × StackLang.HolProg 64) := [Named224, Named225, Named226, Named227, Named228, Named229, Named230, Named231, Named232, Named233, Named234, Named235, Named236, Named237, Named238, Named239]
theorem compiled_eq : RemovedChunk224_239.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed224, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed225, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed226, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed227, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed228, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed229, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed230, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed231, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed232, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed233, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed234, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed235, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed236, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed237, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed238, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed239] = bodies
  rw [Named224_eq, Named225_eq, Named226_eq, Named227_eq, Named228_eq, Named229_eq, Named230_eq, Named231_eq, Named232_eq, Named233_eq, Named234_eq, Named235_eq, Named236_eq, Named237_eq, Named238_eq, Named239_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk224_239
