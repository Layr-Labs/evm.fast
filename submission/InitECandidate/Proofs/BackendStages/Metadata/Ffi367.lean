import InitECandidate.Proofs.BackendStages.Metadata.Data367
import InitECandidate.Proofs.BackendStages.Filtered367
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis367_eq : ffiLines Filtered367.lines = localFfis367 := by
  with_unfolding_all rfl
theorem ffiStep367 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis367) : LabToTarget.findFfiNames (Filtered367 :: rest) = suffixFfis367 := by
  rw [findFfiNames_section, localFfis367_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep367
end InitECandidate.Proofs.BackendStages.Metadata
