import InitECandidate.Proofs.BackendStages.Metadata.Data645
import InitECandidate.Proofs.BackendStages.Filtered645
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis645_eq : ffiLines Filtered645.lines = localFfis645 := by
  with_unfolding_all rfl
theorem ffiStep645 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis645) : LabToTarget.findFfiNames (Filtered645 :: rest) = suffixFfis645 := by
  rw [findFfiNames_section, localFfis645_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep645
end InitECandidate.Proofs.BackendStages.Metadata
