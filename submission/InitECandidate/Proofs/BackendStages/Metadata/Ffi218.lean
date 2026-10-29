import InitECandidate.Proofs.BackendStages.Metadata.Data218
import InitECandidate.Proofs.BackendStages.Filtered218
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis218_eq : ffiLines Filtered218.lines = localFfis218 := by
  with_unfolding_all rfl
theorem ffiStep218 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis218) : LabToTarget.findFfiNames (Filtered218 :: rest) = suffixFfis218 := by
  rw [findFfiNames_section, localFfis218_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep218
end InitECandidate.Proofs.BackendStages.Metadata
