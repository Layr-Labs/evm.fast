import InitECandidate.Proofs.BackendStages.Metadata.Data601
import InitECandidate.Proofs.BackendStages.Filtered601
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis601_eq : ffiLines Filtered601.lines = localFfis601 := by
  with_unfolding_all rfl
theorem ffiStep601 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis601) : LabToTarget.findFfiNames (Filtered601 :: rest) = suffixFfis601 := by
  rw [findFfiNames_section, localFfis601_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep601
end InitECandidate.Proofs.BackendStages.Metadata
