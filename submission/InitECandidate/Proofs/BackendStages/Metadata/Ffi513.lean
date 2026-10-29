import InitECandidate.Proofs.BackendStages.Metadata.Data513
import InitECandidate.Proofs.BackendStages.Filtered513
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis513_eq : ffiLines Filtered513.lines = localFfis513 := by
  with_unfolding_all rfl
theorem ffiStep513 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis513) : LabToTarget.findFfiNames (Filtered513 :: rest) = suffixFfis513 := by
  rw [findFfiNames_section, localFfis513_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep513
end InitECandidate.Proofs.BackendStages.Metadata
