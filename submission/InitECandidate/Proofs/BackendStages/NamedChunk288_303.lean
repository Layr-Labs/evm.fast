import InitECandidate.Proofs.BackendStages.RemovedChunk288_303
import InitECandidate.Proofs.BackendStages.Named288
import InitECandidate.Proofs.BackendStages.Named289
import InitECandidate.Proofs.BackendStages.Named290
import InitECandidate.Proofs.BackendStages.Named291
import InitECandidate.Proofs.BackendStages.Named292
import InitECandidate.Proofs.BackendStages.Named293
import InitECandidate.Proofs.BackendStages.Named294
import InitECandidate.Proofs.BackendStages.Named295
import InitECandidate.Proofs.BackendStages.Named296
import InitECandidate.Proofs.BackendStages.Named297
import InitECandidate.Proofs.BackendStages.Named298
import InitECandidate.Proofs.BackendStages.Named299
import InitECandidate.Proofs.BackendStages.Named300
import InitECandidate.Proofs.BackendStages.Named301
import InitECandidate.Proofs.BackendStages.Named302
import InitECandidate.Proofs.BackendStages.Named303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk288_303
def bodies : List (Nat × StackLang.HolProg 64) := [Named288, Named289, Named290, Named291, Named292, Named293, Named294, Named295, Named296, Named297, Named298, Named299, Named300, Named301, Named302, Named303]
theorem compiled_eq : RemovedChunk288_303.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed288, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed289, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed290, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed291, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed292, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed293, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed294, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed295, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed296, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed297, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed298, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed299, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed300, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed301, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed302, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed303] = bodies
  rw [Named288_eq, Named289_eq, Named290_eq, Named291_eq, Named292_eq, Named293_eq, Named294_eq, Named295_eq, Named296_eq, Named297_eq, Named298_eq, Named299_eq, Named300_eq, Named301_eq, Named302_eq, Named303_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk288_303
