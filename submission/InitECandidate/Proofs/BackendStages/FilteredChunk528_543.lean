import InitECandidate.Proofs.BackendStages.SectionChunk528_543
import InitECandidate.Proofs.BackendStages.Filtered528
import InitECandidate.Proofs.BackendStages.Filtered529
import InitECandidate.Proofs.BackendStages.Filtered530
import InitECandidate.Proofs.BackendStages.Filtered531
import InitECandidate.Proofs.BackendStages.Filtered532
import InitECandidate.Proofs.BackendStages.Filtered533
import InitECandidate.Proofs.BackendStages.Filtered534
import InitECandidate.Proofs.BackendStages.Filtered535
import InitECandidate.Proofs.BackendStages.Filtered536
import InitECandidate.Proofs.BackendStages.Filtered537
import InitECandidate.Proofs.BackendStages.Filtered538
import InitECandidate.Proofs.BackendStages.Filtered539
import InitECandidate.Proofs.BackendStages.Filtered540
import InitECandidate.Proofs.BackendStages.Filtered541
import InitECandidate.Proofs.BackendStages.Filtered542
import InitECandidate.Proofs.BackendStages.Filtered543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk528_543
def sections : LabSem.LabProgHOL 64 := [Filtered528, Filtered529, Filtered530, Filtered531, Filtered532, Filtered533, Filtered534, Filtered535, Filtered536, Filtered537, Filtered538, Filtered539, Filtered540, Filtered541, Filtered542, Filtered543]
theorem compiled_eq : SectionChunk528_543.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section528 with lines := section528.lines.filter LabFilter.notSkip }, { section529 with lines := section529.lines.filter LabFilter.notSkip }, { section530 with lines := section530.lines.filter LabFilter.notSkip }, { section531 with lines := section531.lines.filter LabFilter.notSkip }, { section532 with lines := section532.lines.filter LabFilter.notSkip }, { section533 with lines := section533.lines.filter LabFilter.notSkip }, { section534 with lines := section534.lines.filter LabFilter.notSkip }, { section535 with lines := section535.lines.filter LabFilter.notSkip }, { section536 with lines := section536.lines.filter LabFilter.notSkip }, { section537 with lines := section537.lines.filter LabFilter.notSkip }, { section538 with lines := section538.lines.filter LabFilter.notSkip }, { section539 with lines := section539.lines.filter LabFilter.notSkip }, { section540 with lines := section540.lines.filter LabFilter.notSkip }, { section541 with lines := section541.lines.filter LabFilter.notSkip }, { section542 with lines := section542.lines.filter LabFilter.notSkip }, { section543 with lines := section543.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered528_eq, Filtered529_eq, Filtered530_eq, Filtered531_eq, Filtered532_eq, Filtered533_eq, Filtered534_eq, Filtered535_eq, Filtered536_eq, Filtered537_eq, Filtered538_eq, Filtered539_eq, Filtered540_eq, Filtered541_eq, Filtered542_eq, Filtered543_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk528_543
