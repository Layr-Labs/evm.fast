import InitECandidate.Proofs.BackendStages.Metadata.Data460
import InitECandidate.Proofs.BackendStages.Filtered460
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis460_eq : ffiLines Filtered460.lines = localFfis460 := by
  with_unfolding_all rfl
theorem ffiStep460 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis460) : LabToTarget.findFfiNames (Filtered460 :: rest) = suffixFfis460 := by
  rw [findFfiNames_section, localFfis460_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep460
end InitECandidate.Proofs.BackendStages.Metadata
