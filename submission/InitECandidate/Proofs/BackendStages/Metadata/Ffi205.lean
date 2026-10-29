import InitECandidate.Proofs.BackendStages.Metadata.Data205
import InitECandidate.Proofs.BackendStages.Filtered205
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis205_eq : ffiLines Filtered205.lines = localFfis205 := by
  with_unfolding_all rfl
theorem ffiStep205 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis205) : LabToTarget.findFfiNames (Filtered205 :: rest) = suffixFfis205 := by
  rw [findFfiNames_section, localFfis205_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep205
end InitECandidate.Proofs.BackendStages.Metadata
