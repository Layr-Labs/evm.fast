import InitECandidate.Solver.Improvements.BoundedInitializedLoop
import InitECandidate.Solver.MemSafe.Wg.Cost1

/-! The withdrawal walk already reads a typed count from the payload. Use
this exact local to price the loop and keep the accepted body analyzer. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace WithdrawalLoopBound
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Eb
open InitECandidate.Solver.MemSafe.Wg

variable {σ : Type}

def iterationPrice : Nat := 6277101735386681920455555159187925072843226291902091403246

def loopPrice : Nat := (2 ^ 32) * (iterationPrice + 1)

theorem loopPrice_eq :
    loopPrice = 26959946667150644762311082830236212105960074658846832210948613210112 := by decide

theorem iteration_cost : Cost σ guestCtx wdS6 iterationPrice :=
  cost_guest_costA (by decide_cbv)

theorem loop_cost {E : EbE σ} {En : Env} {S : FS} {nwd : BitVec 64}
    (hn : nwd.toNat < 2 ^ 32) (hEn : En (nm "nwd") = some (.val (.word nwd))) :
    Inv.CostP σ guestCtx (PA E (EnI En 0) S) wdS5 loopPrice := by
  unfold wdS5
  refine Inv.CostP.pre
    (BoundedInitializedLoop.costP_while_local_cap (I := fun _ => True) (fun _ _ => trivial)
      (Inv.costP_of_cost iteration_cost) (fun _ _ _ _ _ => trivial)
      (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "i") true _ (by decide_cbv))
      (keepsB_sound (nm "nwd") _ (by decide_cbv))) ?_
  intro s hs hp
  exact ⟨trivial, ⟨0, hp.2 _ _ (by simp [EnI, Env.set]), by decide⟩,
    nwd, hp.2 _ _ (by simp (config := { decide := true }) [EnI, Env.set, hEn]), Nat.le_of_lt hn⟩

#print axioms loop_cost
end WithdrawalLoopBound
