import InitECandidate.Proofs.BackendStages.RemovedChunk768_783
import InitECandidate.Proofs.BackendStages.Named768
import InitECandidate.Proofs.BackendStages.Named769
import InitECandidate.Proofs.BackendStages.Named770
import InitECandidate.Proofs.BackendStages.Named771
import InitECandidate.Proofs.BackendStages.Named772
import InitECandidate.Proofs.BackendStages.Named773
import InitECandidate.Proofs.BackendStages.Named774
import InitECandidate.Proofs.BackendStages.Named775
import InitECandidate.Proofs.BackendStages.Named776
import InitECandidate.Proofs.BackendStages.Named777
import InitECandidate.Proofs.BackendStages.Named778
import InitECandidate.Proofs.BackendStages.Named779
import InitECandidate.Proofs.BackendStages.Named780
import InitECandidate.Proofs.BackendStages.Named781
import InitECandidate.Proofs.BackendStages.Named782
import InitECandidate.Proofs.BackendStages.Named783
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk768_783
def bodies : List (Nat × StackLang.HolProg 64) := [Named768, Named769, Named770, Named771, Named772, Named773, Named774, Named775, Named776, Named777, Named778, Named779, Named780, Named781, Named782, Named783]
theorem compiled_eq : RemovedChunk768_783.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed768, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed769, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed770, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed771, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed772, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed773, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed774, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed775, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed776, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed777, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed778, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed779, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed780, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed781, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed782, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed783] = bodies
  rw [Named768_eq, Named769_eq, Named770_eq, Named771_eq, Named772_eq, Named773_eq, Named774_eq, Named775_eq, Named776_eq, Named777_eq, Named778_eq, Named779_eq, Named780_eq, Named781_eq, Named782_eq, Named783_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk768_783
