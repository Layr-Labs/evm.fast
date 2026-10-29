import InitECandidate.Proofs.BackendStages.Metadata.Data151
import InitECandidate.Proofs.BackendStages.Filtered151
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis151_eq : ffiLines Filtered151.lines = localFfis151 := by
  with_unfolding_all rfl
theorem ffiStep151 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis151) : LabToTarget.findFfiNames (Filtered151 :: rest) = suffixFfis151 := by
  rw [findFfiNames_section, localFfis151_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep151
end InitECandidate.Proofs.BackendStages.Metadata
