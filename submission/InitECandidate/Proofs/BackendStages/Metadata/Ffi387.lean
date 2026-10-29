import InitECandidate.Proofs.BackendStages.Metadata.Data387
import InitECandidate.Proofs.BackendStages.Filtered387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis387_eq : ffiLines Filtered387.lines = localFfis387 := by
  with_unfolding_all rfl
theorem ffiStep387 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis387) : LabToTarget.findFfiNames (Filtered387 :: rest) = suffixFfis387 := by
  rw [findFfiNames_section, localFfis387_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep387
end InitECandidate.Proofs.BackendStages.Metadata
