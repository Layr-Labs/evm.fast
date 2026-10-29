import InitECandidate.Proofs.BackendStages.Metadata.Data104
import InitECandidate.Proofs.BackendStages.Filtered104
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis104_eq : ffiLines Filtered104.lines = localFfis104 := by
  with_unfolding_all rfl
theorem ffiStep104 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis104) : LabToTarget.findFfiNames (Filtered104 :: rest) = suffixFfis104 := by
  rw [findFfiNames_section, localFfis104_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep104
end InitECandidate.Proofs.BackendStages.Metadata
