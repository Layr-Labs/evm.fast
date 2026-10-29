import InitECandidate.Proofs.BackendStages.Metadata.Data827
import InitECandidate.Proofs.BackendStages.Filtered827
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis827_eq : ffiLines Filtered827.lines = localFfis827 := by
  with_unfolding_all rfl
theorem ffiStep827 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis827) : LabToTarget.findFfiNames (Filtered827 :: rest) = suffixFfis827 := by
  rw [findFfiNames_section, localFfis827_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep827
end InitECandidate.Proofs.BackendStages.Metadata
