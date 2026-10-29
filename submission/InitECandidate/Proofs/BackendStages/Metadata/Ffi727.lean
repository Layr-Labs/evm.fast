import InitECandidate.Proofs.BackendStages.Metadata.Data727
import InitECandidate.Proofs.BackendStages.Filtered727
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis727_eq : ffiLines Filtered727.lines = localFfis727 := by
  with_unfolding_all rfl
theorem ffiStep727 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis727) : LabToTarget.findFfiNames (Filtered727 :: rest) = suffixFfis727 := by
  rw [findFfiNames_section, localFfis727_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep727
end InitECandidate.Proofs.BackendStages.Metadata
