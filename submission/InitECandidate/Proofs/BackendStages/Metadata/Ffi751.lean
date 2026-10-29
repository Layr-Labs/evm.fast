import InitECandidate.Proofs.BackendStages.Metadata.Data751
import InitECandidate.Proofs.BackendStages.Filtered751
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis751_eq : ffiLines Filtered751.lines = localFfis751 := by
  with_unfolding_all rfl
theorem ffiStep751 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis751) : LabToTarget.findFfiNames (Filtered751 :: rest) = suffixFfis751 := by
  rw [findFfiNames_section, localFfis751_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep751
end InitECandidate.Proofs.BackendStages.Metadata
