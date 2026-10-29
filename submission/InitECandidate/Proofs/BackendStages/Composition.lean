import InitECandidate.Proofs.BackendComputation
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm
namespace InitECandidate.Proofs.BackendStages.Composition
theorem padCode_append {width : Nat} [NeZero width]
    (nop : List (BitVec 8)) (left right : LabSem.LabProgHOL width) :
    LabToTarget.padCode nop (left ++ right) =
      LabToTarget.padCode nop left ++ LabToTarget.padCode nop right := by
  induction left with
  | nil => rfl
  | cons sec rest ih =>
    cases sec
    simp only [List.cons_append, LabToTarget.padCode, ih]
theorem progToBytes_append {width : Nat} [NeZero width]
    (left right : LabSem.LabProgHOL width) :
    LabToTarget.progToBytes (left ++ right) =
      LabToTarget.progToBytes left ++ LabToTarget.progToBytes right := by
  simp only [LabToTarget.progToBytesMap, List.map_append, List.flatten_append]
theorem valid_append {width : Nat} [NeZero width]
    (config : AsmConfigExact width) (left right : LabSem.LabProgHOL width)
    (hl : LabToTarget.allEncOkLight config left = true)
    (hr : LabToTarget.allEncOkLight config right = true) :
    LabToTarget.allEncOkLight config (left ++ right) = true := by
  unfold LabToTarget.allEncOkLight at *
  rw [List.all_append, hl, hr]
  rfl
#print axioms padCode_append
#print axioms progToBytes_append
#print axioms valid_append
end InitECandidate.Proofs.BackendStages.Composition
