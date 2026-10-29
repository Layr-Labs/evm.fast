import InitECandidate.Proofs.BackendStages.NamedChunk832_847
import InitECandidate.Proofs.BackendStages.Section832
import InitECandidate.Proofs.BackendStages.Section833
import InitECandidate.Proofs.BackendStages.Section834
import InitECandidate.Proofs.BackendStages.Section835
import InitECandidate.Proofs.BackendStages.Section836
import InitECandidate.Proofs.BackendStages.Section837
import InitECandidate.Proofs.BackendStages.Section838
import InitECandidate.Proofs.BackendStages.Section839
import InitECandidate.Proofs.BackendStages.Section840
import InitECandidate.Proofs.BackendStages.Section841
import InitECandidate.Proofs.BackendStages.Section842
import InitECandidate.Proofs.BackendStages.Section843
import InitECandidate.Proofs.BackendStages.Section844
import InitECandidate.Proofs.BackendStages.Section845
import InitECandidate.Proofs.BackendStages.Section846
import InitECandidate.Proofs.BackendStages.Section847
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk832_847
def sections : LabSem.LabProgHOL 64 := [section832, section833, section834, section835, section836, section837, section838, section839, section840, section841, section842, section843, section844, section845, section846, section847]
theorem compiled_eq : NamedChunk832_847.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named832, StackToLab.progToSectionHOL Named833, StackToLab.progToSectionHOL Named834, StackToLab.progToSectionHOL Named835, StackToLab.progToSectionHOL Named836, StackToLab.progToSectionHOL Named837, StackToLab.progToSectionHOL Named838, StackToLab.progToSectionHOL Named839, StackToLab.progToSectionHOL Named840, StackToLab.progToSectionHOL Named841, StackToLab.progToSectionHOL Named842, StackToLab.progToSectionHOL Named843, StackToLab.progToSectionHOL Named844, StackToLab.progToSectionHOL Named845, StackToLab.progToSectionHOL Named846, StackToLab.progToSectionHOL Named847] = sections
  rw [section832_eq, section833_eq, section834_eq, section835_eq, section836_eq, section837_eq, section838_eq, section839_eq, section840_eq, section841_eq, section842_eq, section843_eq, section844_eq, section845_eq, section846_eq, section847_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk832_847
