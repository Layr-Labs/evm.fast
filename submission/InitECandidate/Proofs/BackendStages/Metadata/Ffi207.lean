import InitECandidate.Proofs.BackendStages.Metadata.Data207
import InitECandidate.Proofs.BackendStages.Filtered207
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis207_eq : ffiLines Filtered207.lines = localFfis207 := by
  with_unfolding_all rfl
theorem ffiStep207 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis207) : LabToTarget.findFfiNames (Filtered207 :: rest) = suffixFfis207 := by
  rw [findFfiNames_section, localFfis207_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep207
end InitECandidate.Proofs.BackendStages.Metadata
