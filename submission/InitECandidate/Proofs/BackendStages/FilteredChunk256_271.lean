import InitECandidate.Proofs.BackendStages.SectionChunk256_271
import InitECandidate.Proofs.BackendStages.Filtered256
import InitECandidate.Proofs.BackendStages.Filtered257
import InitECandidate.Proofs.BackendStages.Filtered258
import InitECandidate.Proofs.BackendStages.Filtered259
import InitECandidate.Proofs.BackendStages.Filtered260
import InitECandidate.Proofs.BackendStages.Filtered261
import InitECandidate.Proofs.BackendStages.Filtered262
import InitECandidate.Proofs.BackendStages.Filtered263
import InitECandidate.Proofs.BackendStages.Filtered264
import InitECandidate.Proofs.BackendStages.Filtered265
import InitECandidate.Proofs.BackendStages.Filtered266
import InitECandidate.Proofs.BackendStages.Filtered267
import InitECandidate.Proofs.BackendStages.Filtered268
import InitECandidate.Proofs.BackendStages.Filtered269
import InitECandidate.Proofs.BackendStages.Filtered270
import InitECandidate.Proofs.BackendStages.Filtered271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk256_271
def sections : LabSem.LabProgHOL 64 := [Filtered256, Filtered257, Filtered258, Filtered259, Filtered260, Filtered261, Filtered262, Filtered263, Filtered264, Filtered265, Filtered266, Filtered267, Filtered268, Filtered269, Filtered270, Filtered271]
theorem compiled_eq : SectionChunk256_271.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section256 with lines := section256.lines.filter LabFilter.notSkip }, { section257 with lines := section257.lines.filter LabFilter.notSkip }, { section258 with lines := section258.lines.filter LabFilter.notSkip }, { section259 with lines := section259.lines.filter LabFilter.notSkip }, { section260 with lines := section260.lines.filter LabFilter.notSkip }, { section261 with lines := section261.lines.filter LabFilter.notSkip }, { section262 with lines := section262.lines.filter LabFilter.notSkip }, { section263 with lines := section263.lines.filter LabFilter.notSkip }, { section264 with lines := section264.lines.filter LabFilter.notSkip }, { section265 with lines := section265.lines.filter LabFilter.notSkip }, { section266 with lines := section266.lines.filter LabFilter.notSkip }, { section267 with lines := section267.lines.filter LabFilter.notSkip }, { section268 with lines := section268.lines.filter LabFilter.notSkip }, { section269 with lines := section269.lines.filter LabFilter.notSkip }, { section270 with lines := section270.lines.filter LabFilter.notSkip }, { section271 with lines := section271.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered256_eq, Filtered257_eq, Filtered258_eq, Filtered259_eq, Filtered260_eq, Filtered261_eq, Filtered262_eq, Filtered263_eq, Filtered264_eq, Filtered265_eq, Filtered266_eq, Filtered267_eq, Filtered268_eq, Filtered269_eq, Filtered270_eq, Filtered271_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk256_271
