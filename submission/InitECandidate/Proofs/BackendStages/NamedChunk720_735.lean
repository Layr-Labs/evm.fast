import InitECandidate.Proofs.BackendStages.RemovedChunk720_735
import InitECandidate.Proofs.BackendStages.Named720
import InitECandidate.Proofs.BackendStages.Named721
import InitECandidate.Proofs.BackendStages.Named722
import InitECandidate.Proofs.BackendStages.Named723
import InitECandidate.Proofs.BackendStages.Named724
import InitECandidate.Proofs.BackendStages.Named725
import InitECandidate.Proofs.BackendStages.Named726
import InitECandidate.Proofs.BackendStages.Named727
import InitECandidate.Proofs.BackendStages.Named728
import InitECandidate.Proofs.BackendStages.Named729
import InitECandidate.Proofs.BackendStages.Named730
import InitECandidate.Proofs.BackendStages.Named731
import InitECandidate.Proofs.BackendStages.Named732
import InitECandidate.Proofs.BackendStages.Named733
import InitECandidate.Proofs.BackendStages.Named734
import InitECandidate.Proofs.BackendStages.Named735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk720_735
def bodies : List (Nat × StackLang.HolProg 64) := [Named720, Named721, Named722, Named723, Named724, Named725, Named726, Named727, Named728, Named729, Named730, Named731, Named732, Named733, Named734, Named735]
theorem compiled_eq : RemovedChunk720_735.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed720, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed721, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed722, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed723, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed724, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed725, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed726, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed727, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed728, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed729, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed730, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed731, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed732, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed733, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed734, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed735] = bodies
  rw [Named720_eq, Named721_eq, Named722_eq, Named723_eq, Named724_eq, Named725_eq, Named726_eq, Named727_eq, Named728_eq, Named729_eq, Named730_eq, Named731_eq, Named732_eq, Named733_eq, Named734_eq, Named735_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk720_735
