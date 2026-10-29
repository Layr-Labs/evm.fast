import InitECandidate.Proofs.BackendStages.RemovedChunk64_79
import InitECandidate.Proofs.BackendStages.Named64
import InitECandidate.Proofs.BackendStages.Named65
import InitECandidate.Proofs.BackendStages.Named66
import InitECandidate.Proofs.BackendStages.Named67
import InitECandidate.Proofs.BackendStages.Named68
import InitECandidate.Proofs.BackendStages.Named69
import InitECandidate.Proofs.BackendStages.Named70
import InitECandidate.Proofs.BackendStages.Named71
import InitECandidate.Proofs.BackendStages.Named72
import InitECandidate.Proofs.BackendStages.Named73
import InitECandidate.Proofs.BackendStages.Named74
import InitECandidate.Proofs.BackendStages.Named75
import InitECandidate.Proofs.BackendStages.Named76
import InitECandidate.Proofs.BackendStages.Named77
import InitECandidate.Proofs.BackendStages.Named78
import InitECandidate.Proofs.BackendStages.Named79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk64_79
def bodies : List (Nat × StackLang.HolProg 64) := [Named64, Named65, Named66, Named67, Named68, Named69, Named70, Named71, Named72, Named73, Named74, Named75, Named76, Named77, Named78, Named79]
theorem compiled_eq : RemovedChunk64_79.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed64, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed65, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed66, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed67, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed68, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed69, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed70, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed71, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed72, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed73, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed74, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed75, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed76, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed77, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed78, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed79] = bodies
  rw [Named64_eq, Named65_eq, Named66_eq, Named67_eq, Named68_eq, Named69_eq, Named70_eq, Named71_eq, Named72_eq, Named73_eq, Named74_eq, Named75_eq, Named76_eq, Named77_eq, Named78_eq, Named79_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk64_79
