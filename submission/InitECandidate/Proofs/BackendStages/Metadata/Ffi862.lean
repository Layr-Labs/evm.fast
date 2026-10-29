import InitECandidate.Proofs.BackendStages.Metadata.Data862
import InitECandidate.Proofs.BackendStages.Filtered862
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis862_eq : ffiLines Filtered862.lines = localFfis862 := by
  with_unfolding_all rfl
theorem ffiStep862 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis862) : LabToTarget.findFfiNames (Filtered862 :: rest) = suffixFfis862 := by
  rw [findFfiNames_section, localFfis862_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep862
end InitECandidate.Proofs.BackendStages.Metadata
