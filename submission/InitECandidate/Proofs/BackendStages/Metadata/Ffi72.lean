import InitECandidate.Proofs.BackendStages.Metadata.Data72
import InitECandidate.Proofs.BackendStages.Filtered72
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis72_eq : ffiLines Filtered72.lines = localFfis72 := by
  with_unfolding_all rfl
theorem ffiStep72 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis72) : LabToTarget.findFfiNames (Filtered72 :: rest) = suffixFfis72 := by
  rw [findFfiNames_section, localFfis72_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep72
end InitECandidate.Proofs.BackendStages.Metadata
