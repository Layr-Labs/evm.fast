import InitECandidate.Proofs.BackendStages.Metadata.Data856
import InitECandidate.Proofs.BackendStages.Filtered856
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis856_eq : ffiLines Filtered856.lines = localFfis856 := by
  with_unfolding_all rfl
theorem ffiStep856 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis856) : LabToTarget.findFfiNames (Filtered856 :: rest) = suffixFfis856 := by
  rw [findFfiNames_section, localFfis856_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep856
end InitECandidate.Proofs.BackendStages.Metadata
