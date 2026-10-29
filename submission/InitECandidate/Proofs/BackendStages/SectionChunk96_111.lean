import InitECandidate.Proofs.BackendStages.NamedChunk96_111
import InitECandidate.Proofs.BackendStages.Section96
import InitECandidate.Proofs.BackendStages.Section97
import InitECandidate.Proofs.BackendStages.Section98
import InitECandidate.Proofs.BackendStages.Section99
import InitECandidate.Proofs.BackendStages.Section100
import InitECandidate.Proofs.BackendStages.Section101
import InitECandidate.Proofs.BackendStages.Section102
import InitECandidate.Proofs.BackendStages.Section103
import InitECandidate.Proofs.BackendStages.Section104
import InitECandidate.Proofs.BackendStages.Section105
import InitECandidate.Proofs.BackendStages.Section106
import InitECandidate.Proofs.BackendStages.Section107
import InitECandidate.Proofs.BackendStages.Section108
import InitECandidate.Proofs.BackendStages.Section109
import InitECandidate.Proofs.BackendStages.Section110
import InitECandidate.Proofs.BackendStages.Section111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk96_111
def sections : LabSem.LabProgHOL 64 := [section96, section97, section98, section99, section100, section101, section102, section103, section104, section105, section106, section107, section108, section109, section110, section111]
theorem compiled_eq : NamedChunk96_111.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named96, StackToLab.progToSectionHOL Named97, StackToLab.progToSectionHOL Named98, StackToLab.progToSectionHOL Named99, StackToLab.progToSectionHOL Named100, StackToLab.progToSectionHOL Named101, StackToLab.progToSectionHOL Named102, StackToLab.progToSectionHOL Named103, StackToLab.progToSectionHOL Named104, StackToLab.progToSectionHOL Named105, StackToLab.progToSectionHOL Named106, StackToLab.progToSectionHOL Named107, StackToLab.progToSectionHOL Named108, StackToLab.progToSectionHOL Named109, StackToLab.progToSectionHOL Named110, StackToLab.progToSectionHOL Named111] = sections
  rw [section96_eq, section97_eq, section98_eq, section99_eq, section100_eq, section101_eq, section102_eq, section103_eq, section104_eq, section105_eq, section106_eq, section107_eq, section108_eq, section109_eq, section110_eq, section111_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk96_111
