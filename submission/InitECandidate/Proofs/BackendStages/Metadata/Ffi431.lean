import InitECandidate.Proofs.BackendStages.Metadata.Data431
import InitECandidate.Proofs.BackendStages.Filtered431
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis431_eq : ffiLines Filtered431.lines = localFfis431 := by
  with_unfolding_all rfl
theorem ffiStep431 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis431) : LabToTarget.findFfiNames (Filtered431 :: rest) = suffixFfis431 := by
  rw [findFfiNames_section, localFfis431_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep431
end InitECandidate.Proofs.BackendStages.Metadata
