import InitECandidate.Solver.TxAl.Defs
import InitECandidate.Solver.MemSafe.Wg.CostBase
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop
import InitECandidate.Solver.Spec.Inv.HtabCode
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.SourceCost.Table

/-!
# `tx_put_access_list`: the record loop is bounded by the memory domain

Every completed iteration of `while i <+ n` loads the storage-key count of record `i` from
`recs + 24 i + 16` (a word load in the loop body itself). That address is mapped and moves by
exactly `24` per iteration, so `cost_while_addr` bounds the loop by the size of the memory
domain (`L ≤ 2 ^ 35`) instead of the analyzer's `2 ^ 64 + 1`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.TxAl
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

abbrev outerPrice : Nat := 2041694201525630781315203222728186265639

theorem outer_cost : Cost σ guestCtx outerBody outerPrice :=
  MemSafe.Wg.cost_guest_costA (by decide_cbv)

/-- A completed `var x = e; b` evaluated `e` and completed `b` from the extended state. -/
theorem dec_completes {t : PanSemStateFiniteExact 64 σ} {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {b : ProgHOL 64} (h : Completes t (.dec n sh e b)) :
    ∃ v, ev t e = some v ∧ Completes (setVarHOLFinite n v t) b := by
  unfold Completes at h ⊢
  rw [evaluateHOLFiniteState_eq_evaluate_def t (.dec n sh e b)] at h
  dsimp only at h
  split at h
  · simp at h
  · rename_i v hv
    split at h
    · exact ⟨v, hv, h⟩
    · simp at h

theorem lk_setVar_ne {t : PanSemStateFiniteExact 64 σ} {x y : MlS} {v : ValueHOL 64} (h : x ≠ y) :
    (setVarHOLFinite x v t).locals.lookup y = t.locals.lookup y := by
  simp only [setVarHOLFinite]
  exact lookup_update_ne _ _ h

/-- The address read by an iteration: `recs + i * 24 + 16`. -/
def recAddr (t : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
  match wordLocal t (nm "recs"), wordLocal t (nm "i") with
  | some R, some I => some (R + I * 24 + 16)
  | _, _ => none

theorem steps_i : stepsB (nm "i") true outerBody = true := by decide_cbv
theorem keeps_recs : keepsB (nm "recs") outerBody = true := by decide_cbv

theorem load_hit {s : PanSemStateFiniteExact 64 σ} {x : MlS} {X : BitVec 64} {c : Nat} {v : ValueHOL 64}
    (hx : s.locals.lookup x = some (.val (.word X)))
    (h : ev s (.load .one (.op .add [lv x, cw c])) = some v) : s.memaddrs (X + BitVec.ofNat 64 c) := by
  have ha := ev_add2 (s := s) (ev_lw hx) (ev_cw s c)
  simp only [ev, evalHOLExact] at h ha
  split at h
  · split at h
    · rename_i w hw
      rw [ha] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      subst hw
      rw [memLoadHOLExact] at h
      split at h
      · rename_i hd
        simpa using hd
      · simp at h
    · simp at h
  · simp at h

theorem outer_hit {t : PanSemStateFiniteExact 64 σ} (hc : Completes t outerBody) :
    ∃ R I : BitVec 64, t.locals.lookup (nm "recs") = some (.val (.word R)) ∧
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ t.memaddrs (R + I * 24 + 16) := by
  unfold outerBody at hc
  obtain ⟨v1, hv1, hc1⟩ := dec_completes hc
  obtain ⟨v2, hv2, -⟩ := dec_completes hc1
  have hrec : (setVarHOLFinite (nm "rec") v1 t).locals.lookup (nm "rec") = some v1 := by
    simp only [setVarHOLFinite]; exact lookup_update_self _ _ _
  obtain ⟨x, y, hx, hy, rfl⟩ := InitECandidate.Solver.Spec.Inv.ev_add2_inv hv1
  obtain ⟨a, b, ha, hb, hab⟩ := InitECandidate.Solver.Spec.Inv.ev_mul2_inv hy
  rw [ev_cw] at hb
  cases hb
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hab
  subst hab
  refine ⟨x, a, hx, ha, ?_⟩
  have hh := load_hit (s := setVarHOLFinite (nm "rec") (.val (.word (x + a * 24#64))) t) hrec hv2
  exact hh

theorem outerLoop_cost :
    Cost σ guestCtx (.while (.cmp .lower (.var .local (nm "i")) (.var .local (nm "n"))) outerBody)
      ((2 ^ 35 + 9) * (outerPrice + 1)) := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, hL35⟩ := guestCtx_bounded
  have hLs : L + alignSlack 64 ≤ 2 ^ 64 := by unfold addrStepMax at hL; omega
  have hsl : alignSlack 64 = 8 := by decide
  refine Cost.mono (cost_while_addr recAddr lo (L + alignSlack 64) 24 (by unfold addrStepMax at hL; omega)
    outer_cost (fun _ => rfl) ?_) ?_
  · intro t ht hc
    obtain ⟨R, I, hR, hI, hm⟩ := outer_hit hc
    have hw : recAddr t = some (R + I * 24 + 16) := by
      unfold recAddr wordLocal; rw [hR, hI]
    refine ⟨R + I * 24 + 16, hw, hit_offset hdom hLs (Or.inl (ht.2.1 ▸ hm)), 24, by decide, by decide, ?_⟩
    have hI' := stepsB_sound (σ := σ) (nm "i") true outerBody steps_i t I hI hc
    have hR' := keepsB_sound (σ := σ) (nm "recs") outerBody keeps_recs t
      (by rcases hc with h | h <;> simp [LoopExit, h])
    unfold recAddr wordLocal
    rw [hR', hR, hI']
    simp only [stepFun, if_true]
    congr 1
    rw [BitVec.add_mul]
    bv_omega
  · rw [hsl]
    exact Nat.mul_le_mul_right _ (by omega)

abbrev apPrice : Nat :=
  1 + 680564733841876927129663399674341490697 +
    (1 + 36893488147419103237 + ((2 ^ 35 + 9) * (outerPrice + 1) + 0))

theorem ap_cost : CalleeCost σ guestCtx (nm "tx_put_access_list") apPrice := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := InitECandidate.Solver.SourceCost.lookupCode_some lookup
  rw [guestCtx_code, code_ap] at hc
  have body : actual = apBody := (congrArg (fun entry => entry.2.1) (Option.some.inj hc)).symm
  rw [body]
  unfold apBody
  exact cost_decCall (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
    (cost_decCall (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
      (cost_dec (cost_dec (cost_seq outerLoop_cost (cost_return _)))))

#print axioms ap_cost

end InitECandidate.Solver.TxAl
