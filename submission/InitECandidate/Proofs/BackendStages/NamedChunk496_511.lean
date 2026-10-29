import InitECandidate.Proofs.BackendStages.RemovedChunk496_511
import InitECandidate.Proofs.BackendStages.Named496
import InitECandidate.Proofs.BackendStages.Named497
import InitECandidate.Proofs.BackendStages.Named498
import InitECandidate.Proofs.BackendStages.Named499
import InitECandidate.Proofs.BackendStages.Named500
import InitECandidate.Proofs.BackendStages.Named501
import InitECandidate.Proofs.BackendStages.Named502
import InitECandidate.Proofs.BackendStages.Named503
import InitECandidate.Proofs.BackendStages.Named504
import InitECandidate.Proofs.BackendStages.Named505
import InitECandidate.Proofs.BackendStages.Named506
import InitECandidate.Proofs.BackendStages.Named507
import InitECandidate.Proofs.BackendStages.Named508
import InitECandidate.Proofs.BackendStages.Named509
import InitECandidate.Proofs.BackendStages.Named510
import InitECandidate.Proofs.BackendStages.Named511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk496_511
def bodies : List (Nat × StackLang.HolProg 64) := [Named496, Named497, Named498, Named499, Named500, Named501, Named502, Named503, Named504, Named505, Named506, Named507, Named508, Named509, Named510, Named511]
theorem compiled_eq : RemovedChunk496_511.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed496, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed497, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed498, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed499, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed500, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed501, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed502, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed503, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed504, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed505, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed506, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed507, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed508, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed509, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed510, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed511] = bodies
  rw [Named496_eq, Named497_eq, Named498_eq, Named499_eq, Named500_eq, Named501_eq, Named502_eq, Named503_eq, Named504_eq, Named505_eq, Named506_eq, Named507_eq, Named508_eq, Named509_eq, Named510_eq, Named511_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk496_511
