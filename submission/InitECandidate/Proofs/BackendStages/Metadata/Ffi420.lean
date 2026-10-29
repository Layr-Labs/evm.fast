import InitECandidate.Proofs.BackendStages.Metadata.Data420
import InitECandidate.Proofs.BackendStages.Filtered420
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis420_eq : ffiLines Filtered420.lines = localFfis420 := by
  with_unfolding_all rfl
theorem ffiStep420 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis420) : LabToTarget.findFfiNames (Filtered420 :: rest) = suffixFfis420 := by
  rw [findFfiNames_section, localFfis420_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep420
end InitECandidate.Proofs.BackendStages.Metadata
