import InitECandidate.Proofs.BackendStages.RemovedChunk272_287
import InitECandidate.Proofs.BackendStages.Named272
import InitECandidate.Proofs.BackendStages.Named273
import InitECandidate.Proofs.BackendStages.Named274
import InitECandidate.Proofs.BackendStages.Named275
import InitECandidate.Proofs.BackendStages.Named276
import InitECandidate.Proofs.BackendStages.Named277
import InitECandidate.Proofs.BackendStages.Named278
import InitECandidate.Proofs.BackendStages.Named279
import InitECandidate.Proofs.BackendStages.Named280
import InitECandidate.Proofs.BackendStages.Named281
import InitECandidate.Proofs.BackendStages.Named282
import InitECandidate.Proofs.BackendStages.Named283
import InitECandidate.Proofs.BackendStages.Named284
import InitECandidate.Proofs.BackendStages.Named285
import InitECandidate.Proofs.BackendStages.Named286
import InitECandidate.Proofs.BackendStages.Named287
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk272_287
def bodies : List (Nat × StackLang.HolProg 64) := [Named272, Named273, Named274, Named275, Named276, Named277, Named278, Named279, Named280, Named281, Named282, Named283, Named284, Named285, Named286, Named287]
theorem compiled_eq : RemovedChunk272_287.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed272, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed273, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed274, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed275, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed276, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed277, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed278, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed279, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed280, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed281, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed282, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed283, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed284, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed285, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed286, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed287] = bodies
  rw [Named272_eq, Named273_eq, Named274_eq, Named275_eq, Named276_eq, Named277_eq, Named278_eq, Named279_eq, Named280_eq, Named281_eq, Named282_eq, Named283_eq, Named284_eq, Named285_eq, Named286_eq, Named287_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk272_287
