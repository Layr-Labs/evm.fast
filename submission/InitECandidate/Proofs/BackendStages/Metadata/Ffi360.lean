import InitECandidate.Proofs.BackendStages.Metadata.Data360
import InitECandidate.Proofs.BackendStages.Filtered360
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis360_eq : ffiLines Filtered360.lines = localFfis360 := by
  with_unfolding_all rfl
theorem ffiStep360 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis360) : LabToTarget.findFfiNames (Filtered360 :: rest) = suffixFfis360 := by
  rw [findFfiNames_section, localFfis360_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep360
end InitECandidate.Proofs.BackendStages.Metadata
