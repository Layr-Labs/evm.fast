import InitECandidate.Proofs.BackendStages.Metadata.Data841
import InitECandidate.Proofs.BackendStages.Filtered841
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis841_eq : ffiLines Filtered841.lines = localFfis841 := by
  with_unfolding_all rfl
theorem ffiStep841 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis841) : LabToTarget.findFfiNames (Filtered841 :: rest) = suffixFfis841 := by
  rw [findFfiNames_section, localFfis841_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep841
end InitECandidate.Proofs.BackendStages.Metadata
