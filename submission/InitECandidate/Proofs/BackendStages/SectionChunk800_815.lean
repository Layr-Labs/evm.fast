import InitECandidate.Proofs.BackendStages.NamedChunk800_815
import InitECandidate.Proofs.BackendStages.Section800
import InitECandidate.Proofs.BackendStages.Section801
import InitECandidate.Proofs.BackendStages.Section802
import InitECandidate.Proofs.BackendStages.Section803
import InitECandidate.Proofs.BackendStages.Section804
import InitECandidate.Proofs.BackendStages.Section805
import InitECandidate.Proofs.BackendStages.Section806
import InitECandidate.Proofs.BackendStages.Section807
import InitECandidate.Proofs.BackendStages.Section808
import InitECandidate.Proofs.BackendStages.Section809
import InitECandidate.Proofs.BackendStages.Section810
import InitECandidate.Proofs.BackendStages.Section811
import InitECandidate.Proofs.BackendStages.Section812
import InitECandidate.Proofs.BackendStages.Section813
import InitECandidate.Proofs.BackendStages.Section814
import InitECandidate.Proofs.BackendStages.Section815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk800_815
def sections : LabSem.LabProgHOL 64 := [section800, section801, section802, section803, section804, section805, section806, section807, section808, section809, section810, section811, section812, section813, section814, section815]
theorem compiled_eq : NamedChunk800_815.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named800, StackToLab.progToSectionHOL Named801, StackToLab.progToSectionHOL Named802, StackToLab.progToSectionHOL Named803, StackToLab.progToSectionHOL Named804, StackToLab.progToSectionHOL Named805, StackToLab.progToSectionHOL Named806, StackToLab.progToSectionHOL Named807, StackToLab.progToSectionHOL Named808, StackToLab.progToSectionHOL Named809, StackToLab.progToSectionHOL Named810, StackToLab.progToSectionHOL Named811, StackToLab.progToSectionHOL Named812, StackToLab.progToSectionHOL Named813, StackToLab.progToSectionHOL Named814, StackToLab.progToSectionHOL Named815] = sections
  rw [section800_eq, section801_eq, section802_eq, section803_eq, section804_eq, section805_eq, section806_eq, section807_eq, section808_eq, section809_eq, section810_eq, section811_eq, section812_eq, section813_eq, section814_eq, section815_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk800_815
