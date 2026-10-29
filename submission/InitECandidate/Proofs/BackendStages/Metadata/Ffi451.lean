import InitECandidate.Proofs.BackendStages.Metadata.Data451
import InitECandidate.Proofs.BackendStages.Filtered451
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis451_eq : ffiLines Filtered451.lines = localFfis451 := by
  with_unfolding_all rfl
theorem ffiStep451 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis451) : LabToTarget.findFfiNames (Filtered451 :: rest) = suffixFfis451 := by
  rw [findFfiNames_section, localFfis451_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep451
end InitECandidate.Proofs.BackendStages.Metadata
