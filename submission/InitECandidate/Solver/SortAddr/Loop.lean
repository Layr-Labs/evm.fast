import InitECandidate.Solver.SortAddr.Step

/-!
# The three merge loops of `sort_elems`

Every completed iteration copies one element to a hit destination `dst + k * esz` and
increments `k`, so the measure `Lh + 4096 - off (dst + k * esz)` decreases. Each loop
therefore runs at most `Lh + 4097` iterations, independently of the element count.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

namespace InitECandidate.Solver.SortAddr
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem stepPost_res {c : MC X} {K : BitVec 64} {r : Option (PanSemResultExact 64)}
    {t : PanSemStateFiniteExact 64 σ} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ∉ mNames) (h2 : x ≠ qI) (h3 : x ≠ qJ) (h4 : x ≠ qK) (h : StepPost c K r t) :
    StepPost c K r { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨hr, ⟨I', J', hm⟩, hh⟩ := h
  exact ⟨hr, ⟨I', J', minv_res h1 h2 h3 h4 hm⟩, hh⟩

theorem hoare_mStep (hC : X.code.lookup = guestCode) (c : MC X) {I J K : BitVec 64}
    (hI : I.toNat < c.M.toNat) (hJ : J.toNat < c.R.toNat) :
    Hoare σ X (fun s => MInv c I J K s.locals) mStep (StepPost c K) := by
  unfold mStep
  refine hoare_dec fun s _ hs v _ _ => ?_
  refine hoare_pre (P := fun t => MInv c I J K t.locals) ?_ (fun t _ ht => by
    subst ht; exact minv_upd (by decide) (by decide) (by decide) (by decide) hs)
  refine hoare_post (Q := StepPost c K) ?_
    (fun r t _ _ h => stepPost_res (by decide) (by decide) (by decide) (by decide) h)
  refine hoare_dec fun s _ hs v _ _ => ?_
  refine hoare_pre (P := fun t => MInv c I J K t.locals) ?_ (fun t _ ht => by
    subst ht; exact minv_upd (by decide) (by decide) (by decide) (by decide) hs)
  refine hoare_post (Q := StepPost c K) ?_
    (fun r t _ _ h => stepPost_res (by decide) (by decide) (by decide) (by decide) h)
  refine hoare_decCall (funRet_true _) fun s _ hs vs _ v _ _ => ?_
  refine hoare_pre (P := fun t => MInv c I J K t.locals) ?_ (fun t _ ht => by
    rw [ht]; exact minv_upd (by decide) (by decide) (by decide) (by decide) hs)
  refine hoare_post (Q := StepPost c K) ?_
    (fun r t _ _ h => stepPost_res (by decide) (by decide) (by decide) (by decide) h)
  refine hoare_seq (R := fun r t => r = none ∧ (∃ I J, MInvK c I J K t.locals) ∧
      c.d.off (c.D + K * c.E) < c.d.Lh) ?_ (fun r _ _ hr _ h => absurd h.1 hr) (hoare_incK c)
  refine hoare_ite ?_ ?_
  · exact hoare_pre (hoare_copyI hC c hI (P := fun m => MInv c I J K m) (fun m h => h))
      (fun s _ h => h.1)
  · exact hoare_pre (hoare_copyJ hC c hJ (P := fun m => MInv c I J K m) (fun m h => h))
      (fun s _ h => h.1)

/-! ## Generic merge-loop rules -/

/-- The destination measure. -/
def mu (c : MC X) (s : PanSemStateFiniteExact 64 σ) : Nat :=
  match s.locals.lookup qK with
  | some (.val (.word K)) => c.d.Lh + 4096 - c.d.off (c.D + K * c.E)
  | _ => 0

theorem mu_eq (c : MC X) {s : PanSemStateFiniteExact 64 σ} {K : BitVec 64}
    (h : Lk qK K s.locals) : mu c s = c.d.Lh + 4096 - c.d.off (c.D + K * c.E) := by
  unfold mu; rw [h]

theorem mu_lt (c : MC X) {s : PanSemStateFiniteExact 64 σ} {K : BitVec 64}
    (hh : c.d.off (c.D + K * c.E) < c.d.Lh) (h : Lk qK (K + 1) s.locals) :
    mu c s < c.d.Lh + 4096 - c.d.off (c.D + K * c.E) := by
  rw [mu_eq c h, addr_succ, c.d.off_add hh c.hE2]
  have := c.hE1
  omega

/-- A merge loop under a `k`-indexed invariant `Iv`. -/
theorem costP_kloop (c : MC X) {cond : ExpHOL 64} {body : ProgHOL 64} {Bb : Nat}
    (Iv : BitVec 64 → Lcl → Prop) (hIk : ∀ K m, Iv K m → Lk qK K m)
    (hb : Cost σ X body Bb)
    (hspec : ∀ K, Hoare σ X (fun s => Iv K s.locals ∧ CondTrue s cond) body
      (fun r t => r = none ∧ Iv (K + 1) t.locals ∧ c.d.off (c.D + K * c.E) < c.d.Lh)) :
    Inv.CostP σ X (fun s => ∃ K, Iv K s.locals) (.while cond body)
      ((c.d.Lh + 4096 + 1) * (Bb + 1)) := by
  refine Inv.costP_while (I := fun s => ∃ K, Iv K s.locals) (mu c) (c.d.Lh + 4096)
    (fun s h => h) (fun s => rfl) (Inv.costP_of_cost hb) ?_ ?_ ?_
  · intro s hs ⟨⟨K, hk⟩, hc⟩ ht hr
    obtain ⟨-, hk', -⟩ := hspec K s hs ⟨hk, hc⟩ ht
    exact ⟨K + 1, hk'⟩
  · intro s _ _ _
    unfold mu
    split <;> omega
  · intro k s hs ⟨⟨K, hk⟩, hc, hm⟩ ht _
    obtain ⟨-, hk', hh⟩ := hspec K s hs ⟨hk, hc⟩ ht
    rw [← hm, mu_eq c (hIk K _ hk)]
    exact mu_lt c hh (hIk _ _ hk')

/-- The same loop as a triple, with the exit condition. -/
theorem hoare_kloop (c : MC X) {cond : ExpHOL 64} {body : ProgHOL 64}
    (Iv : BitVec 64 → Lcl → Prop) {Ex : Lcl → Prop}
    (hspec : ∀ K, Hoare σ X (fun s => Iv K s.locals ∧ CondTrue s cond) body
      (fun r t => r = none ∧ Iv (K + 1) t.locals ∧ c.d.off (c.D + K * c.E) < c.d.Lh))
    (hex : ∀ s : PanSemStateFiniteExact 64 σ, ∀ K, Iv K s.locals →
      ev s cond = some (.val (.word 0)) → Ex s.locals) :
    Hoare σ X (fun s => ∃ K, Iv K s.locals) (.while cond body)
      (fun r t => r = none ∧ Ex t.locals) := by
  refine hoare_while (fun s h => h) ?_ (fun s _ ⟨K, hk⟩ h0 => ⟨rfl, hex s K hk h0⟩)
  intro s hs ⟨⟨K, hk⟩, hc⟩ ht
  have h := hspec K s hs ⟨hk, hc⟩ ht
  obtain ⟨hr, hk', -⟩ := h
  exact ⟨fun _ => ⟨K + 1, hk'⟩, fun h => by rw [hr] at h; simp at h,
    fun h => by rw [hr] at h; simp at h, fun _ h => by rw [hr] at h; simp at h⟩

/-! ## Loop conditions -/

theorem cond_less {s : PanSemStateFiniteExact 64 σ} {x y : MlS} {A B : BitVec 64}
    (ha : Lk x A s.locals) (hb : Lk y B s.locals) (hA : A.toNat < 2 ^ 63)
    (h : CondTrue s (.cmp .less (lv x) (lv y))) : B.toNat < 2 ^ 63 ∧ A.toNat < B.toNat := by
  obtain ⟨w, hw, hw0⟩ := h
  obtain ⟨a, b, h1, h2, hab⟩ := cmp_true hw hw0
  rw [ev_lk ha] at h1; cases h1
  rw [ev_lk hb] at h2; cases h2
  exact slt_true_left hA hab

theorem cond_less_false {s : PanSemStateFiniteExact 64 σ} {x y : MlS} {A B : BitVec 64}
    (ha : Lk x A s.locals) (hb : Lk y B s.locals) (hA : A.toNat < 2 ^ 63)
    (hB : B.toNat < 2 ^ 63) (h : ev s (.cmp .less (lv x) (lv y)) = some (.val (.word 0))) :
    B.toNat ≤ A.toNat := by
  obtain ⟨a, b, h1, h2, hab⟩ := cmp_false h
  rw [ev_lk ha] at h1; cases h1
  rw [ev_lk hb] at h2; cases h2
  rw [slt_small hA hB] at hab
  simpa using hab

end InitECandidate.Solver.SortAddr
