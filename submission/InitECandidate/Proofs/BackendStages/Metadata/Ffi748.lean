import InitECandidate.Proofs.BackendStages.Metadata.Data748
import InitECandidate.Proofs.BackendStages.Filtered748
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis748_eq : ffiLines Filtered748.lines = localFfis748 := by
  with_unfolding_all rfl
theorem ffiStep748 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis748) : LabToTarget.findFfiNames (Filtered748 :: rest) = suffixFfis748 := by
  rw [findFfiNames_section, localFfis748_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep748
end InitECandidate.Proofs.BackendStages.Metadata
