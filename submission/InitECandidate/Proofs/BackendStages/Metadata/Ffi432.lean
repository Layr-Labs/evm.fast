import InitECandidate.Proofs.BackendStages.Metadata.Data432
import InitECandidate.Proofs.BackendStages.Filtered432
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis432_eq : ffiLines Filtered432.lines = localFfis432 := by
  with_unfolding_all rfl
theorem ffiStep432 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis432) : LabToTarget.findFfiNames (Filtered432 :: rest) = suffixFfis432 := by
  rw [findFfiNames_section, localFfis432_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep432
end InitECandidate.Proofs.BackendStages.Metadata
