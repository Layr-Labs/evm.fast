import InitECandidate.Proofs.BackendStages.RemovedChunk448_463
import InitECandidate.Proofs.BackendStages.Named448
import InitECandidate.Proofs.BackendStages.Named449
import InitECandidate.Proofs.BackendStages.Named450
import InitECandidate.Proofs.BackendStages.Named451
import InitECandidate.Proofs.BackendStages.Named452
import InitECandidate.Proofs.BackendStages.Named453
import InitECandidate.Proofs.BackendStages.Named454
import InitECandidate.Proofs.BackendStages.Named455
import InitECandidate.Proofs.BackendStages.Named456
import InitECandidate.Proofs.BackendStages.Named457
import InitECandidate.Proofs.BackendStages.Named458
import InitECandidate.Proofs.BackendStages.Named459
import InitECandidate.Proofs.BackendStages.Named460
import InitECandidate.Proofs.BackendStages.Named461
import InitECandidate.Proofs.BackendStages.Named462
import InitECandidate.Proofs.BackendStages.Named463
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk448_463
def bodies : List (Nat × StackLang.HolProg 64) := [Named448, Named449, Named450, Named451, Named452, Named453, Named454, Named455, Named456, Named457, Named458, Named459, Named460, Named461, Named462, Named463]
theorem compiled_eq : RemovedChunk448_463.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed448, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed449, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed450, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed451, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed452, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed453, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed454, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed455, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed456, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed457, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed458, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed459, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed460, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed461, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed462, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed463] = bodies
  rw [Named448_eq, Named449_eq, Named450_eq, Named451_eq, Named452_eq, Named453_eq, Named454_eq, Named455_eq, Named456_eq, Named457_eq, Named458_eq, Named459_eq, Named460_eq, Named461_eq, Named462_eq, Named463_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk448_463
