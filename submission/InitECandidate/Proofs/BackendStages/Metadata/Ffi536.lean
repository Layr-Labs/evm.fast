import InitECandidate.Proofs.BackendStages.Metadata.Data536
import InitECandidate.Proofs.BackendStages.Filtered536
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis536_eq : ffiLines Filtered536.lines = localFfis536 := by
  with_unfolding_all rfl
theorem ffiStep536 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis536) : LabToTarget.findFfiNames (Filtered536 :: rest) = suffixFfis536 := by
  rw [findFfiNames_section, localFfis536_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep536
end InitECandidate.Proofs.BackendStages.Metadata
