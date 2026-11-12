import InitECandidate.Solver.MemSafe.AEnv

/-!
# `G` under checked writes (M1)

* `CfgOK C`: tags sit in `prot` slots (a checked write never changes a tag).
* `G_write`: a memory change confined to cells `R`, each outside every `Γ` object or a
  non-`prot` slot cell of a `Γ` object, where every changed slot cell afterwards fits its kind,
  keeps `G` (allocator state, typed/protected globals, `memaddrs`, `be` unchanged).
* `fresh_not_alloc`, `foot_of_wcell`: footprint bookkeeping for the activation invariant.
* `stores_cells`: the cells a multi-word store `panMemStoresHOL` changes.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- Tags sit in `prot` slots. -/
def CfgOK (C : Cfg) : Prop := ∀ t tag, C.tags.lookup t = some tag → (C.ty t).slot 0 = .prot

/-- **`G` under checked writes.** -/
theorem G_write {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C) {Γ : Gam}
    {s t : State σ} (hG : G C H Γ s) (hp : ptrsOf t = ptrsOf s)
    (hglob : ∀ g k, C.GT.lookup g = some k → gword t g = gword s g)
    (hpg : ∀ g ∈ C.PG, t.globals.lookup g = s.globals.lookup g)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R s.memory t.memory)
    (hR : ∀ x, R x → ¬ InObj Γ x.toNat ∨ WCell C Γ x)
    (hfit : ∀ o ∈ Γ, ∀ k, o.HasSlot k → R (o.cell k) →
      Fits Γ ((C.ty o.ty).slot k) (rd t.memory (o.cell k))) : G C H Γ t := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  -- a `prot` cell of `Γ` is never written
  have hprot : ∀ x, ProtCell C Γ x → t.memory x = s.memory x := by
    intro x ⟨o, ho, k, hk, hpk, hx⟩
    refine hmod x (fun hr => ?_)
    rcases hR x hr with hn | ⟨o', ho', k', hk', hnp, hx'⟩
    · exact hn (hx ▸ cell_in hord hL ho hk)
    · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' (hx ▸ hx')
      exact hnp hpk
  refine ⟨p, hp ▸ hps, hord, hL, ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    by_cases hr : R (o.cell k)
    · exact hfit o ho k hk hr
    · have hr' : rd t.memory (o.cell k) = rd s.memory (o.cell k) := by rw [rd, rd, hmod _ hr]
      rw [hr']
      exact hF o ho k hk
  · intro o ho tag ht
    obtain ⟨h0, hc⟩ := slot0 hL ho
    have hp0 : ProtCell C Γ o.base := ⟨o, ho, 0, h0, hC _ _ ht, hc.symm⟩
    have hr' : rd t.memory o.base = rd s.memory o.base := by rw [rd, rd, hprot _ hp0]
    rw [hr']
    exact hT o ho tag ht
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, (hglob g k hk).trans hv, hf⟩
  · intro o ho
    exact (hH.2 Γ s t o (hW o ho) hd hbe
      (fun x hx => hprot x (hH.1 Γ s o x ho (hW o ho) hx)) hpg).1

/-! ## Footprint bookkeeping -/

theorem fresh_not_alloc {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered)
    (hm : p.Mono p') {x : BitVec 64} (h : Fresh p p' x) : ¬ p.Allocated x.toNat := by
  unfold Ptrs.Ordered at hord hord'
  unfold Ptrs.Mono at hm
  unfold Fresh at h
  unfold Ptrs.Allocated
  omega

/-- A non-`prot` slot cell of the current typing is in the activation's footprint. -/
theorem foot_of_wcell {a : Act σ} {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s)
    (hord0 : a.p0.Ordered) (hsz0 : ∀ o ∈ a.Γ0, o.size % 8 = 0) {x : BitVec 64}
    (hx : WCell a.C Γ x) : a.Foot x := by
  obtain ⟨hG, hps, hmono, -, hnf, -, -⟩ := hh
  obtain ⟨p1, hp1, hord, hL, -⟩ := hG
  rw [hps] at hp1
  cases hp1
  obtain ⟨o, ho, k, hk, hnp, rfl⟩ := hx
  have hc := cell_toNat hord hL ho hk
  have hin := cell_in hord hL ho hk
  obtain ⟨o', ho', hlo', hhi'⟩ := hin
  rcases hnf o ho (o.cell k) (by rw [hc.1]; unfold Obj.lo; omega)
      (by rw [hc.1]; unfold Obj.lo Obj.hi; unfold Obj.HasSlot at hk; omega) with
    ⟨o0, ho0, hb, ht, hlo, hhi⟩ | hfr
  · left
    have h8 := hsz0 o0 ho0
    refine ⟨o0, ho0, k, ?_, by rw [ht]; exact hnp, by unfold Obj.cell; rw [hb]⟩
    unfold Obj.HasSlot
    rw [hc.1] at hlo hhi
    simp only [Obj.lo, Obj.hi] at hlo hhi
    rw [hb] at hlo hhi
    omega
  · exact Or.inr (Or.inr (Or.inl (fresh_not_alloc hord0 hord hmono hfr)))

end InitECandidate.Solver.MemSafe
