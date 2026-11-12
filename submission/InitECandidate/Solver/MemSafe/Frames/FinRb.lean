import InitECandidate.Solver.MemSafe.Frames.FinCost
import InitECandidate.Solver.MemSafe.HtabEntries.Truncate

/-!
# `rollback_child_access`: its conditional cost (the `FinCosts.rb` entry)

```
fun 1 rollback_child_access(1 child) {
  htab_truncate(lds 1 (child + EV_ACC_ADDRS), lds 1 (child + EV_ACC_ADDRS_N));
  htab_truncate(lds 1 (child + EV_ACC_KEYS), lds 1 (child + EV_ACC_KEYS_N));
  return 0; }
```

**`rb_condCost`**: under `G` with `child` an EV object (`sgRb tEV`), at most
`2 + 2 · 2 ^ 59 · (Bdel + 2)` ticks. EV slots 21 / 22 are typed `ptr tHTh20` / `ptr tHTh52`, so
each truncated table is a `Γ` header whose hook gives `TableWF` (`htab_truncate_costP_wf`);
between the calls `G` and the EV object survive by `csumm_htab_truncate`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.HtabEntries

variable {σ : Type} {X : Ctx 64}

def rbBody : ProgHOL 64 :=
  .seq (callD (nm "htab_truncate") [lLoad "child" 168, lLoad "child" 264])
  (.seq (callD (nm "htab_truncate") [lLoad "child" 176, lLoad "child" 272])
    (.return (cw 0)))

theorem entry_rb : fnEntry Guest.Software.guestFn_rollback_child_access =
    (nm "rollback_child_access", [(nm "child", .one)], rbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rb :
    guestCode (nm "rollback_child_access") = some ([(nm "child", .one)], rbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 593) (by decide)) ⟨_, rfl⟩
    entry_rb

section rb
variable {H : Hooks σ} (hF : FoldOK σ X guestC H) (hT : HtabHooks H)

include hF hT

/-- The table of EV slot `k` (21 or 22), typed `ptr th`, is well formed. -/
theorem rb_tab {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {o : Obj} (ho : o ∈ Γ)
    (hot : o.ty = tEV) {k th : Nat} (hk : k = 21 ∨ k = 22) (hsl : (guestC.ty tEV).slot k = .ptr th)
    (hth : th ∈ hdrTys) :
    ∃ o' ∈ Γ, o'.base = fld s.memory o.base (8 * k) ∧ o'.ty = th ∧
      Spec.Inv.TableWF s (fld s.memory o.base (8 * k)) := by
  obtain ⟨p, -, -, hL, hFl, -, -, hW⟩ := hG
  have hsz := (lay_obj hL ho).2.2.2.1
  have hmin : (guestC.ty o.ty).minSz = 280 := by rw [hot]; rfl
  have hfit := hFl o ho k (by unfold Obj.HasSlot; omega)
  rw [hot, hsl] at hfit
  obtain ⟨o', ho', hb', ht'⟩ := hfit
  have hb : o'.base = fld s.memory o.base (8 * k) := hb'
  have hw := hT.get Γ s o' (by rw [ht']; exact hkOf_of_tab hth) (hW o' ho')
  obtain ⟨-, -, hwf, -⟩ := hw
  exact ⟨o', ho', hb, ht', hb ▸ hwf⟩

/-- One truncate call of the body: its cost under `PRb`, and `PRb` after it. -/
theorem rb_call {Bdel : Nat} (hdel : CalleeCost σ X (nm "htab_del") Bdel) {e : BitVec 64}
    {k th : Nat} (hk : k = 21 ∨ k = 22) (hsl : (guestC.ty tEV).slot k = .ptr th)
    (hth : th ∈ hdrTys) (j : Nat) :
    Inv.CostP σ X (PRb guestC H tEV e) (callD (nm "htab_truncate") [lLoad "child" (8 * k), lLoad "child" j])
      (1 + 2 ^ 59 * (Bdel + 2) + 0) ∧
    Hoare σ X (PRb guestC H tEV e) (callD (nm "htab_truncate") [lLoad "child" (8 * k), lLoad "child" j])
      (fun r t => r = none → PRb guestC H tEV e t) := by
  have hH := hF.hH
  -- the arguments
  have hargs : ∀ s, PRb guestC H tEV e s → ∀ vs,
      evs s [lLoad "child" (8 * k), lLoad "child" j] = some vs →
      vs = [.val (.word (fld s.memory e (8 * k))), .val (.word (fld s.memory e j))] := by
    intro s hs vs hvs
    obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [ev_lLoad_eq hs.1 h1, ev_lLoad_eq hs.1 h2]
  refine ⟨Inv.costP_callD (Inv.htab_truncate_costP_wf hF.hX hdel) fun s _ hs vs hvs callee => ?_, ?_⟩
  · rw [hargs s hs vs hvs]
    obtain ⟨-, Γ, hG, o, ho, rfl, hot⟩ := hs
    have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG
    obtain ⟨-, -, -, -, hwf⟩ := rb_tab hF hT hGe ho hot hk hsl hth
    exact ⟨_, _, rfl, hwf⟩
  · have hcs := csumm_htab_truncate hF hT hth
    unfold CSumm SumSpecA at hcs
    refine hoare_callD hcs fun s _ hs vs hvs callee v st hR _ => ?_
    intro _
    have hvs' := hargs s hs vs hvs
    obtain ⟨hc, Γ, hG, o, ho, hob, hot⟩ := hs
    subst hob
    have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG
    obtain ⟨o', ho', hb', ht', -⟩ := rb_tab hF hT hGe ho hot hk hsl hth
    have hG0 := hG
    obtain ⟨p, hp, -⟩ := hG0
    have hA : ArgsOK guestC Γ p (truncSig th).params vs := by
      refine ⟨by rw [hvs']; rfl, fun i pt w hpt hw => ?_⟩
      rw [hvs'] at hw
      rcases i with _ | _ | i
      · simp only [truncSig, List.getElem?_cons_zero, Option.some.injEq] at hpt hw
        subst hpt hw
        exact ⟨_, rfl, o', ho', hb', ht'⟩
      · simp only [truncSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
        subst hpt
        trivial
      · simp [truncSig] at hpt
    obtain ⟨Γ', p1, p2, hc', -⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ hGe
      ⟨p, (ptrsOf_congr rfl).trans hp, hA⟩
      (fun c hc hne => by
        simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
        rcases hc with rfl | rfl <;> exact absurd rfl hne)
    obtain ⟨-, -, -, hx, -, hGt, -⟩ := hc'
    obtain ⟨o2, ho2, hb2, ht2, -⟩ := hx o ho
    exact ⟨hc, Γ', (G_locFree hH st _ _).mpr hGt, o2, ho2, hb2, ht2.trans hot⟩

/-- **The conditional cost of `rollback_child_access`.** -/
theorem rb_condCost {Bdel : Nat} (hdel : CalleeCost σ X (nm "htab_del") Bdel) :
    CondCost σ X guestC H (nm "rollback_child_access") (sgRb tEV) (fun _ _ _ => True)
      (2 + 2 * (2 ^ 59 * (Bdel + 2))) := by
  intro vs body callee rs hl
  rw [hF.hX] at hl
  obtain ⟨rfl, -, A, rfl, hsa, hla⟩ := lookupCode_one code_rb hl
  obtain ⟨e, rfl⟩ := val_of_shapeEq_one hsa
  have c1 := rb_call hF hT hdel (e := e) (k := 21) (Or.inl rfl) rfl (by decide) 264
  have c2 := rb_call hF hT hdel (e := e) (k := 22) (Or.inr rfl) rfl (by decide) 272
  have H0 : Inv.CostP σ X (PRb guestC H tEV e) rbBody (2 + 2 * (2 ^ 59 * (Bdel + 2))) :=
    Inv.CostP.mono (Inv.costP_seq c1.1 c1.2 (Inv.costP_seq (R := fun _ => True) c2.1
      (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost (cost_return _)))) (by omega)
  rintro s hs ⟨hloc, Γ, p, hG, -, ⟨-, hA⟩, -⟩ hg
  obtain ⟨w, hw, o, ho, hob, hot⟩ := hA 0 _ _ rfl rfl
  simp only [wordOf, Option.some.injEq] at hw
  subst hw
  exact H0 s hs ⟨by rw [hloc]; exact hla, Γ, hG, o, ho, hob, hot⟩ hg

end rb

end InitECandidate.Solver.MemSafe.Frames
