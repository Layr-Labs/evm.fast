import InitECandidate.Proofs.BackendStages.Metadata.Data855
import InitECandidate.Proofs.BackendStages.Filtered855
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis855_eq : ffiLines Filtered855.lines = localFfis855 := by
  with_unfolding_all rfl
theorem ffiStep855 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis855) : LabToTarget.findFfiNames (Filtered855 :: rest) = suffixFfis855 := by
  rw [findFfiNames_section, localFfis855_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep855
end InitECandidate.Proofs.BackendStages.Metadata
