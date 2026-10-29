import InitECandidate.Proofs.BackendStages.Metadata.Data792
import InitECandidate.Proofs.BackendStages.Filtered792
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis792_eq : ffiLines Filtered792.lines = localFfis792 := by
  with_unfolding_all rfl
theorem ffiStep792 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis792) : LabToTarget.findFfiNames (Filtered792 :: rest) = suffixFfis792 := by
  rw [findFfiNames_section, localFfis792_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep792
end InitECandidate.Proofs.BackendStages.Metadata
