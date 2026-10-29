import InitECandidate.Proofs.BackendStages.RemovedChunk192_207
import InitECandidate.Proofs.BackendStages.Named192
import InitECandidate.Proofs.BackendStages.Named193
import InitECandidate.Proofs.BackendStages.Named194
import InitECandidate.Proofs.BackendStages.Named195
import InitECandidate.Proofs.BackendStages.Named196
import InitECandidate.Proofs.BackendStages.Named197
import InitECandidate.Proofs.BackendStages.Named198
import InitECandidate.Proofs.BackendStages.Named199
import InitECandidate.Proofs.BackendStages.Named200
import InitECandidate.Proofs.BackendStages.Named201
import InitECandidate.Proofs.BackendStages.Named202
import InitECandidate.Proofs.BackendStages.Named203
import InitECandidate.Proofs.BackendStages.Named204
import InitECandidate.Proofs.BackendStages.Named205
import InitECandidate.Proofs.BackendStages.Named206
import InitECandidate.Proofs.BackendStages.Named207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk192_207
def bodies : List (Nat × StackLang.HolProg 64) := [Named192, Named193, Named194, Named195, Named196, Named197, Named198, Named199, Named200, Named201, Named202, Named203, Named204, Named205, Named206, Named207]
theorem compiled_eq : RemovedChunk192_207.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed192, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed193, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed194, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed195, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed196, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed197, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed198, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed199, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed200, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed201, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed202, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed203, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed204, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed205, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed206, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed207] = bodies
  rw [Named192_eq, Named193_eq, Named194_eq, Named195_eq, Named196_eq, Named197_eq, Named198_eq, Named199_eq, Named200_eq, Named201_eq, Named202_eq, Named203_eq, Named204_eq, Named205_eq, Named206_eq, Named207_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk192_207
