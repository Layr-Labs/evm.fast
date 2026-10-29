import InitECandidate.Proofs.BackendStages.Metadata.Data197
import InitECandidate.Proofs.BackendStages.Filtered197
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis197_eq : ffiLines Filtered197.lines = localFfis197 := by
  with_unfolding_all rfl
theorem ffiStep197 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis197) : LabToTarget.findFfiNames (Filtered197 :: rest) = suffixFfis197 := by
  rw [findFfiNames_section, localFfis197_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep197
end InitECandidate.Proofs.BackendStages.Metadata
