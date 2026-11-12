import InitECandidate.Solver.MemSafe.Ini.Frz

/-!
# `G` after a net-effect run, with frozen blocks added

`g_run`: from `G Γ0 s0` and `Eff s0 t Γ0 p0 H`, `G Γ0 t` at the allocator that only moved the heap pointer.
`g_add_frz`: one frozen object over unallocated bytes (all slots `prot`, no record entry) keeps `G`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- A scalar cell of a laid-out object is below the heap pointer or above `HEAP_END`. -/
theorem scell_out {Γ0 : Gam} {p0 : Ptrs} {x : BitVec 64} (hord : p0.Ordered)
    (hL : Layout Types.guestC p0 Γ0) (h : SCell Types.guestC Γ0 x) :
    x.toNat < p0.hp ∨ heapEnd ≤ x.toNat := by
  have hal := alloc_of_in hord hL (scell_in hord hL h)
  unfold Ptrs.Allocated at hal
  obtain ⟨-, -, d3, d4, -⟩ := hord
  omega

theorem inobj_out {Γ0 : Gam} {p0 : Ptrs} {x : BitVec 64} (hord : p0.Ordered)
    (hL : Layout Types.guestC p0 Γ0) (h : InObj Γ0 x.toNat) :
    x.toNat < p0.hp ∨ heapEnd ≤ x.toNat := by
  have hal := alloc_of_in hord hL h
  unfold Ptrs.Allocated at hal
  obtain ⟨-, -, d3, d4, -⟩ := hord
  omega

/-- The allocator after a net-effect run. -/
def ptrsE (p0 : Ptrs) (H : BitVec 64) : Ptrs := ⟨H.toNat, p0.fp, p0.sp⟩

theorem g_run {H : Hooks σ} (hH : HooksLawful Types.guestC H) (hT : Helpers.TagSlots Types.guestC)
    (hAG : Helpers.AllocGlobs Types.guestC) {Γ0 : Gam} {s0 t : State σ} {p0 : Ptrs} {Hp : BitVec 64}
    (hG : G Types.guestC H Γ0 s0) (hp : ptrsOf s0 = some p0) (he : Eff s0 t Γ0 p0 Hp) :
    ptrsOf t = some (ptrsE p0 Hp) ∧ (ptrsE p0 Hp).Ordered ∧ G Types.guestC H Γ0 t := by
  obtain ⟨p, hp', hord, hL, -⟩ := id hG
  have hpp : p = p0 := Option.some.inj (hp'.symm.trans hp)
  subst hpp
  obtain ⟨H0, F0, S0, hH0, hF0, hS0, hpe⟩ := AllocImpl.ptrsOf_some hp
  have hph : p.hp = H0.toNat := by rw [hpe]
  have hpf : p.fp = F0.toNat := by rw [hpe]
  have hps : p.sp = S0.toNat := by rw [hpe]
  have hpt : ptrsOf t = some (ptrsE p Hp) := by
    unfold ptrsOf
    rw [AllocImpl.gword_of_lookup he.hp, gw_eq (he.glob gFrame (by decide)),
      gw_eq (he.glob gScratch (by decide)), hF0, hS0]
    simp [ptrsE, hpf, hps]
  have hord' : (ptrsE p Hp).Ordered := by
    obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hord
    exact ⟨by have := he.lo; show heapBase ≤ Hp.toNat; omega, he.hi, o3, o4, o5, he.al, o7, o8⟩
  have hL' : Layout Types.guestC (ptrsE p Hp) Γ0 :=
    layout_heap hL (by have := he.lo; show p.hp ≤ Hp.toNat; omega) rfl rfl
  -- first keep the globals of the entry state
  have hGu : G Types.guestC H Γ0 ({ t with globals := s0.globals } : State σ) := by
    refine Helpers.G_buf hH hT hG (hgl := rfl) he.dom he.be (R := fun a => SCell Types.guestC Γ0 a ∨
      (p.hp ≤ a.toNat ∧ a.toNat < Hp.toNat)) (fun a ha => he.mem a ha) ?_
    intro a ha
    rcases ha with ha | ⟨h1, h2⟩
    · exact Or.inl ha
    · right
      intro hin
      have := inobj_out hord hL hin
      have := he.hi
      omega
  exact ⟨hpt, hord', G_reptr hH hAG hGu hpt hord' (fun o ho => (hL'.1 o ho).2.2.2.2) rfl rfl rfl
    (fun g hg _ _ => he.glob g hg)⟩

theorem wf_frz {tF : Nat} (hF : FrzTy tF) {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tF) :
    (guestHooksR (σ := σ)).wf Γ s o :=
  recHooks_guestR.make Γ s o (ht ▸ hF.recOK) fun e he het => by
    have hm := recTab_ty he
    rw [het, ht] at hm
    exact absurd hm hF.nrec

/-- A frozen object over unallocated bytes. -/
theorem g_add_frz {tF : Nat} (hF : FrzTy tF) {Γ : Gam} {t : State σ} {p' : Ptrs}
    (hG : G Types.guestC (guestHooksR (σ := σ)) Γ t) (hp' : ptrsOf t = some p') {b : BitVec 64} {n : Nat}
    (hb8 : b.toNat % 8 = 0) (hn8 : n % 8 = 0) (hpos : 0 < n)
    (hlive : heapBase ≤ b.toNat ∧ b.toNat + n ≤ p'.hp)
    (hdisj : ∀ a : BitVec 64, InO (⟨b, tF, n⟩ : Obj) a → ¬ InObj Γ a.toNat) :
    G Types.guestC (guestHooksR (σ := σ)) (Γ ++ [(⟨b, tF, n⟩ : Obj)]) t := by
  refine G_addObj Hooks.guestHooksR_lawful Hooks.guestHooksR_mono hG (x := ⟨b, tF, n⟩) hb8 hn8 hpos
    (by show (Types.guestC.ty tF).minSz ≤ n; rw [hF.min]; omega) ?_ hdisj ?_ hF.tag
    (wf_frz hF rfl)
  · intro p hp
    rw [hp'] at hp
    cases hp
    show (Types.guestC.ty tF).region.Live p' b.toNat n
    rw [hF.reg]
    exact hlive
  · intro k _
    show Fits _ ((Types.guestC.ty tF).slot k) _
    rw [hF.prot k]
    trivial

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.g_run
#print axioms InitECandidate.Solver.MemSafe.Ini.g_add_frz
