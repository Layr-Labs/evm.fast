import InitECandidate.Proofs.BackendStages.Metadata.Data842
import InitECandidate.Proofs.BackendStages.Filtered842
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis842_eq : ffiLines Filtered842.lines = localFfis842 := by
  with_unfolding_all rfl
theorem ffiStep842 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis842) : LabToTarget.findFfiNames (Filtered842 :: rest) = suffixFfis842 := by
  rw [findFfiNames_section, localFfis842_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep842
end InitECandidate.Proofs.BackendStages.Metadata
