import InitECandidate.Proofs.BackendStages.SectionChunk176_191
import InitECandidate.Proofs.BackendStages.Filtered176
import InitECandidate.Proofs.BackendStages.Filtered177
import InitECandidate.Proofs.BackendStages.Filtered178
import InitECandidate.Proofs.BackendStages.Filtered179
import InitECandidate.Proofs.BackendStages.Filtered180
import InitECandidate.Proofs.BackendStages.Filtered181
import InitECandidate.Proofs.BackendStages.Filtered182
import InitECandidate.Proofs.BackendStages.Filtered183
import InitECandidate.Proofs.BackendStages.Filtered184
import InitECandidate.Proofs.BackendStages.Filtered185
import InitECandidate.Proofs.BackendStages.Filtered186
import InitECandidate.Proofs.BackendStages.Filtered187
import InitECandidate.Proofs.BackendStages.Filtered188
import InitECandidate.Proofs.BackendStages.Filtered189
import InitECandidate.Proofs.BackendStages.Filtered190
import InitECandidate.Proofs.BackendStages.Filtered191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk176_191
def sections : LabSem.LabProgHOL 64 := [Filtered176, Filtered177, Filtered178, Filtered179, Filtered180, Filtered181, Filtered182, Filtered183, Filtered184, Filtered185, Filtered186, Filtered187, Filtered188, Filtered189, Filtered190, Filtered191]
theorem compiled_eq : SectionChunk176_191.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section176 with lines := section176.lines.filter LabFilter.notSkip }, { section177 with lines := section177.lines.filter LabFilter.notSkip }, { section178 with lines := section178.lines.filter LabFilter.notSkip }, { section179 with lines := section179.lines.filter LabFilter.notSkip }, { section180 with lines := section180.lines.filter LabFilter.notSkip }, { section181 with lines := section181.lines.filter LabFilter.notSkip }, { section182 with lines := section182.lines.filter LabFilter.notSkip }, { section183 with lines := section183.lines.filter LabFilter.notSkip }, { section184 with lines := section184.lines.filter LabFilter.notSkip }, { section185 with lines := section185.lines.filter LabFilter.notSkip }, { section186 with lines := section186.lines.filter LabFilter.notSkip }, { section187 with lines := section187.lines.filter LabFilter.notSkip }, { section188 with lines := section188.lines.filter LabFilter.notSkip }, { section189 with lines := section189.lines.filter LabFilter.notSkip }, { section190 with lines := section190.lines.filter LabFilter.notSkip }, { section191 with lines := section191.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered176_eq, Filtered177_eq, Filtered178_eq, Filtered179_eq, Filtered180_eq, Filtered181_eq, Filtered182_eq, Filtered183_eq, Filtered184_eq, Filtered185_eq, Filtered186_eq, Filtered187_eq, Filtered188_eq, Filtered189_eq, Filtered190_eq, Filtered191_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk176_191
