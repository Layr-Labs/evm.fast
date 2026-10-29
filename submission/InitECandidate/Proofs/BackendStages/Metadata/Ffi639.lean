import InitECandidate.Proofs.BackendStages.Metadata.Data639
import InitECandidate.Proofs.BackendStages.Filtered639
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis639_eq : ffiLines Filtered639.lines = localFfis639 := by
  with_unfolding_all rfl
theorem ffiStep639 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis639) : LabToTarget.findFfiNames (Filtered639 :: rest) = suffixFfis639 := by
  rw [findFfiNames_section, localFfis639_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep639
end InitECandidate.Proofs.BackendStages.Metadata
