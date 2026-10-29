import InitECandidate.Proofs.BackendStages.Metadata.Data346
import InitECandidate.Proofs.BackendStages.Filtered346
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis346_eq : ffiLines Filtered346.lines = localFfis346 := by
  with_unfolding_all rfl
theorem ffiStep346 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis346) : LabToTarget.findFfiNames (Filtered346 :: rest) = suffixFfis346 := by
  rw [findFfiNames_section, localFfis346_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep346
end InitECandidate.Proofs.BackendStages.Metadata
