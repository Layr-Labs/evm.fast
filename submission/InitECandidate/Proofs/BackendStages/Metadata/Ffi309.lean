import InitECandidate.Proofs.BackendStages.Metadata.Data309
import InitECandidate.Proofs.BackendStages.Filtered309
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis309_eq : ffiLines Filtered309.lines = localFfis309 := by
  with_unfolding_all rfl
theorem ffiStep309 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis309) : LabToTarget.findFfiNames (Filtered309 :: rest) = suffixFfis309 := by
  rw [findFfiNames_section, localFfis309_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep309
end InitECandidate.Proofs.BackendStages.Metadata
