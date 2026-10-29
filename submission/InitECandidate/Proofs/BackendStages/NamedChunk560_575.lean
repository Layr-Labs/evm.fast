import InitECandidate.Proofs.BackendStages.RemovedChunk560_575
import InitECandidate.Proofs.BackendStages.Named560
import InitECandidate.Proofs.BackendStages.Named561
import InitECandidate.Proofs.BackendStages.Named562
import InitECandidate.Proofs.BackendStages.Named563
import InitECandidate.Proofs.BackendStages.Named564
import InitECandidate.Proofs.BackendStages.Named565
import InitECandidate.Proofs.BackendStages.Named566
import InitECandidate.Proofs.BackendStages.Named567
import InitECandidate.Proofs.BackendStages.Named568
import InitECandidate.Proofs.BackendStages.Named569
import InitECandidate.Proofs.BackendStages.Named570
import InitECandidate.Proofs.BackendStages.Named571
import InitECandidate.Proofs.BackendStages.Named572
import InitECandidate.Proofs.BackendStages.Named573
import InitECandidate.Proofs.BackendStages.Named574
import InitECandidate.Proofs.BackendStages.Named575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk560_575
def bodies : List (Nat × StackLang.HolProg 64) := [Named560, Named561, Named562, Named563, Named564, Named565, Named566, Named567, Named568, Named569, Named570, Named571, Named572, Named573, Named574, Named575]
theorem compiled_eq : RemovedChunk560_575.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed560, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed561, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed562, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed563, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed564, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed565, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed566, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed567, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed568, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed569, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed570, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed571, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed572, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed573, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed574, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed575] = bodies
  rw [Named560_eq, Named561_eq, Named562_eq, Named563_eq, Named564_eq, Named565_eq, Named566_eq, Named567_eq, Named568_eq, Named569_eq, Named570_eq, Named571_eq, Named572_eq, Named573_eq, Named574_eq, Named575_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk560_575
