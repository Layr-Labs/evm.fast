import InitECandidate.Proofs.BackendStages.Metadata.Data446
import InitECandidate.Proofs.BackendStages.Filtered446
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis446_eq : ffiLines Filtered446.lines = localFfis446 := by
  with_unfolding_all rfl
theorem ffiStep446 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis446) : LabToTarget.findFfiNames (Filtered446 :: rest) = suffixFfis446 := by
  rw [findFfiNames_section, localFfis446_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep446
end InitECandidate.Proofs.BackendStages.Metadata
