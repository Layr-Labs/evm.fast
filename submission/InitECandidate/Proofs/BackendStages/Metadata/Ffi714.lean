import InitECandidate.Proofs.BackendStages.Metadata.Data714
import InitECandidate.Proofs.BackendStages.Filtered714
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis714_eq : ffiLines Filtered714.lines = localFfis714 := by
  with_unfolding_all rfl
theorem ffiStep714 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis714) : LabToTarget.findFfiNames (Filtered714 :: rest) = suffixFfis714 := by
  rw [findFfiNames_section, localFfis714_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep714
end InitECandidate.Proofs.BackendStages.Metadata
