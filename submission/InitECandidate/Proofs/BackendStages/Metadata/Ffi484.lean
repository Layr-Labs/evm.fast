import InitECandidate.Proofs.BackendStages.Metadata.Data484
import InitECandidate.Proofs.BackendStages.Filtered484
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis484_eq : ffiLines Filtered484.lines = localFfis484 := by
  with_unfolding_all rfl
theorem ffiStep484 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis484) : LabToTarget.findFfiNames (Filtered484 :: rest) = suffixFfis484 := by
  rw [findFfiNames_section, localFfis484_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep484
end InitECandidate.Proofs.BackendStages.Metadata
