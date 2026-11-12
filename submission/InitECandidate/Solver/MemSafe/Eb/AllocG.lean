import InitECandidate.Solver.MemSafe.Eb.Alloc

/-!
# `execute_block`: setting a global in the walk, and `g = alloc(e);` with adoption
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.HtabEntries

variable {σ : Type}

/-- The globals the walk may set freely: not allocator pointers, protected, journal, `ev`, `cur_cont`. -/
structure FreeG (g : MlS) : Prop where
  hpg : g ∉ guestC.PG
  hne : g ≠ gHeap ∧ g ≠ gFrame ∧ g ≠ gScratch
  hnj : g ≠ nmJr ∧ g ≠ nmSk
  hev : g ≠ nmEv ∧ g ≠ nmCC

theorem ebRun_setGlob {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {u : State σ} {p : Ptrs}
    (h : EbRun Γ0 s0 p0 Γ u p) {g : MlS} (hg : FreeG g) {w : BitVec 64}
    (hG : G guestC (HR σ) Γ (setKvarHOLFinite .global g (.val (.word w)) u)) :
    EbRun Γ0 s0 p0 Γ (setKvarHOLFinite .global g (.val (.word w)) u) p := by
  have hgw : ∀ g', g' ≠ g → gword (setKvarHOLFinite .global g (.val (.word w)) u) g' = gword u g' :=
    fun g' hne' => gword_setG_ne hne'
  refine ⟨ebRun_ptrs0 h, ?_, ebRun_mono h, ebRun_ext h, ebRun_nf h, hG, ?_, ?_, ?_, ebRun_ord0 h⟩
  · unfold ptrsOf
    rw [hgw gHeap hg.hne.1.symm, hgw gFrame hg.hne.2.1.symm, hgw gScratch hg.hne.2.2.symm]
    exact ebRun_ptrs h
  · exact jrNZ_of_gword (fun g' hgj => hgw g' (by
      simp [Frames.jrGs] at hgj; rcases hgj with rfl | rfl
      · exact fun e => hg.hnj.1 e.symm
      · exact fun e => hg.hnj.2 e.symm)) (ebRun_jr h)
  · obtain ⟨e, he, hs⟩ := ebRun_ev h
    exact ⟨e, by rw [hgw _ (fun e => hg.hev.1 e.symm)]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := ebRun_cc h
    exact ⟨e, by rw [hgw _ (fun e => hg.hev.2 e.symm)]; exact he, hs⟩

theorem holdsAll_setGlob {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS} {g : MlS} {w : BitVec 64}
    (hL : HoldsAll p0 Γ p u S) (hgo : ∀ g' w' ty, S (Fct.gobj g' w' ty) → g' ≠ g)
    (hgv : ∀ g' w', S (Fct.gval g' w') → g' ≠ g) :
    HoldsAll p0 Γ p (setKvarHOLFinite .global g (.val (.word w)) u) S := by
  intro f hf
  have hh := hL f hf
  cases f with
  | gobj g' w' ty =>
    obtain ⟨h1, h2⟩ := hh
    exact ⟨(gword_setG_ne (hgo g' w' ty hf)).trans h1, h2⟩
  | gval g' w' => exact (gword_setG_ne (hgv g' w' hf)).trans hh
  | _ => exact hh

section allocG
variable {E : EbE σ} {En : Env} {S : FS}

/-- `g = alloc(e);` for a typed pointer global `g` of type `nptr ty`: the block is adopted at once as a block object and `g` points at it. -/
theorem hn_allocAdoptG {g : MlS} {e : ExpHOL 64} {n : BitVec 64} {ty : Nat}
    (hty : ty = tBOS ∨ ty = tBO ∨ ty = tMCO) (hn8 : n.toNat % 8 = 0) (hmin : (guestC.ty ty).minSz ≤ n.toNat)
    (hpos : 0 < n.toNat) (hgt : guestC.GT.lookup g = some (.nptr ty)) (hg : FreeG g)
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hgS : ∀ g' w t, S (Fct.gobj g' w t) → g' ≠ gHeap ∧ g' ≠ g)
    (hgv : ∀ g' w, S (Fct.gval g' w) → g' ≠ gHeap ∧ g' ≠ g) :
    HN (PA E En S) (.call (some (some (.global, g), none)) (nm "alloc") [e])
      (fun t => ∃ w : BitVec 64, PA E En (fun f => S f ∨ AdoptNF S w ty n.toNat f ∨ f = Fct.gobj g w ty) t) := by
  refine hoare_callA (funSpec_allocRel (σ := σ)) ?_
  intro s hs hpa vs hvs callee v st hAR hst hvalid
  have hvs' := alloc_args (he s hpa) hvs
  subst hvs'
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  obtain ⟨q, Γ', p', rfl, hstep, hrun, hH⟩ :=
    alloc_adopt_core hty hn8 hmin hpos hAR hr hL (fun g' w t h => (hgS g' w t h).1) (fun g' w h => (hgv g' w h).1)
  have hGs : G guestC (HR σ) (Γ' ++ [⟨q, ty, n.toNat⟩]) (setKvarHOLFinite .global g (.val (.word q)) {st with locals := s.locals}) :=
    G_setGlobPtr (ebRun_G hrun) hgt hg.hpg hg.hne
      (Or.inr ⟨⟨q, ty, n.toNat⟩, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl⟩)
  have hnogo : ∀ f, AdoptNF S q ty n.toNat f → (∀ g' w' t', f ≠ Fct.gobj g' w' t') ∧ (∀ g' w', f ≠ Fct.gval g' w') := by
    intro f hf
    rcases hf with rfl | ⟨b, ty', n', -, rfl⟩ | ⟨g', b, ty', -, rfl⟩ | rfl <;> refine ⟨fun g' w' t' h => ?_, fun g' w' h => ?_⟩ <;> cases h
  have hS2 : HoldsAll E.p0 (Γ' ++ [⟨q, ty, n.toNat⟩]) p' (setKvarHOLFinite .global g (.val (.word q)) {st with locals := s.locals})
      (fun f => S f ∨ AdoptNF S q ty n.toNat f) := by
    refine holdsAll_setGlob hH ?_ ?_
    · intro g' w' t' h'
      rcases h' with h' | h'
      · exact (hgS g' w' t' h').2
      · exact absurd rfl ((hnogo _ h').1 g' w' t')
    · intro g' w' h'
      rcases h' with h' | h'
      · exact (hgv g' w' h').2
      · exact absurd rfl ((hnogo _ h').2 g' w')
  refine ⟨rfl, q, ⟨_, p', ebRun_setGlob hrun hg hGs, ?_⟩, fun x v hx => hlk x v hx⟩
  intro f hf
  rcases hf with hf | hf | rfl
  · exact hS2 f (Or.inl hf)
  · exact hS2 f (Or.inr hf)
  · exact ⟨gword_setG_self, ⟨q, ty, n.toNat⟩, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl⟩

end allocG

end InitECandidate.Solver.MemSafe.Eb
