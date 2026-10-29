import InitECandidate.Proofs.BackendStages.Metadata.Data527
import InitECandidate.Proofs.BackendStages.Filtered527
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis527_eq : ffiLines Filtered527.lines = localFfis527 := by
  with_unfolding_all rfl
theorem ffiStep527 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis527) : LabToTarget.findFfiNames (Filtered527 :: rest) = suffixFfis527 := by
  rw [findFfiNames_section, localFfis527_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep527
end InitECandidate.Proofs.BackendStages.Metadata
