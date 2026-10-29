import InitECandidate.Proofs.BackendStages.Metadata.Data507
import InitECandidate.Proofs.BackendStages.Filtered507
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis507_eq : ffiLines Filtered507.lines = localFfis507 := by
  with_unfolding_all rfl
theorem ffiStep507 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis507) : LabToTarget.findFfiNames (Filtered507 :: rest) = suffixFfis507 := by
  rw [findFfiNames_section, localFfis507_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep507
end InitECandidate.Proofs.BackendStages.Metadata
