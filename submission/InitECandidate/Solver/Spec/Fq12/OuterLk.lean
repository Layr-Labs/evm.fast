import InitECandidate.Solver.Spec.Fq12.Outer

/-!
# Frame facts for the outer body of `fq12_inv`

* `innerLoop_lk`: the division loop changes no local except `d0` (and its scratch `cf`, `top`);
* `QO k`: the outer-body postcondition, stable under restoring a non-buffer local;
* `swap_hoare`, `swap_cost`: the pointer rotation at the end of the body.
-/

set_option linter.unusedSimpArgs false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem hoare_and {P : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64}
    {Q Q' : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (h : Hoare σ X P p Q) (h' : Hoare σ X P p Q') : Hoare σ X P p (fun r t => Q r t ∧ Q' r t) :=
  fun s hs hp ht => ⟨h s hs hp ht, h' s hs hp ht⟩

/-- `t` has the locals of `t0`, except possibly `d0`, `cf` and `top`. -/
def LkF (t0 t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∀ x, x ≠ nm "d0" → x ≠ nm "cf" → x ≠ nm "top" → t.locals.lookup x = t0.locals.lookup x

theorem innerBody_lk (t0 : PanSemStateFiniteExact 64 σ) :
    Hoare σ X (fun t => t = t0) innerBody (fun r t => r = none ∧ LkF t0 t) := by
  unfold innerBody
  refine hoare_dec fun t1 _ ht1 v _ _ => ?_
  subst t1
  refine hoare_decCallS (funSpec_true _) ?_
  intro t2 _ ht2 vs _ callee cfv st1 _ _ _
  subst ht2
  generalize hT3 : setVarHOLFinite (nm "cf") cfv { st1 with locals :=
    (setVarHOLFinite (nm "top") v t0).locals } = t3
  have hl3 : ∀ x, x ≠ nm "cf" → x ≠ nm "top" → t3.locals.lookup x = t0.locals.lookup x := by
    intro x h1 h2
    rw [← hT3, lk_ne (Ne.symm h1)]
    exact lk_ne (Ne.symm h2)
  refine hoare_seq (R := fun r u => r = none ∧ u.locals = t3.locals) ?_
    (fun r u _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_store fun u _ hu _ _ _ _ _ _ => by subst hu; exact ⟨rfl, rfl⟩
  refine hoare_seq (R := fun r u => r = none ∧ u.locals = t3.locals) ?_
    (fun r u _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_callD (funSpec_true _) fun u _ ⟨_, hul⟩ _ _ _ _ _ _ _ => ⟨rfl, hul⟩
  refine hoare_callA (funSpec_true _) ?_
  intro u _ ⟨_, hul⟩ _ _ _ dv st _ _ _
  refine ⟨rfl, fun x hx h1 h2 => ?_⟩
  rw [lk_restore_ne (Ne.symm h2), lk_restore_ne (Ne.symm h1)]
  show (setVarHOLFinite (nm "d0") dv { st with locals := u.locals }).locals.lookup x = _
  rw [lk_ne (Ne.symm hx)]
  show u.locals.lookup x = _
  rw [hul]
  exact hl3 x h1 h2

theorem innerLoop_lk (t0 : PanSemStateFiniteExact 64 σ) :
    Hoare σ X (fun t => LkF t0 t) innerLoop (fun r t => r = none ∧ LkF t0 t) := by
  refine hoare_while (fun s h => h) ?_ (fun t _ h _ => ⟨rfl, h⟩)
  intro s hs ⟨hI, _⟩ ht
  obtain ⟨hr, hL⟩ := innerBody_lk (X := X) s s hs rfl ht
  rw [hr]
  exact ⟨fun _ x h1 h2 h3 => (hL x h1 h2 h3).trans (hI x h1 h2 h3), nofun, nofun, fun _ => nofun⟩

/-! ## The outer-body postcondition -/

/-- After a normal or `continue` exit of the outer body: the invariant holds and the measure
dropped below `k`. -/
def QO (k : Nat) (r : Option (PanSemResultExact 64)) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∨ r = some .continue → Iout t ∧ muOut t < k

theorem muOut_locals {t : PanSemStateFiniteExact 64 σ} {L : HolFiniteMapExact MlS (ValueHOL 64)}
    (h : L.lookup (nm "r1") = t.locals.lookup (nm "r1")) :
    muOut ({ t with locals := L } : PanSemStateFiniteExact 64 σ) = muOut t := by
  unfold muOut
  dsimp only
  rw [h]
  rfl

theorem bufLk_locals {b : Bufs} {t : PanSemStateFiniteExact 64 σ}
    {L : HolFiniteMapExact MlS (ValueHOL 64)} (h : ∀ x ∈ bufNames, L.lookup x = t.locals.lookup x)
    (hb : BufLk b t) : BufLk b ({ t with locals := L } : PanSemStateFiniteExact 64 σ) :=
  bufLk_of h hb

theorem bufLk_setVar {b : Bufs} {t : PanSemStateFiniteExact 64 σ} {n : MlS} (hn : n ∉ bufNames)
    (v : ValueHOL 64) (h : BufLk b t) : BufLk b (setVarHOLFinite n v t) :=
  bufLk_of (fun x hx => lk_set_ne _ _ (fun he => hn (he ▸ hx))) h

theorem qo_restore {k : Nat} {r : Option (PanSemResultExact 64)} {t : PanSemStateFiniteExact 64 σ}
    {n : MlS} (hn : n ∉ bufNames) (old : Option (ValueHOL 64)) (h : QO k r t) :
    QO k r ({ t with locals := t.locals.resVarEq (n, old) } : PanSemStateFiniteExact 64 σ) := by
  have hl : ∀ x ∈ bufNames, (t.locals.resVarEq (n, old)).lookup x = t.locals.lookup x :=
    fun x hx => lookup_resVarEq_ne _ _ (fun he => hn (he ▸ hx))
  intro hr
  obtain ⟨⟨b, hb, hp⟩, h2⟩ := h hr
  refine ⟨⟨b, bufLk_locals hl hb, hp⟩, ?_⟩
  rw [muOut_locals (hl _ (by decide))]
  exact h2

theorem degOf_le (s : PanSemStateFiniteExact 64 σ) (x : BitVec 64) : degOf s x ≤ 13 := by
  unfold degOf
  split
  · rename_i h; exact degM_le (Classical.choose_spec h)
  · omega

theorem muOut_le (s : PanSemStateFiniteExact 64 σ) : muOut s ≤ 13 := by
  unfold muOut
  split
  · exact degOf_le _ _
  · omega

theorem degM_lt {D D1 : BitVec 64} (h1 : 1 ≤ D1.toNat) (h2 : D1.toNat ≤ 12)
    (h : D = 0 - 1 ∨ D.toNat < D1.toNat) : degM D < degM D1 := by
  have hD1 : D1 ≠ 0 - 1 := by intro he; rw [he, m1_toNat] at h2; omega
  rw [degM_of_ne hD1]
  rcases h with rfl | hlt
  · simp [degM]
  · have hne : D ≠ 0 - 1 := by intro he; rw [he, m1_toNat] at hlt; omega
    rw [degM_of_ne hne]; omega

theorem d1_range {D1 : BitVec 64} (hdeg : D1 = 0 - 1 ∨ D1.toNat < 13)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notLess (BitVec.ofNat 64 0) D1 = false) :
    1 ≤ D1.toNat ∧ D1.toNat ≤ 12 := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_false'] at h
  rcases hdeg with rfl | hlt
  · exact absurd h (by decide)
  · rw [signed_lt_iff (by simp) (by omega)] at h
    simp at h
    omega

theorem pw_facts {b : Bufs} (h : Pw b) :
    Disj b.R0 b.R1 ∧ Disj b.R0 b.Qb ∧ Disj b.R1 b.Qb ∧ Disj b.R0 b.TM := by
  unfold Pw at h
  simp only [List.pairwise_cons, List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp,
    forall_eq, List.Pairwise.nil, and_true] at h
  exact ⟨h.1.1, h.1.2.2.2.1, h.2.1.2.2.1, h.1.2.2.2.2⟩

/-! ## The pointer rotation -/

theorem swap_cost : Cost σ X swapP 0 := by
  unfold swapP
  exact (cost_dec (cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _)
    (cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _)
      (cost_assign _ _ _))))))).mono (by omega)

theorem swap_hoare {b : Bufs} (t0 : PanSemStateFiniteExact 64 σ) (hb : BufLk b t0) :
    Hoare σ X (fun t => t = t0) swapP (fun r t => r = none ∧
      BufLk ⟨b.R1, b.R0, b.S1, b.TM, b.Qb, b.S0⟩ t ∧ t.memory = t0.memory ∧ t.be = t0.be ∧
      t.memaddrs = t0.memaddrs) := by
  obtain ⟨h0, h1, h2, h3, h4, h5⟩ := hb
  unfold swapP
  refine hoare_dec fun t1 _ ht1 v hv _ => ?_
  subst t1
  rw [ev_lw h0] at hv
  cases hv
  generalize hU1 : setVarHOLFinite (nm "t") (.val (.word b.R0)) t0 = u1
  have hu1 : ∀ x, x ≠ nm "t" → u1.locals.lookup x = t0.locals.lookup x := fun x hx => by
    rw [← hU1]; exact lk_set_ne _ _ (Ne.symm hx)
  have hu1t : u1.locals.lookup (nm "t") = some (.val (.word b.R0)) := by
    rw [← hU1]; exact lk_set_self _ _ _
  -- the five assignments, each as a `setVar` on the previous state
  refine hoare_seq (R := fun r u => r = none ∧
      u = setVarHOLFinite (nm "r0") (.val (.word b.R1)) u1) ?_
    (fun r u _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun u _ hu w hw _ => ?_
    subst u
    rw [ev_lw (by rw [hu1 _ (by decide)]; exact h1)] at hw
    cases hw
    exact ⟨rfl, rfl⟩
  generalize hU2 : setVarHOLFinite (nm "r0") (.val (.word b.R1)) u1 = u2
  refine hoare_seq (R := fun r u => r = none ∧
      u = setVarHOLFinite (nm "r1") (.val (.word b.R0)) u2) ?_
    (fun r u _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun u _ ⟨_, hu⟩ w hw _ => ?_
    subst u
    rw [ev_lw (by rw [← hU2, lk_set_ne _ _ (by decide)]; exact hu1t)] at hw
    cases hw
    exact ⟨rfl, rfl⟩
  generalize hU3 : setVarHOLFinite (nm "r1") (.val (.word b.R0)) u2 = u3
  refine hoare_seq (R := fun r u => r = none ∧
      u = setVarHOLFinite (nm "t") (.val (.word b.S0)) u3) ?_
    (fun r u _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun u _ ⟨_, hu⟩ w hw _ => ?_
    subst u
    rw [ev_lw (by rw [← hU3, lk_set_ne _ _ (by decide), ← hU2, lk_set_ne _ _ (by decide),
      hu1 _ (by decide)]; exact h2)] at hw
    cases hw
    exact ⟨rfl, rfl⟩
  generalize hU4 : setVarHOLFinite (nm "t") (.val (.word b.S0)) u3 = u4
  refine hoare_seq (R := fun r u => r = none ∧
      u = setVarHOLFinite (nm "s0") (.val (.word b.S1)) u4) ?_
    (fun r u _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun u _ ⟨_, hu⟩ w hw _ => ?_
    subst u
    rw [ev_lw (by rw [← hU4, lk_set_ne _ _ (by decide), ← hU3, lk_set_ne _ _ (by decide),
      ← hU2, lk_set_ne _ _ (by decide), hu1 _ (by decide)]; exact h3)] at hw
    cases hw
    exact ⟨rfl, rfl⟩
  generalize hU5 : setVarHOLFinite (nm "s0") (.val (.word b.S1)) u4 = u5
  refine hoare_seq (R := fun r u => r = none ∧
      u = setVarHOLFinite (nm "s1") (.val (.word b.TM)) u5) ?_
    (fun r u _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun u _ ⟨_, hu⟩ w hw _ => ?_
    subst u
    rw [ev_lw (by rw [← hU5, lk_set_ne _ _ (by decide), ← hU4, lk_set_ne _ _ (by decide),
      ← hU3, lk_set_ne _ _ (by decide), ← hU2, lk_set_ne _ _ (by decide),
      hu1 _ (by decide)]; exact h5)] at hw
    cases hw
    exact ⟨rfl, rfl⟩
  generalize hU6 : setVarHOLFinite (nm "s1") (.val (.word b.TM)) u5 = u6
  refine hoare_assign fun u _ ⟨_, hu⟩ w hw _ => ?_
  subst u
  have ht6 : u6.locals.lookup (nm "t") = some (.val (.word b.S0)) := by
    rw [← hU6, lk_set_ne _ _ (by decide), ← hU5, lk_set_ne _ _ (by decide), ← hU4]
    exact lk_set_self _ _ _
  rw [ev_lw ht6] at hw
  cases hw
  -- the final state
  have hm : ∀ x, x ≠ nm "t" →
      (setVarHOLFinite (nm "tmp") (.val (.word b.S0)) u6).locals.lookup x =
      if x = nm "tmp" then some (.val (.word b.S0)) else
      if x = nm "s1" then some (.val (.word b.TM)) else
      if x = nm "s0" then some (.val (.word b.S1)) else
      if x = nm "r1" then some (.val (.word b.R0)) else
      if x = nm "r0" then some (.val (.word b.R1)) else t0.locals.lookup x := by
    intro x hx
    by_cases e1 : x = nm "tmp"
    · subst e1; rw [if_pos rfl]; exact lk_set_self _ _ _
    rw [if_neg e1, lk_set_ne _ _ (Ne.symm e1), ← hU6]
    by_cases e2 : x = nm "s1"
    · subst e2; rw [if_pos rfl]; exact lk_set_self _ _ _
    rw [if_neg e2, lk_set_ne _ _ (Ne.symm e2), ← hU5]
    by_cases e3 : x = nm "s0"
    · subst e3; rw [if_pos rfl]; exact lk_set_self _ _ _
    rw [if_neg e3, lk_set_ne _ _ (Ne.symm e3), ← hU4, lk_set_ne _ _ (Ne.symm hx), ← hU3]
    by_cases e4 : x = nm "r1"
    · subst e4; rw [if_pos rfl]; exact lk_set_self _ _ _
    rw [if_neg e4, lk_set_ne _ _ (Ne.symm e4), ← hU2]
    by_cases e5 : x = nm "r0"
    · subst e5; rw [if_pos rfl]; exact lk_set_self _ _ _
    rw [if_neg e5, lk_set_ne _ _ (Ne.symm e5)]
    exact hu1 x hx
  have hmem : (setVarHOLFinite (nm "tmp") (.val (.word b.S0)) u6).memory = t0.memory := by
    rw [← hU6, ← hU5, ← hU4, ← hU3, ← hU2, ← hU1]; rfl
  have hbe : (setVarHOLFinite (nm "tmp") (.val (.word b.S0)) u6).be = t0.be := by
    rw [← hU6, ← hU5, ← hU4, ← hU3, ← hU2, ← hU1]; rfl
  have hmd : (setVarHOLFinite (nm "tmp") (.val (.word b.S0)) u6).memaddrs = t0.memaddrs := by
    rw [← hU6, ← hU5, ← hU4, ← hU3, ← hU2, ← hU1]; rfl
  have nn : ∀ x y : MlS, x ≠ y → ∀ (a b : Option (ValueHOL 64)), (if x = y then a else b) = b :=
    fun x y h a b => if_neg h
  refine ⟨rfl, ⟨?_, ?_, ?_, ?_, ?_, ?_⟩, hmem, hbe, hmd⟩
  · rw [lk_restore_ne (by decide), hm _ (by decide), nn _ _ (by decide), nn _ _ (by decide),
      nn _ _ (by decide), nn _ _ (by decide), if_pos rfl]
  · rw [lk_restore_ne (by decide), hm _ (by decide), nn _ _ (by decide), nn _ _ (by decide),
      nn _ _ (by decide), if_pos rfl]
  · rw [lk_restore_ne (by decide), hm _ (by decide), nn _ _ (by decide), nn _ _ (by decide),
      if_pos rfl]
  · rw [lk_restore_ne (by decide), hm _ (by decide), nn _ _ (by decide), if_pos rfl]
  · rw [lk_restore_ne (by decide), hm _ (by decide), nn _ _ (by decide), nn _ _ (by decide),
      nn _ _ (by decide), nn _ _ (by decide), nn _ _ (by decide)]
    exact h4
  · rw [lk_restore_ne (by decide), hm _ (by decide), if_pos rfl]

end InitECandidate.Solver.Spec.Fq12
