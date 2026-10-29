import InitECandidate.Proofs.BackendStages.Metadata.Data267
import InitECandidate.Proofs.BackendStages.Filtered267
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis267_eq : ffiLines Filtered267.lines = localFfis267 := by
  with_unfolding_all rfl
theorem ffiStep267 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis267) : LabToTarget.findFfiNames (Filtered267 :: rest) = suffixFfis267 := by
  rw [findFfiNames_section, localFfis267_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep267
end InitECandidate.Proofs.BackendStages.Metadata
