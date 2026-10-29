import InitECandidate.Proofs.BackendStages.Metadata.Data656
import InitECandidate.Proofs.BackendStages.Filtered656
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis656_eq : ffiLines Filtered656.lines = localFfis656 := by
  with_unfolding_all rfl
theorem ffiStep656 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis656) : LabToTarget.findFfiNames (Filtered656 :: rest) = suffixFfis656 := by
  rw [findFfiNames_section, localFfis656_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep656
end InitECandidate.Proofs.BackendStages.Metadata
