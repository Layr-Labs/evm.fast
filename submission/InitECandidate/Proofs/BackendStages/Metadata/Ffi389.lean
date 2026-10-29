import InitECandidate.Proofs.BackendStages.Metadata.Data389
import InitECandidate.Proofs.BackendStages.Filtered389
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis389_eq : ffiLines Filtered389.lines = localFfis389 := by
  with_unfolding_all rfl
theorem ffiStep389 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis389) : LabToTarget.findFfiNames (Filtered389 :: rest) = suffixFfis389 := by
  rw [findFfiNames_section, localFfis389_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep389
end InitECandidate.Proofs.BackendStages.Metadata
