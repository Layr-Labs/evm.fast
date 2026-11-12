import InitECandidate.Solver.MemSafe.Node.AddObj

set_option autoImplicit false

/-!
# Adopting an allocated, untagged, all-`prot` block as a record object (`heap_adopt`)

A copy of `Node.heap_addObj` for records: the block `[Ar, Ar + n)` is already allocated (`BlkF`:
outside `Γ`, allocated at `q`; not allocated at the entry `p0`), 8-aligned, inside the heap, and
the type is untagged with all slots `prot` (so `Fields`, `Tags` are trivial); the only per-type
obligation is the hook of the new object (`hwf`, at the current state). The state is unchanged.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

theorem heap_adopt {a : Act σ} (ha : ActOK a X) (hM : HooksMono a.C a.H) {Γ : Gam} {q : Ptrs}
    {u : State σ} (he : Ext a.Γ0 Γ) (hh : Heap a Γ q u) {Ar : BitVec 64} {n ty : Nat}
    (hreg : (a.C.ty ty).region = .heap) (hprot : ∀ k, (a.C.ty ty).slot k = .prot)
    (hnt : a.C.tags.lookup ty = none) (hn8 : n % 8 = 0) (hn0 : 0 < n)
    (hmin : (a.C.ty ty).minSz ≤ n) (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + n ≤ heapEnd)
    (hA8 : Ar.toNat % 8 = 0) (hF : BlkF Ar n Γ q)
    (hnA : ∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat)
    (hgrows : a.sg.grows = true)
    (hwf : Layout a.C q (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) →
      a.H.wf (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) u (⟨Ar, ty, n⟩ : Obj)) :
    Ext a.Γ0 (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) ∧ Heap a (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) q u := by
  have hordq := heap_ord hh
  have hh0 := hh
  obtain ⟨hG, hps, hm1, hext, hnf, hmod, hpg, hgr⟩ := hh0
  obtain ⟨p1, hp1, hord, hL, hFl, hT, hGl, hW⟩ := hG
  have hq : q = p1 := Option.some.inj (hps.symm.trans hp1)
  subst hq
  have hcell : ∀ c : Nat, c < 2 ^ 64 → (BitVec.ofNat 64 c).toNat = c := fun c hc => by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt hc
  have hse : heapEnd < 2 ^ 64 := by decide
  have hOvl : ∀ c : Nat, c % 8 = 0 → Ar.toNat ≤ c → c < Ar.toNat + n →
      Overlap Ar.toNat n (BitVec.ofNat 64 c) := by
    intro c hc8 h1 h2
    have hc := hcell c (by omega)
    exact ⟨by rw [hc]; exact hc8, by rw [hc]; omega, by rw [hc]; exact h2⟩
  have hOv : ∀ c : Nat, c % 8 = 0 → Ar.toNat ≤ c → c < Ar.toNat + n →
      ¬ InObj Γ c ∧ q.Allocated c := by
    intro c hc8 h1 h2
    have := hF _ (hOvl c hc8 h1 h2)
    rwa [hcell c (by omega)] at this
  have hnA' : ∀ c : Nat, c % 8 = 0 → Ar.toNat ≤ c → c < Ar.toNat + n → ¬ a.p0.Allocated c := by
    intro c hc8 h1 h2
    have := hnA _ (hOvl c hc8 h1 h2)
    rwa [hcell c (by omega)] at this
  have hlive : (a.C.ty ty).region.Live q Ar.toNat n := by
    rw [hreg]
    have h2 := (hOv (Ar.toNat + n - 8) (by omega) (by omega) (by omega)).2
    unfold Ptrs.Allocated at h2
    unfold Ptrs.Ordered at hordq
    simp only [Region.Live]
    unfold heapBase heapEnd scratchEnd at *
    omega
  have hok : Struct.ObjOK a.C q (⟨Ar, ty, n⟩ : Obj) := ⟨hA8, hn8, hn0, hmin, hlive⟩
  have hdisj : ∀ y ∈ Γ, Struct.Disj y (⟨Ar, ty, n⟩ : Obj) := by
    intro y hy
    simp only [Struct.Disj, Obj.hi, Obj.lo]
    by_contra hcon
    simp only [not_or, not_le] at hcon
    obtain ⟨h1, h2, h3, h4, h5⟩ := hL.1 y hy
    change y.base.toNat % 8 = 0 at h1
    obtain ⟨c, hc8, hc1, hc2, hc3, hc4⟩ : ∃ c, c % 8 = 0 ∧ y.base.toNat ≤ c ∧
        c < y.base.toNat + y.size ∧ Ar.toNat ≤ c ∧ c < Ar.toNat + n := by
      by_cases h : y.base.toNat ≤ Ar.toNat
      · exact ⟨Ar.toNat, hA8, h, by omega, le_rfl, by omega⟩
      · exact ⟨y.base.toNat, h1, le_rfl, by omega, by omega, by omega⟩
    exact (hOv c hc8 hc3 hc4).1 ⟨y, hy, hc1, hc2⟩
  have hLn : Layout a.C q (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) := Struct.layout_snoc hL hok hdisj
  have hextn : Ext a.Γ0 (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) := ext_trans hext (Struct.ext_snoc Γ _)
  have hGn : G a.C a.H (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) u := by
    refine Struct.G_of (D := fun _ => False) ha.hH hM ⟨q, hps, hord, hL, hFl, hT, hGl, hW⟩ hps
      hordq hLn (Struct.ext_snoc Γ _) rfl rfl (fun _ _ => rfl) (fun _ _ _ => rfl)
      (fun _ _ => rfl) ?_ ?_ ?_
    · intro o' ho' k hk
      rcases List.mem_append.mp ho' with ho' | ho'
      · exact Or.inl ⟨o', ho', rfl, rfl, hk, fun h => h⟩
      · simp only [List.mem_singleton] at ho'
        subst ho'
        right
        show Fits _ ((a.C.ty ty).slot k) _
        rw [hprot k]
        trivial
    · intro o' ho' tag ht
      rcases List.mem_append.mp ho' with ho' | ho'
      · exact Or.inl ⟨o', ho', rfl, rfl, fun h => h⟩
      · simp only [List.mem_singleton] at ho'
        subst ho'
        rw [hnt] at ht
        cases ht
    · intro o' ho'
      rcases List.mem_append.mp ho' with ho' | ho'
      · exact Or.inl ⟨o', ho', rfl, rfl, fun _ _ h => h⟩
      · simp only [List.mem_singleton] at ho'
        subst ho'
        exact Or.inr (hwf hLn)
  have hnfn : NewFresh a.Γ0 (Γ ++ [(⟨Ar, ty, n⟩ : Obj)]) a.p0 q := by
    intro o ho b h1 h2
    rcases List.mem_append.mp ho with ho | ho
    · exact hnf o ho b h1 h2
    · simp only [List.mem_singleton] at ho
      subst ho
      right
      have h1' : Ar.toNat ≤ b.toNat := h1
      have h2' : b.toNat < Ar.toNat + n := h2
      exact Node.fresh_of_cell (c := b.toNat / 8 * 8) ha.hord0 hordq (by omega)
        (hnA' _ (by omega) (by omega) (by omega)) (hOv _ (by omega) (by omega) (by omega)).2
        (by omega) (by omega) rfl
  exact ⟨hextn, ⟨hGn, hps, hm1, hextn, hnfn, hmod, hpg, fun h => by rw [hgrows] at h; cases h⟩⟩

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.heap_adopt
