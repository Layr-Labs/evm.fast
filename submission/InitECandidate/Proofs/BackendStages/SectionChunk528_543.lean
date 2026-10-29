import InitECandidate.Proofs.BackendStages.NamedChunk528_543
import InitECandidate.Proofs.BackendStages.Section528
import InitECandidate.Proofs.BackendStages.Section529
import InitECandidate.Proofs.BackendStages.Section530
import InitECandidate.Proofs.BackendStages.Section531
import InitECandidate.Proofs.BackendStages.Section532
import InitECandidate.Proofs.BackendStages.Section533
import InitECandidate.Proofs.BackendStages.Section534
import InitECandidate.Proofs.BackendStages.Section535
import InitECandidate.Proofs.BackendStages.Section536
import InitECandidate.Proofs.BackendStages.Section537
import InitECandidate.Proofs.BackendStages.Section538
import InitECandidate.Proofs.BackendStages.Section539
import InitECandidate.Proofs.BackendStages.Section540
import InitECandidate.Proofs.BackendStages.Section541
import InitECandidate.Proofs.BackendStages.Section542
import InitECandidate.Proofs.BackendStages.Section543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk528_543
def sections : LabSem.LabProgHOL 64 := [section528, section529, section530, section531, section532, section533, section534, section535, section536, section537, section538, section539, section540, section541, section542, section543]
theorem compiled_eq : NamedChunk528_543.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named528, StackToLab.progToSectionHOL Named529, StackToLab.progToSectionHOL Named530, StackToLab.progToSectionHOL Named531, StackToLab.progToSectionHOL Named532, StackToLab.progToSectionHOL Named533, StackToLab.progToSectionHOL Named534, StackToLab.progToSectionHOL Named535, StackToLab.progToSectionHOL Named536, StackToLab.progToSectionHOL Named537, StackToLab.progToSectionHOL Named538, StackToLab.progToSectionHOL Named539, StackToLab.progToSectionHOL Named540, StackToLab.progToSectionHOL Named541, StackToLab.progToSectionHOL Named542, StackToLab.progToSectionHOL Named543] = sections
  rw [section528_eq, section529_eq, section530_eq, section531_eq, section532_eq, section533_eq, section534_eq, section535_eq, section536_eq, section537_eq, section538_eq, section539_eq, section540_eq, section541_eq, section542_eq, section543_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk528_543
