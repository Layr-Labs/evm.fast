import InitECandidate.Solver.AuthorizationWork.InitializedSignedCounter
import InitECandidate.Solver.Spec.Mpt.Leaves.Keccak
import InitECandidate.Solver.MemSafe.Wg.CostBase

/-! The installed Keccak permutation initializes its round index to zero
and increments it up to 24. Every round body and the store tail cost zero
source clock ticks. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace KeccakRounds
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Inv InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe

private theorem decChain_cost {σ : Type} {x : MlS} {b : ProgHOL 64} {B : Nat}
    (hb : Cost σ guestCtx b B) (decls : List (MlS × Nat)) :
    Cost σ guestCtx (decChain x decls b) B := by
  induction decls with
  | nil => exact hb
  | cons d rest ih =>
    obtain ⟨name, offset⟩ := d
    exact cost_dec ih

theorem bodyCost {σ : Type} : Cost σ guestCtx (kfBody kfW) 24 := by
  unfold kfBody
  apply decChain_cost
  have hRound : Cost σ guestCtx kfW 0 := Wg.cost_guest_costA (by decide_cbv)
  have hStep : Steps σ (nm "r") (· + 1) kfW := stepsB_sound _ true _ (by decide_cbv)
  have hTail : Cost σ guestCtx (stChain (nm "stp") kfSts) 0 :=
    Wg.cost_guest_costA (by decide_cbv)
  have h : Inv.CostP σ guestCtx (fun _ => True)
      (.dec (nm "r") .one (cw 0) (.seq (.while (.cmp .less (lv (nm "r")) (cw 24)) kfW)
        (stChain (nm "stp") kfSts))) 24 := by
    refine Inv.costP_dec ?_
    intro s _ _ v hv _
    rw [ev_cw] at hv
    cases hv
    refine Inv.costP_seq ?_ (R := fun _ => True) (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost hTail)
    refine (InitializedSignedCounter.loop_cost (by decide) hRound hStep).pre ?_
    intro t _ ht
    subst t
    exact ⟨0, lk_set_self _ _ _, by decide⟩
  exact fun s hs hg => ⟨h s hs trivial hg, inCtx_eval hs _⟩

theorem calleeCost {σ : Type} : CalleeCost σ guestCtx (nm "keccak_f1600") 24 := by
  intro vs body callee shape hLookup
  obtain ⟨params, hCode⟩ := lookupCode_some hLookup
  rw [guestCtx_code, code_keccak_f1600] at hCode
  have hb : body = kfBody kfW := (congrArg (fun row => row.2.1) (Option.some.inj hCode)).symm
  rw [hb]
  exact bodyCost

#print axioms calleeCost

end KeccakRounds
