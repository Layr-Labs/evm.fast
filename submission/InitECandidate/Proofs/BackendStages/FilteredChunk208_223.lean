import InitECandidate.Proofs.BackendStages.SectionChunk208_223
import InitECandidate.Proofs.BackendStages.Filtered208
import InitECandidate.Proofs.BackendStages.Filtered209
import InitECandidate.Proofs.BackendStages.Filtered210
import InitECandidate.Proofs.BackendStages.Filtered211
import InitECandidate.Proofs.BackendStages.Filtered212
import InitECandidate.Proofs.BackendStages.Filtered213
import InitECandidate.Proofs.BackendStages.Filtered214
import InitECandidate.Proofs.BackendStages.Filtered215
import InitECandidate.Proofs.BackendStages.Filtered216
import InitECandidate.Proofs.BackendStages.Filtered217
import InitECandidate.Proofs.BackendStages.Filtered218
import InitECandidate.Proofs.BackendStages.Filtered219
import InitECandidate.Proofs.BackendStages.Filtered220
import InitECandidate.Proofs.BackendStages.Filtered221
import InitECandidate.Proofs.BackendStages.Filtered222
import InitECandidate.Proofs.BackendStages.Filtered223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk208_223
def sections : LabSem.LabProgHOL 64 := [Filtered208, Filtered209, Filtered210, Filtered211, Filtered212, Filtered213, Filtered214, Filtered215, Filtered216, Filtered217, Filtered218, Filtered219, Filtered220, Filtered221, Filtered222, Filtered223]
theorem compiled_eq : SectionChunk208_223.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section208 with lines := section208.lines.filter LabFilter.notSkip }, { section209 with lines := section209.lines.filter LabFilter.notSkip }, { section210 with lines := section210.lines.filter LabFilter.notSkip }, { section211 with lines := section211.lines.filter LabFilter.notSkip }, { section212 with lines := section212.lines.filter LabFilter.notSkip }, { section213 with lines := section213.lines.filter LabFilter.notSkip }, { section214 with lines := section214.lines.filter LabFilter.notSkip }, { section215 with lines := section215.lines.filter LabFilter.notSkip }, { section216 with lines := section216.lines.filter LabFilter.notSkip }, { section217 with lines := section217.lines.filter LabFilter.notSkip }, { section218 with lines := section218.lines.filter LabFilter.notSkip }, { section219 with lines := section219.lines.filter LabFilter.notSkip }, { section220 with lines := section220.lines.filter LabFilter.notSkip }, { section221 with lines := section221.lines.filter LabFilter.notSkip }, { section222 with lines := section222.lines.filter LabFilter.notSkip }, { section223 with lines := section223.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered208_eq, Filtered209_eq, Filtered210_eq, Filtered211_eq, Filtered212_eq, Filtered213_eq, Filtered214_eq, Filtered215_eq, Filtered216_eq, Filtered217_eq, Filtered218_eq, Filtered219_eq, Filtered220_eq, Filtered221_eq, Filtered222_eq, Filtered223_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk208_223
