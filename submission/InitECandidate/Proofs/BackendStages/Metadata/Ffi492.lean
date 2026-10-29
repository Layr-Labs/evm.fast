import InitECandidate.Proofs.BackendStages.Metadata.Data492
import InitECandidate.Proofs.BackendStages.Filtered492
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis492_eq : ffiLines Filtered492.lines = localFfis492 := by
  with_unfolding_all rfl
theorem ffiStep492 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis492) : LabToTarget.findFfiNames (Filtered492 :: rest) = suffixFfis492 := by
  rw [findFfiNames_section, localFfis492_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep492
end InitECandidate.Proofs.BackendStages.Metadata
