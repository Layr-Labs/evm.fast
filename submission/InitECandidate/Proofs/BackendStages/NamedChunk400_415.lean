import InitECandidate.Proofs.BackendStages.RemovedChunk400_415
import InitECandidate.Proofs.BackendStages.Named400
import InitECandidate.Proofs.BackendStages.Named401
import InitECandidate.Proofs.BackendStages.Named402
import InitECandidate.Proofs.BackendStages.Named403
import InitECandidate.Proofs.BackendStages.Named404
import InitECandidate.Proofs.BackendStages.Named405
import InitECandidate.Proofs.BackendStages.Named406
import InitECandidate.Proofs.BackendStages.Named407
import InitECandidate.Proofs.BackendStages.Named408
import InitECandidate.Proofs.BackendStages.Named409
import InitECandidate.Proofs.BackendStages.Named410
import InitECandidate.Proofs.BackendStages.Named411
import InitECandidate.Proofs.BackendStages.Named412
import InitECandidate.Proofs.BackendStages.Named413
import InitECandidate.Proofs.BackendStages.Named414
import InitECandidate.Proofs.BackendStages.Named415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk400_415
def bodies : List (Nat × StackLang.HolProg 64) := [Named400, Named401, Named402, Named403, Named404, Named405, Named406, Named407, Named408, Named409, Named410, Named411, Named412, Named413, Named414, Named415]
theorem compiled_eq : RemovedChunk400_415.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed400, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed401, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed402, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed403, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed404, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed405, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed406, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed407, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed408, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed409, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed410, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed411, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed412, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed413, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed414, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed415] = bodies
  rw [Named400_eq, Named401_eq, Named402_eq, Named403_eq, Named404_eq, Named405_eq, Named406_eq, Named407_eq, Named408_eq, Named409_eq, Named410_eq, Named411_eq, Named412_eq, Named413_eq, Named414_eq, Named415_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk400_415
