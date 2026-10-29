import InitECandidate.Proofs.BackendStages.SectionStubs
import InitECandidate.Proofs.BackendStages.Filtered0
import InitECandidate.Proofs.BackendStages.Filtered1
import InitECandidate.Proofs.BackendStages.Filtered2
import InitECandidate.Proofs.BackendStages.Filtered4
import InitECandidate.Proofs.BackendStages.Filtered5
import InitECandidate.Proofs.BackendStages.Filtered6
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredStubs
def sections : LabSem.LabProgHOL 64 := [Filtered0, Filtered1, Filtered2, Filtered4, Filtered5, Filtered6]
theorem compiled_eq : SectionStubs.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section0 with lines := section0.lines.filter LabFilter.notSkip }, { section1 with lines := section1.lines.filter LabFilter.notSkip }, { section2 with lines := section2.lines.filter LabFilter.notSkip }, { section4 with lines := section4.lines.filter LabFilter.notSkip }, { section5 with lines := section5.lines.filter LabFilter.notSkip }, { section6 with lines := section6.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered0_eq, Filtered1_eq, Filtered2_eq, Filtered4_eq, Filtered5_eq, Filtered6_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredStubs
