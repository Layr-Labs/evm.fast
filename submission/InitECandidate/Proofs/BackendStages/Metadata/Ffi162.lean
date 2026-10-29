import InitECandidate.Proofs.BackendStages.Metadata.Data162
import InitECandidate.Proofs.BackendStages.Filtered162
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis162_eq : ffiLines Filtered162.lines = localFfis162 := by
  with_unfolding_all rfl
theorem ffiStep162 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis162) : LabToTarget.findFfiNames (Filtered162 :: rest) = suffixFfis162 := by
  rw [findFfiNames_section, localFfis162_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep162
end InitECandidate.Proofs.BackendStages.Metadata
