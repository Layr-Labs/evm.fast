import InitECandidate.Proofs.BackendStages.RemovedChunk592_607
import InitECandidate.Proofs.BackendStages.Named592
import InitECandidate.Proofs.BackendStages.Named593
import InitECandidate.Proofs.BackendStages.Named594
import InitECandidate.Proofs.BackendStages.Named595
import InitECandidate.Proofs.BackendStages.Named596
import InitECandidate.Proofs.BackendStages.Named597
import InitECandidate.Proofs.BackendStages.Named598
import InitECandidate.Proofs.BackendStages.Named599
import InitECandidate.Proofs.BackendStages.Named600
import InitECandidate.Proofs.BackendStages.Named601
import InitECandidate.Proofs.BackendStages.Named602
import InitECandidate.Proofs.BackendStages.Named603
import InitECandidate.Proofs.BackendStages.Named604
import InitECandidate.Proofs.BackendStages.Named605
import InitECandidate.Proofs.BackendStages.Named606
import InitECandidate.Proofs.BackendStages.Named607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk592_607
def bodies : List (Nat × StackLang.HolProg 64) := [Named592, Named593, Named594, Named595, Named596, Named597, Named598, Named599, Named600, Named601, Named602, Named603, Named604, Named605, Named606, Named607]
theorem compiled_eq : RemovedChunk592_607.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed592, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed593, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed594, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed595, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed596, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed597, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed598, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed599, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed600, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed601, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed602, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed603, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed604, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed605, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed606, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed607] = bodies
  rw [Named592_eq, Named593_eq, Named594_eq, Named595_eq, Named596_eq, Named597_eq, Named598_eq, Named599_eq, Named600_eq, Named601_eq, Named602_eq, Named603_eq, Named604_eq, Named605_eq, Named606_eq, Named607_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk592_607
