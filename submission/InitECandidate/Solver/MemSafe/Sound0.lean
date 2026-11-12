import InitECandidate.Solver.MemSafe.Checker

/-!
# Soundness infrastructure for the checker (M1)

* `IG a A Γ Θ s`: the activation invariant with explicit ghost typing `Γ` and temporaries `Θ`.
* `Later Γ Θ Γ' Θ'`: what a statement may do to the ghosts (`Ext`, `Θ` a prefix of `Θ'`).
* `SPost`: the post of a checked statement, per result.
* Environment lemmas: lookups through `setL` / `restL` / `joinL`; `LocalsOK` under updates,
  restores, joins and ghost growth; temporaries under joins.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

def IG (a : Act σ) (A : AEnv) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) (s : State σ) : Prop :=
  ∃ p, Heap a Γ p s ∧ TempsOK a A Γ p Θ ∧ LocalsOK A Γ Θ s

def Later (Γ : Gam) (Θ : List (BitVec 64 × Nat)) (Γ' : Gam) (Θ' : List (BitVec 64 × Nat)) :
    Prop :=
  Ext Γ Γ' ∧ Θ <+: Θ'

theorem later_refl (Γ : Gam) (Θ : List (BitVec 64 × Nat)) : Later Γ Θ Γ Θ :=
  ⟨ext_refl Γ, List.prefix_refl Θ⟩

theorem later_trans {Γ Γ' Γ'' : Gam} {Θ Θ' Θ'' : List (BitVec 64 × Nat)}
    (h : Later Γ Θ Γ' Θ') (h' : Later Γ' Θ' Γ'' Θ'') : Later Γ Θ Γ'' Θ'' :=
  ⟨ext_trans h.1 h'.1, h.2.trans h'.2⟩

/-- The post of a checked statement from ghosts `Γ`, `Θ`. -/
def SPost (a : Act σ) (rt : List RT) (o : AOut) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    Option (PanSemResultExact 64) → State σ → Prop
  | none, t => ∃ B Γ' Θ', o.nrm = some B ∧ Later Γ Θ Γ' Θ' ∧ IG a B Γ' Θ' t
  | some .break, t => ∃ B Γ' Θ', o.brk = some B ∧ Later Γ Θ Γ' Θ' ∧ IG a B Γ' Θ' t
  | some .continue, t => ∃ B Γ' Θ', o.cnt = some B ∧ Later Γ Θ Γ' Θ' ∧ IG a B Γ' Θ' t
  | some (.returned v), t => ∃ Γ' p, Ext Γ Γ' ∧ Heap a Γ' p t ∧ RetOK Γ' a.p0 p a.vs rt v
  | some r, t => Abortive r ∨ ∃ Γ' p, Ext Γ Γ' ∧ Heap a Γ' p t

/-- The post of an abnormal result from a heap state. -/
theorem abn_of_heap {a : Act σ} {Γ Γ' : Gam} {p : Ptrs} {t : State σ} {r : PanSemResultExact 64}
    (he : Ext Γ Γ') (hh : Heap a Γ' p t) : Abortive r ∨ ∃ Γ'' p', Ext Γ Γ'' ∧ Heap a Γ'' p' t :=
  Or.inr ⟨Γ', p, he, hh⟩

/-- The post of an abnormal result carries over to earlier ghosts. -/
theorem abn_ext {a : Act σ} {Γ Γ' : Gam} {t : State σ} {r : PanSemResultExact 64}
    (hx : ∀ {Γ''}, Ext Γ' Γ'' → Ext Γ Γ'')
    (h : Abortive r ∨ ∃ Γ'' p, Ext Γ' Γ'' ∧ Heap a Γ'' p t) :
    Abortive r ∨ ∃ Γ'' p, Ext Γ Γ'' ∧ Heap a Γ'' p t := by
  rcases h with h | ⟨Γ'', p, he, hh⟩
  · exact Or.inl h
  · exact Or.inr ⟨Γ'', p, hx he, hh⟩

/-! ## Lookups -/

theorem lookup_filter_ne {L : List (MlS × AV)} {x y : MlS} (h : y ≠ x) :
    (L.filter (fun q => q.1 != x)).lookup y = L.lookup y := by
  induction L with
  | nil => rfl
  | cons q L ih =>
      obtain ⟨z, v⟩ := q
      by_cases hz : z = x
      · subst hz
        have hyz : (y == z) = false := by simp [h]
        simp [List.lookup_cons, hyz, ih]
      · have : (z != x) = true := by simp [hz]
        simp only [List.filter_cons, this, if_true, List.lookup_cons]
        split <;> simp_all

theorem lookup_filter_eq {L : List (MlS × AV)} {x : MlS} :
    (L.filter (fun q => q.1 != x)).lookup x = none := by
  induction L with
  | nil => rfl
  | cons q L ih =>
      obtain ⟨z, v⟩ := q
      by_cases hz : z = x
      · subst hz; simp [ih]
      · have : (z != x) = true := by simp [hz]
        have hxz : (x == z) = false := by simp [Ne.symm hz]
        simp only [List.filter_cons, this, if_true, List.lookup_cons, hxz]
        exact ih

theorem lookup_setL_ne {L : List (MlS × AV)} {x y : MlS} {av : AV} (h : y ≠ x) :
    (setL x av L).lookup y = L.lookup y := by
  unfold setL
  split
  · exact lookup_filter_ne h
  · have hyx : (y == x) = false := by simp [h]
    simp only [List.lookup_cons, hyx]
    exact lookup_filter_ne h

theorem lookup_setL_eq {L : List (MlS × AV)} {x : MlS} {av : AV} :
    (setL x av L).lookup x = (match av with | .unk => none | av => some av) := by
  unfold setL
  split
  · exact lookup_filter_eq
  · simp

/-! ## `LocalsOK` under updates -/

theorem prefix_getElem? {α : Type} {l l' : List α} (h : l <+: l') {k : Nat} {x : α}
    (hx : l[k]? = some x) : l'[k]? = some x := by
  obtain ⟨t, rfl⟩ := h
  have hk : k < l.length := (List.getElem?_eq_some_iff.mp hx).1
  rw [List.getElem?_append_left hk]
  exact hx

theorem avok_prefix {Γ : Gam} {Θ Θ' : List (BitVec 64 × Nat)} (hp : Θ <+: Θ') {av : AV}
    {w : BitVec 64} (h : AVok Γ Θ av w) : AVok Γ Θ' av w := by
  cases av with
  | tmp k o =>
      obtain ⟨q, n, hq, rfl⟩ := h
      exact ⟨q, n, prefix_getElem? hp hq, rfl⟩
  | _ => exact h

theorem vok_later {Γ Γ' : Gam} {Θ Θ' : List (BitVec 64 × Nat)} (hl : Later Γ Θ Γ' Θ')
    {av : AV} {v : ValueHOL 64} (h : VOk Γ Θ av v) : VOk Γ' Θ' av v := by
  have h' := vok_ext hl.1 h
  cases av with
  | unk => trivial
  | wide n => exact h'
  | _ => obtain ⟨w, hv, hw⟩ := h'; exact ⟨w, hv, avok_prefix hl.2 hw⟩

theorem locals_set {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {s : State σ}
    (h : LocalsOK A Γ Θ s) {x : MlS} {av : AV} {v : ValueHOL 64} (hv : VOk Γ Θ av v) :
    LocalsOK ⟨setL x av A.L, A.T⟩ Γ Θ (setVarHOLFinite x v s) := by
  intro y bv hy
  by_cases hyx : y = x
  · subst hyx
    rw [lookup_setL_eq] at hy
    refine ⟨v, lk_set_self s y v, ?_⟩
    cases av <;> simp at hy <;> (try subst hy) <;> exact hv
  · rw [lookup_setL_ne hyx] at hy
    obtain ⟨u, hu, hok⟩ := h y bv hy
    exact ⟨u, by rw [lk_set_ne s v (Ne.symm hyx)]; exact hu, hok⟩

end InitECandidate.Solver.MemSafe
