import InitECandidate.Proofs.BackendStages.Metadata.Data449
import InitECandidate.Proofs.BackendStages.Filtered449
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis449_eq : ffiLines Filtered449.lines = localFfis449 := by
  with_unfolding_all rfl
theorem ffiStep449 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis449) : LabToTarget.findFfiNames (Filtered449 :: rest) = suffixFfis449 := by
  rw [findFfiNames_section, localFfis449_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep449
end InitECandidate.Proofs.BackendStages.Metadata
