import InitECandidate.Proofs.BackendStages.Metadata.Data750
import InitECandidate.Proofs.BackendStages.Filtered750
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis750_eq : ffiLines Filtered750.lines = localFfis750 := by
  with_unfolding_all rfl
theorem ffiStep750 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis750) : LabToTarget.findFfiNames (Filtered750 :: rest) = suffixFfis750 := by
  rw [findFfiNames_section, localFfis750_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep750
end InitECandidate.Proofs.BackendStages.Metadata
