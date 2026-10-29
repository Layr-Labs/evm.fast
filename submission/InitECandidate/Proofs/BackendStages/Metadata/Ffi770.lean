import InitECandidate.Proofs.BackendStages.Metadata.Data770
import InitECandidate.Proofs.BackendStages.Filtered770
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis770_eq : ffiLines Filtered770.lines = localFfis770 := by
  with_unfolding_all rfl
theorem ffiStep770 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis770) : LabToTarget.findFfiNames (Filtered770 :: rest) = suffixFfis770 := by
  rw [findFfiNames_section, localFfis770_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep770
end InitECandidate.Proofs.BackendStages.Metadata
