import InitECandidate.Proofs.BackendStages.Metadata.Data590
import InitECandidate.Proofs.BackendStages.Filtered590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis590_eq : ffiLines Filtered590.lines = localFfis590 := by
  with_unfolding_all rfl
theorem ffiStep590 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis590) : LabToTarget.findFfiNames (Filtered590 :: rest) = suffixFfis590 := by
  rw [findFfiNames_section, localFfis590_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep590
end InitECandidate.Proofs.BackendStages.Metadata
