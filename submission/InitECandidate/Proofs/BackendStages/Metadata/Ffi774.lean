import InitECandidate.Proofs.BackendStages.Metadata.Data774
import InitECandidate.Proofs.BackendStages.Filtered774
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis774_eq : ffiLines Filtered774.lines = localFfis774 := by
  with_unfolding_all rfl
theorem ffiStep774 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis774) : LabToTarget.findFfiNames (Filtered774 :: rest) = suffixFfis774 := by
  rw [findFfiNames_section, localFfis774_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep774
end InitECandidate.Proofs.BackendStages.Metadata
