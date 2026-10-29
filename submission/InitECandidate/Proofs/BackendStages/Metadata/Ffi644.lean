import InitECandidate.Proofs.BackendStages.Metadata.Data644
import InitECandidate.Proofs.BackendStages.Filtered644
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis644_eq : ffiLines Filtered644.lines = localFfis644 := by
  with_unfolding_all rfl
theorem ffiStep644 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis644) : LabToTarget.findFfiNames (Filtered644 :: rest) = suffixFfis644 := by
  rw [findFfiNames_section, localFfis644_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep644
end InitECandidate.Proofs.BackendStages.Metadata
