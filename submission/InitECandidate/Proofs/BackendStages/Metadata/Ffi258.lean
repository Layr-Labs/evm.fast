import InitECandidate.Proofs.BackendStages.Metadata.Data258
import InitECandidate.Proofs.BackendStages.Filtered258
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis258_eq : ffiLines Filtered258.lines = localFfis258 := by
  with_unfolding_all rfl
theorem ffiStep258 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis258) : LabToTarget.findFfiNames (Filtered258 :: rest) = suffixFfis258 := by
  rw [findFfiNames_section, localFfis258_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep258
end InitECandidate.Proofs.BackendStages.Metadata
