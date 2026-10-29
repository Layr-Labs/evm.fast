import InitECandidate.Proofs.BackendStages.Metadata.Data322
import InitECandidate.Proofs.BackendStages.Filtered322
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis322_eq : ffiLines Filtered322.lines = localFfis322 := by
  with_unfolding_all rfl
theorem ffiStep322 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis322) : LabToTarget.findFfiNames (Filtered322 :: rest) = suffixFfis322 := by
  rw [findFfiNames_section, localFfis322_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep322
end InitECandidate.Proofs.BackendStages.Metadata
