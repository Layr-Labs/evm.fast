import InitECandidate.Proofs.BackendStages.RemovedChunk848_863
import InitECandidate.Proofs.BackendStages.Named848
import InitECandidate.Proofs.BackendStages.Named849
import InitECandidate.Proofs.BackendStages.Named850
import InitECandidate.Proofs.BackendStages.Named851
import InitECandidate.Proofs.BackendStages.Named852
import InitECandidate.Proofs.BackendStages.Named853
import InitECandidate.Proofs.BackendStages.Named854
import InitECandidate.Proofs.BackendStages.Named855
import InitECandidate.Proofs.BackendStages.Named856
import InitECandidate.Proofs.BackendStages.Named857
import InitECandidate.Proofs.BackendStages.Named858
import InitECandidate.Proofs.BackendStages.Named859
import InitECandidate.Proofs.BackendStages.Named860
import InitECandidate.Proofs.BackendStages.Named861
import InitECandidate.Proofs.BackendStages.Named862
import InitECandidate.Proofs.BackendStages.Named863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk848_863
def bodies : List (Nat × StackLang.HolProg 64) := [Named848, Named849, Named850, Named851, Named852, Named853, Named854, Named855, Named856, Named857, Named858, Named859, Named860, Named861, Named862, Named863]
theorem compiled_eq : RemovedChunk848_863.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed848, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed849, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed850, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed851, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed852, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed853, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed854, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed855, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed856, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed857, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed858, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed859, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed860, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed861, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed862, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed863] = bodies
  rw [Named848_eq, Named849_eq, Named850_eq, Named851_eq, Named852_eq, Named853_eq, Named854_eq, Named855_eq, Named856_eq, Named857_eq, Named858_eq, Named859_eq, Named860_eq, Named861_eq, Named862_eq, Named863_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk848_863
