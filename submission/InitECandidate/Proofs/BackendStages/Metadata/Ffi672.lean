import InitECandidate.Proofs.BackendStages.Metadata.Data672
import InitECandidate.Proofs.BackendStages.Filtered672
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis672_eq : ffiLines Filtered672.lines = localFfis672 := by
  with_unfolding_all rfl
theorem ffiStep672 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis672) : LabToTarget.findFfiNames (Filtered672 :: rest) = suffixFfis672 := by
  rw [findFfiNames_section, localFfis672_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep672
end InitECandidate.Proofs.BackendStages.Metadata
