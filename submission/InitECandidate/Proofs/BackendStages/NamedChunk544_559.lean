import InitECandidate.Proofs.BackendStages.RemovedChunk544_559
import InitECandidate.Proofs.BackendStages.Named544
import InitECandidate.Proofs.BackendStages.Named545
import InitECandidate.Proofs.BackendStages.Named546
import InitECandidate.Proofs.BackendStages.Named547
import InitECandidate.Proofs.BackendStages.Named548
import InitECandidate.Proofs.BackendStages.Named549
import InitECandidate.Proofs.BackendStages.Named550
import InitECandidate.Proofs.BackendStages.Named551
import InitECandidate.Proofs.BackendStages.Named552
import InitECandidate.Proofs.BackendStages.Named553
import InitECandidate.Proofs.BackendStages.Named554
import InitECandidate.Proofs.BackendStages.Named555
import InitECandidate.Proofs.BackendStages.Named556
import InitECandidate.Proofs.BackendStages.Named557
import InitECandidate.Proofs.BackendStages.Named558
import InitECandidate.Proofs.BackendStages.Named559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk544_559
def bodies : List (Nat × StackLang.HolProg 64) := [Named544, Named545, Named546, Named547, Named548, Named549, Named550, Named551, Named552, Named553, Named554, Named555, Named556, Named557, Named558, Named559]
theorem compiled_eq : RemovedChunk544_559.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed544, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed545, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed546, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed547, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed548, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed549, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed550, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed551, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed552, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed553, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed554, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed555, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed556, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed557, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed558, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed559] = bodies
  rw [Named544_eq, Named545_eq, Named546_eq, Named547_eq, Named548_eq, Named549_eq, Named550_eq, Named551_eq, Named552_eq, Named553_eq, Named554_eq, Named555_eq, Named556_eq, Named557_eq, Named558_eq, Named559_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk544_559
