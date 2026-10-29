import InitECandidate.Proofs.BackendStages.Metadata.Data403
import InitECandidate.Proofs.BackendStages.Filtered403
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis403_eq : ffiLines Filtered403.lines = localFfis403 := by
  with_unfolding_all rfl
theorem ffiStep403 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis403) : LabToTarget.findFfiNames (Filtered403 :: rest) = suffixFfis403 := by
  rw [findFfiNames_section, localFfis403_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep403
end InitECandidate.Proofs.BackendStages.Metadata
