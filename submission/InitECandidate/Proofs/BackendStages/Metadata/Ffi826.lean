import InitECandidate.Proofs.BackendStages.Metadata.Data826
import InitECandidate.Proofs.BackendStages.Filtered826
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis826_eq : ffiLines Filtered826.lines = localFfis826 := by
  with_unfolding_all rfl
theorem ffiStep826 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis826) : LabToTarget.findFfiNames (Filtered826 :: rest) = suffixFfis826 := by
  rw [findFfiNames_section, localFfis826_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep826
end InitECandidate.Proofs.BackendStages.Metadata
