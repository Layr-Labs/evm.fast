import InitECandidate.Solver.Improvements.BoundedInitializedLoop
import InitECandidate.Solver.MemSafe.Wg.Cost1

/-! The withdrawal walk already reads a typed count from the payload. Use
this exact local and the repriced account mutation to bound the loop. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace AccountWithdrawalCosts
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Eb
open InitECandidate.Solver.MemSafe.Wg

variable {σ : Type}

theorem loop_cost {E : EbE σ} {En : Env} {S : FS} {nwd : BitVec 64} {iterationPrice : Nat}
    (hBodyCost : Cost σ guestCtx wdS6 iterationPrice)
    (hn : nwd.toNat < 2 ^ 32) (hEn : En (nm "nwd") = some (.val (.word nwd))) :
    Inv.CostP σ guestCtx (PA E (EnI En 0) S) wdS5 (2 ^ 32 * (iterationPrice + 1)) := by
  unfold wdS5
  refine Inv.CostP.pre
    (BoundedInitializedLoop.costP_while_local_cap (I := fun _ => True) (fun _ _ => trivial)
      (Inv.costP_of_cost hBodyCost) (fun _ _ _ _ _ => trivial)
      (noContB_sound _ (by decide +kernel)) (stepsB_sound (nm "i") true _ (by decide +kernel))
      (keepsB_sound (nm "nwd") _ (by decide +kernel))) ?_
  intro s hs hp
  exact ⟨trivial, ⟨0, hp.2 _ _ (by simp [EnI, Env.set]), by decide⟩,
    nwd, hp.2 _ _ (by simp (config := { decide := true }) [EnI, Env.set, hEn]), Nat.le_of_lt hn⟩

#print axioms loop_cost
end AccountWithdrawalCosts
