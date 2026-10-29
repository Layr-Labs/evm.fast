import InitECandidate.Proofs.BackendStages.Metadata.Data581
import InitECandidate.Proofs.BackendStages.Filtered581
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis581_eq : ffiLines Filtered581.lines = localFfis581 := by
  with_unfolding_all rfl
theorem ffiStep581 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis581) : LabToTarget.findFfiNames (Filtered581 :: rest) = suffixFfis581 := by
  rw [findFfiNames_section, localFfis581_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep581
end InitECandidate.Proofs.BackendStages.Metadata
