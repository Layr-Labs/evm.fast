import InitECandidate.Proofs.BackendStages.NamedChunk544_559
import InitECandidate.Proofs.BackendStages.Section544
import InitECandidate.Proofs.BackendStages.Section545
import InitECandidate.Proofs.BackendStages.Section546
import InitECandidate.Proofs.BackendStages.Section547
import InitECandidate.Proofs.BackendStages.Section548
import InitECandidate.Proofs.BackendStages.Section549
import InitECandidate.Proofs.BackendStages.Section550
import InitECandidate.Proofs.BackendStages.Section551
import InitECandidate.Proofs.BackendStages.Section552
import InitECandidate.Proofs.BackendStages.Section553
import InitECandidate.Proofs.BackendStages.Section554
import InitECandidate.Proofs.BackendStages.Section555
import InitECandidate.Proofs.BackendStages.Section556
import InitECandidate.Proofs.BackendStages.Section557
import InitECandidate.Proofs.BackendStages.Section558
import InitECandidate.Proofs.BackendStages.Section559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk544_559
def sections : LabSem.LabProgHOL 64 := [section544, section545, section546, section547, section548, section549, section550, section551, section552, section553, section554, section555, section556, section557, section558, section559]
theorem compiled_eq : NamedChunk544_559.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named544, StackToLab.progToSectionHOL Named545, StackToLab.progToSectionHOL Named546, StackToLab.progToSectionHOL Named547, StackToLab.progToSectionHOL Named548, StackToLab.progToSectionHOL Named549, StackToLab.progToSectionHOL Named550, StackToLab.progToSectionHOL Named551, StackToLab.progToSectionHOL Named552, StackToLab.progToSectionHOL Named553, StackToLab.progToSectionHOL Named554, StackToLab.progToSectionHOL Named555, StackToLab.progToSectionHOL Named556, StackToLab.progToSectionHOL Named557, StackToLab.progToSectionHOL Named558, StackToLab.progToSectionHOL Named559] = sections
  rw [section544_eq, section545_eq, section546_eq, section547_eq, section548_eq, section549_eq, section550_eq, section551_eq, section552_eq, section553_eq, section554_eq, section555_eq, section556_eq, section557_eq, section558_eq, section559_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk544_559
