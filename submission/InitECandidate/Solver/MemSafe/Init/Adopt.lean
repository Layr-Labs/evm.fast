import InitECandidate.Solver.MemSafe.Init.Defs

/-!
# Init: adopting a fresh allocation as a typed object
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem GT_not_alloc : ∀ e ∈ guestC.GT, e.1 ≠ gHeap ∧ e.1 ≠ gFrame ∧ e.1 ≠ gScratch := by decide

theorem mem_of_lookup {β : Type} : ∀ (l : List (MlS × β)) (a : MlS) (b : β), l.lookup a = some b → (a, b) ∈ l
  | [], a, b, h => by simp [List.lookup] at h
  | (x, y) :: l, a, b, h => by
      simp only [List.lookup] at h
      split at h
      · rename_i hx
        have : x = a := (by simpa using hx : a = x).symm
        subst this
        cases h
        exact List.mem_cons_self
      · exact List.mem_cons_of_mem _ (mem_of_lookup l a b h)

theorem GT_key_not_alloc {g : MlS} {k : FK} (h : guestC.GT.lookup g = some k) :
    g ≠ gHeap ∧ g ≠ gFrame ∧ g ≠ gScratch := by
  have := mem_of_lookup _ _ _ h
  have := GT_not_alloc _ this
  exact this

theorem fits_cons {Γ : Gam} {o : Obj} {k : FK} {v : BitVec 64} (h : Fits Γ k v) : Fits (o :: Γ) k v := by
  cases k <;> simp only [Fits] at h ⊢
  · exact ⟨h.choose, List.mem_cons_of_mem _ h.choose_spec.1, h.choose_spec.2⟩
  · rcases h with h | ⟨x, hx, h2⟩
    · exact Or.inl h
    · exact Or.inr ⟨x, List.mem_cons_of_mem _ hx, h2⟩
  · rcases h with h | ⟨x, hx, h2⟩
    · exact Or.inl h
    · exact Or.inr ⟨x, List.mem_cons_of_mem _ hx, h2⟩
  all_goals exact h

theorem wi_adopt {Γ : Gam} {pn : List MlS} {s st u : State σ} {g : MlS} {t : Nat} {n q : BitVec 64}
    {p p' : Ptrs} (hW : WI Γ pn s) (hp : ptrsOf s = some p)
    (hk : guestC.GT.lookup g = some (.ptr t)) (ht : t ∈ BTys) (hsz : (guestC.ty t).minSz = n.toNat)
    (hn8 : n.toNat % 8 = 0) (hn0 : 0 < n.toNat)
    (ho : ∀ g', g' ≠ gHeap → st.globals.lookup g' = s.globals.lookup g')
    (hp' : ptrsOf st = some p') (hord' : p'.Ordered) (hmono : p.Mono p')
    (hq8 : q.toNat % 8 = 0) (hlive : Region.Live p' .heap q.toNat n.toNat)
    (hfresh : ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat → ¬ p.Allocated a)
    (hu : u.globals = st.globals.update (g, .val (.word q))) :
    WI (⟨q, t, n.toNat⟩ :: Γ) (pnDel pn g) u := by
  obtain ⟨p0, hp0, ord0, hlay, hb, hg⟩ := hW
  obtain rfl : p0 = p := Option.some.inj (hp0.symm.trans hp)
  obtain ⟨hga, hgb, hgc⟩ := GT_key_not_alloc hk
  have hgw : ∀ h, h ≠ g → gword u h = gword st h := fun h hh => by
    unfold gword; rw [hu, lookup_update_ne _ _ (Ne.symm hh)]
  have hdisj : ∀ x ∈ Γ, x.hi ≤ q.toNat ∨ q.toNat + n.toNat ≤ x.lo := by
    intro x hx
    by_contra hc
    simp only [not_or, not_le] at hc
    obtain ⟨-, -, hl3, -, hl5⟩ := hlay.1 x hx
    rw [(BTys_facts _ (hb x hx)).2.2.2.2.2.1] at hl5
    simp only [Region.Live, Obj.lo, Obj.hi, heapBase] at hl5 hc ⊢
    have := hfresh (max q.toNat x.base.toNat) (Nat.le_max_left _ _) (max_lt (by omega) (by omega))
    exact this (Or.inl ⟨le_trans (by simp only [heapBase]; omega) (Nat.le_max_right _ _), max_lt (by omega) (by omega)⟩)
  refine ⟨p', ?_, hord', ⟨?_, ?_⟩, ?_, ?_⟩
  · unfold ptrsOf
    rw [hgw gHeap (Ne.symm hga), hgw gFrame (Ne.symm hgb), hgw gScratch (Ne.symm hgc)]
    unfold ptrsOf at hp'; exact hp'
  · intro x hx
    rcases List.mem_cons.mp hx with rfl | hx
    · refine ⟨hq8, hn8, hn0, hsz.le, ?_⟩
      show (guestC.ty t).region.Live p' q.toNat n.toNat
      rw [(BTys_facts _ ht).2.2.2.2.2.1]; exact hlive
    · obtain ⟨h1, h2, h3, h4, h5⟩ := hlay.1 x hx
      refine ⟨h1, h2, h3, h4, ?_⟩
      have hr := (BTys_facts _ (hb x hx)).2.2.2.2.2.1
      rw [hr] at h5 ⊢
      simp only [Region.Live] at h5 ⊢
      have := hmono.1
      omega
  · intro i j hi hj hij
    cases i with
    | zero =>
        cases j with
        | zero => exact absurd rfl hij
        | succ j' =>
            have hj' : j' < Γ.length := by simpa using hj
            have hx : Γ[j'] ∈ Γ := List.getElem_mem hj'
            simp only [List.getElem_cons_zero, List.getElem_cons_succ, Obj.lo, Obj.hi] at *
            rcases hdisj _ hx with h | h <;> omega
    | succ i' =>
        cases j with
        | zero =>
            have hi' : i' < Γ.length := by simpa using hi
            have hx : Γ[i'] ∈ Γ := List.getElem_mem hi'
            simp only [List.getElem_cons_zero, List.getElem_cons_succ, Obj.lo, Obj.hi] at *
            rcases hdisj _ hx with h | h <;> omega
        | succ j' =>
            have := hlay.2 i' j' (by simpa using hi) (by simpa using hj) (by omega)
            simpa using this
  · intro x hx
    rcases List.mem_cons.mp hx with rfl | hx
    · exact ht
    · exact hb x hx
  · intro g' k' hk'
    by_cases hgg : g' = g
    · subst hgg
      obtain rfl : k' = .ptr t := by rw [hk] at hk'; exact (Option.some.inj hk').symm
      refine ⟨q, ?_, fun hm => absurd (mem_pnDel.mp hm).2 (by simp), fun _ => ⟨⟨q, t, n.toNat⟩, List.mem_cons_self, rfl, rfl⟩⟩
      unfold gword; rw [hu, lookup_update_self]
    · have hne : g' ≠ gHeap := (GT_key_not_alloc hk').1
      obtain ⟨v, hv, hz, hf⟩ := hg g' k' hk'
      refine ⟨v, ?_, fun hm => hz (mem_pnDel.mp hm).1, fun hm => fits_cons (hf ?_)⟩
      · rw [hgw g' hgg]
        unfold gword at hv ⊢
        rw [ho g' hne]; exact hv
      · exact fun h => hm (mem_pnDel.mpr ⟨h, hgg⟩)

end InitECandidate.Solver.MemSafe.Init
