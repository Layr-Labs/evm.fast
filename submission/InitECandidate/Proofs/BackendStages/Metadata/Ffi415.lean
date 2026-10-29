import InitECandidate.Proofs.BackendStages.Metadata.Data415
import InitECandidate.Proofs.BackendStages.Filtered415
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis415_eq : ffiLines Filtered415.lines = localFfis415 := by
  with_unfolding_all rfl
theorem ffiStep415 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis415) : LabToTarget.findFfiNames (Filtered415 :: rest) = suffixFfis415 := by
  rw [findFfiNames_section, localFfis415_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep415
end InitECandidate.Proofs.BackendStages.Metadata
