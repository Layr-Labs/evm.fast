import InitECandidate.Proofs.BackendStages.SectionChunk224_239
import InitECandidate.Proofs.BackendStages.Filtered224
import InitECandidate.Proofs.BackendStages.Filtered225
import InitECandidate.Proofs.BackendStages.Filtered226
import InitECandidate.Proofs.BackendStages.Filtered227
import InitECandidate.Proofs.BackendStages.Filtered228
import InitECandidate.Proofs.BackendStages.Filtered229
import InitECandidate.Proofs.BackendStages.Filtered230
import InitECandidate.Proofs.BackendStages.Filtered231
import InitECandidate.Proofs.BackendStages.Filtered232
import InitECandidate.Proofs.BackendStages.Filtered233
import InitECandidate.Proofs.BackendStages.Filtered234
import InitECandidate.Proofs.BackendStages.Filtered235
import InitECandidate.Proofs.BackendStages.Filtered236
import InitECandidate.Proofs.BackendStages.Filtered237
import InitECandidate.Proofs.BackendStages.Filtered238
import InitECandidate.Proofs.BackendStages.Filtered239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk224_239
def sections : LabSem.LabProgHOL 64 := [Filtered224, Filtered225, Filtered226, Filtered227, Filtered228, Filtered229, Filtered230, Filtered231, Filtered232, Filtered233, Filtered234, Filtered235, Filtered236, Filtered237, Filtered238, Filtered239]
theorem compiled_eq : SectionChunk224_239.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section224 with lines := section224.lines.filter LabFilter.notSkip }, { section225 with lines := section225.lines.filter LabFilter.notSkip }, { section226 with lines := section226.lines.filter LabFilter.notSkip }, { section227 with lines := section227.lines.filter LabFilter.notSkip }, { section228 with lines := section228.lines.filter LabFilter.notSkip }, { section229 with lines := section229.lines.filter LabFilter.notSkip }, { section230 with lines := section230.lines.filter LabFilter.notSkip }, { section231 with lines := section231.lines.filter LabFilter.notSkip }, { section232 with lines := section232.lines.filter LabFilter.notSkip }, { section233 with lines := section233.lines.filter LabFilter.notSkip }, { section234 with lines := section234.lines.filter LabFilter.notSkip }, { section235 with lines := section235.lines.filter LabFilter.notSkip }, { section236 with lines := section236.lines.filter LabFilter.notSkip }, { section237 with lines := section237.lines.filter LabFilter.notSkip }, { section238 with lines := section238.lines.filter LabFilter.notSkip }, { section239 with lines := section239.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered224_eq, Filtered225_eq, Filtered226_eq, Filtered227_eq, Filtered228_eq, Filtered229_eq, Filtered230_eq, Filtered231_eq, Filtered232_eq, Filtered233_eq, Filtered234_eq, Filtered235_eq, Filtered236_eq, Filtered237_eq, Filtered238_eq, Filtered239_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk224_239
