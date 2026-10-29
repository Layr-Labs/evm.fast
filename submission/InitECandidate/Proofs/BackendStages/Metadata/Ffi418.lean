import InitECandidate.Proofs.BackendStages.Metadata.Data418
import InitECandidate.Proofs.BackendStages.Filtered418
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis418_eq : ffiLines Filtered418.lines = localFfis418 := by
  with_unfolding_all rfl
theorem ffiStep418 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis418) : LabToTarget.findFfiNames (Filtered418 :: rest) = suffixFfis418 := by
  rw [findFfiNames_section, localFfis418_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep418
end InitECandidate.Proofs.BackendStages.Metadata
