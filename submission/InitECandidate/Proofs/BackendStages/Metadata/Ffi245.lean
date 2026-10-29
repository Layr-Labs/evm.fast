import InitECandidate.Proofs.BackendStages.Metadata.Data245
import InitECandidate.Proofs.BackendStages.Filtered245
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis245_eq : ffiLines Filtered245.lines = localFfis245 := by
  with_unfolding_all rfl
theorem ffiStep245 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis245) : LabToTarget.findFfiNames (Filtered245 :: rest) = suffixFfis245 := by
  rw [findFfiNames_section, localFfis245_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep245
end InitECandidate.Proofs.BackendStages.Metadata
