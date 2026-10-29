import InitECandidate.Proofs.BackendStages.Metadata.Data670
import InitECandidate.Proofs.BackendStages.Filtered670
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis670_eq : ffiLines Filtered670.lines = localFfis670 := by
  with_unfolding_all rfl
theorem ffiStep670 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis670) : LabToTarget.findFfiNames (Filtered670 :: rest) = suffixFfis670 := by
  rw [findFfiNames_section, localFfis670_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep670
end InitECandidate.Proofs.BackendStages.Metadata
