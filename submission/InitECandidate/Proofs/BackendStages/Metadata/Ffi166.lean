import InitECandidate.Proofs.BackendStages.Metadata.Data166
import InitECandidate.Proofs.BackendStages.Filtered166
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis166_eq : ffiLines Filtered166.lines = localFfis166 := by
  with_unfolding_all rfl
theorem ffiStep166 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis166) : LabToTarget.findFfiNames (Filtered166 :: rest) = suffixFfis166 := by
  rw [findFfiNames_section, localFfis166_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep166
end InitECandidate.Proofs.BackendStages.Metadata
