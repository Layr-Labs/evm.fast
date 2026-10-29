import InitECandidate.Proofs.BackendStages.NamedChunk848_863
import InitECandidate.Proofs.BackendStages.Section848
import InitECandidate.Proofs.BackendStages.Section849
import InitECandidate.Proofs.BackendStages.Section850
import InitECandidate.Proofs.BackendStages.Section851
import InitECandidate.Proofs.BackendStages.Section852
import InitECandidate.Proofs.BackendStages.Section853
import InitECandidate.Proofs.BackendStages.Section854
import InitECandidate.Proofs.BackendStages.Section855
import InitECandidate.Proofs.BackendStages.Section856
import InitECandidate.Proofs.BackendStages.Section857
import InitECandidate.Proofs.BackendStages.Section858
import InitECandidate.Proofs.BackendStages.Section859
import InitECandidate.Proofs.BackendStages.Section860
import InitECandidate.Proofs.BackendStages.Section861
import InitECandidate.Proofs.BackendStages.Section862
import InitECandidate.Proofs.BackendStages.Section863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk848_863
def sections : LabSem.LabProgHOL 64 := [section848, section849, section850, section851, section852, section853, section854, section855, section856, section857, section858, section859, section860, section861, section862, section863]
theorem compiled_eq : NamedChunk848_863.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named848, StackToLab.progToSectionHOL Named849, StackToLab.progToSectionHOL Named850, StackToLab.progToSectionHOL Named851, StackToLab.progToSectionHOL Named852, StackToLab.progToSectionHOL Named853, StackToLab.progToSectionHOL Named854, StackToLab.progToSectionHOL Named855, StackToLab.progToSectionHOL Named856, StackToLab.progToSectionHOL Named857, StackToLab.progToSectionHOL Named858, StackToLab.progToSectionHOL Named859, StackToLab.progToSectionHOL Named860, StackToLab.progToSectionHOL Named861, StackToLab.progToSectionHOL Named862, StackToLab.progToSectionHOL Named863] = sections
  rw [section848_eq, section849_eq, section850_eq, section851_eq, section852_eq, section853_eq, section854_eq, section855_eq, section856_eq, section857_eq, section858_eq, section859_eq, section860_eq, section861_eq, section862_eq, section863_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk848_863
