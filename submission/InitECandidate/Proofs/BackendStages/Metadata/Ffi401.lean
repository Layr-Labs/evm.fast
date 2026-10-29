import InitECandidate.Proofs.BackendStages.Metadata.Data401
import InitECandidate.Proofs.BackendStages.Filtered401
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis401_eq : ffiLines Filtered401.lines = localFfis401 := by
  with_unfolding_all rfl
theorem ffiStep401 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis401) : LabToTarget.findFfiNames (Filtered401 :: rest) = suffixFfis401 := by
  rw [findFfiNames_section, localFfis401_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep401
end InitECandidate.Proofs.BackendStages.Metadata
