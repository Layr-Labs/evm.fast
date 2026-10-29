import InitECandidate.Proofs.BackendStages.Metadata.Data448
import InitECandidate.Proofs.BackendStages.Filtered448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis448_eq : ffiLines Filtered448.lines = localFfis448 := by
  with_unfolding_all rfl
theorem ffiStep448 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis448) : LabToTarget.findFfiNames (Filtered448 :: rest) = suffixFfis448 := by
  rw [findFfiNames_section, localFfis448_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep448
end InitECandidate.Proofs.BackendStages.Metadata
