import InitECandidate.Proofs.BackendStages.SectionChunk800_815
import InitECandidate.Proofs.BackendStages.Filtered800
import InitECandidate.Proofs.BackendStages.Filtered801
import InitECandidate.Proofs.BackendStages.Filtered802
import InitECandidate.Proofs.BackendStages.Filtered803
import InitECandidate.Proofs.BackendStages.Filtered804
import InitECandidate.Proofs.BackendStages.Filtered805
import InitECandidate.Proofs.BackendStages.Filtered806
import InitECandidate.Proofs.BackendStages.Filtered807
import InitECandidate.Proofs.BackendStages.Filtered808
import InitECandidate.Proofs.BackendStages.Filtered809
import InitECandidate.Proofs.BackendStages.Filtered810
import InitECandidate.Proofs.BackendStages.Filtered811
import InitECandidate.Proofs.BackendStages.Filtered812
import InitECandidate.Proofs.BackendStages.Filtered813
import InitECandidate.Proofs.BackendStages.Filtered814
import InitECandidate.Proofs.BackendStages.Filtered815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk800_815
def sections : LabSem.LabProgHOL 64 := [Filtered800, Filtered801, Filtered802, Filtered803, Filtered804, Filtered805, Filtered806, Filtered807, Filtered808, Filtered809, Filtered810, Filtered811, Filtered812, Filtered813, Filtered814, Filtered815]
theorem compiled_eq : SectionChunk800_815.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section800 with lines := section800.lines.filter LabFilter.notSkip }, { section801 with lines := section801.lines.filter LabFilter.notSkip }, { section802 with lines := section802.lines.filter LabFilter.notSkip }, { section803 with lines := section803.lines.filter LabFilter.notSkip }, { section804 with lines := section804.lines.filter LabFilter.notSkip }, { section805 with lines := section805.lines.filter LabFilter.notSkip }, { section806 with lines := section806.lines.filter LabFilter.notSkip }, { section807 with lines := section807.lines.filter LabFilter.notSkip }, { section808 with lines := section808.lines.filter LabFilter.notSkip }, { section809 with lines := section809.lines.filter LabFilter.notSkip }, { section810 with lines := section810.lines.filter LabFilter.notSkip }, { section811 with lines := section811.lines.filter LabFilter.notSkip }, { section812 with lines := section812.lines.filter LabFilter.notSkip }, { section813 with lines := section813.lines.filter LabFilter.notSkip }, { section814 with lines := section814.lines.filter LabFilter.notSkip }, { section815 with lines := section815.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered800_eq, Filtered801_eq, Filtered802_eq, Filtered803_eq, Filtered804_eq, Filtered805_eq, Filtered806_eq, Filtered807_eq, Filtered808_eq, Filtered809_eq, Filtered810_eq, Filtered811_eq, Filtered812_eq, Filtered813_eq, Filtered814_eq, Filtered815_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk800_815
