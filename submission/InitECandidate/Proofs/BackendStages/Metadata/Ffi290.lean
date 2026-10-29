import InitECandidate.Proofs.BackendStages.Metadata.Data290
import InitECandidate.Proofs.BackendStages.Filtered290
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis290_eq : ffiLines Filtered290.lines = localFfis290 := by
  with_unfolding_all rfl
theorem ffiStep290 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis290) : LabToTarget.findFfiNames (Filtered290 :: rest) = suffixFfis290 := by
  rw [findFfiNames_section, localFfis290_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep290
end InitECandidate.Proofs.BackendStages.Metadata
