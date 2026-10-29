import InitECandidate.Proofs.BackendStages.Metadata.Data568
import InitECandidate.Proofs.BackendStages.Filtered568
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis568_eq : ffiLines Filtered568.lines = localFfis568 := by
  with_unfolding_all rfl
theorem ffiStep568 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis568) : LabToTarget.findFfiNames (Filtered568 :: rest) = suffixFfis568 := by
  rw [findFfiNames_section, localFfis568_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep568
end InitECandidate.Proofs.BackendStages.Metadata
