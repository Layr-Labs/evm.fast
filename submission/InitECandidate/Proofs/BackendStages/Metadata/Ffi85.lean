import InitECandidate.Proofs.BackendStages.Metadata.Data85
import InitECandidate.Proofs.BackendStages.Filtered85
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis85_eq : ffiLines Filtered85.lines = localFfis85 := by
  with_unfolding_all rfl
theorem ffiStep85 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis85) : LabToTarget.findFfiNames (Filtered85 :: rest) = suffixFfis85 := by
  rw [findFfiNames_section, localFfis85_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep85
end InitECandidate.Proofs.BackendStages.Metadata
