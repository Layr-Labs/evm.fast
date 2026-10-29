import InitECandidate.Proofs.BackendStages.Metadata.Data796
import InitECandidate.Proofs.BackendStages.Filtered796
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis796_eq : ffiLines Filtered796.lines = localFfis796 := by
  with_unfolding_all rfl
theorem ffiStep796 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis796) : LabToTarget.findFfiNames (Filtered796 :: rest) = suffixFfis796 := by
  rw [findFfiNames_section, localFfis796_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep796
end InitECandidate.Proofs.BackendStages.Metadata
