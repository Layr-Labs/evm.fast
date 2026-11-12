import InitECandidate.Solver.MemSafe.Eb.Stm

/-!
# `execute_block`: `memzero(bo, 88)` on the adopted `bo`
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

variable {σ : Type}

theorem cell_eq_of_off {b a : BitVec 64} {j : Nat} (h : a.toNat = b.toNat + 8 * j) :
    a = b + BitVec.ofNat 64 (8 * j) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, h]
  have := a.isLt
  omega

/-- The aligned cells overlapping a block object are its cells. -/
theorem bcell_of_overlap {Γ : Gam} {o : Obj} (ho : o ∈ Γ) (hty : o.ty = tBOS ∨ o.ty = tBO ∨ o.ty = tMCO)
    (h8 : o.lo % 8 = 0) (hsz8 : o.size % 8 = 0) {a : BitVec 64} (hov : Overlap o.lo o.size a) :
    BCell guestC Γ a := by
  obtain ⟨ha8, h1, h2⟩ := hov
  have hge : o.lo ≤ a.toNat := by omega
  refine ⟨o, ho, by rcases hty with h | h | h <;> simp [blockTys, h], (a.toNat - o.lo) / 8, ?_, blk_prot hty _, ?_⟩
  · unfold Obj.HasSlot; omega
  · unfold Obj.cell
    have : a.toNat = o.base.toNat + 8 * ((a.toNat - o.lo) / 8) := by unfold Obj.lo at *; omega
    exact cell_eq_of_off this

theorem ebRun_memchg {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {u t : State σ} {p : Ptrs}
    (h : EbRun Γ0 s0 p0 Γ u p) (hG : G guestC (HR σ) Γ t) (hg : t.globals = u.globals) :
    EbRun Γ0 s0 p0 Γ t p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h9, h10, h11, h12⟩ := h
  refine ⟨h1, (ptrsOf_congr hg).trans h2, h3, h4, h5, hG, jrNZ_congr hg h9, ?_, ?_, h12⟩
  · obtain ⟨e, he, hs⟩ := h10; exact ⟨e, by rw [gword_congr hg]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11; exact ⟨e, by rw [gword_congr hg]; exact he, hs⟩

theorem ev_gv_of_gword {s : State σ} {g : MlS} {w : BitVec 64} (h : gword s g = some w) :
    ev s (gv g) = some (.val (.word w)) := AllocImpl.lookup_of_gword h

section mz
variable {E : EbE σ} {En : Env} {S : FS}

/-- `memzero(bo, 88)` where `bo` (the global) is a `tBO` object of size 88 and no fact reads its cells. -/
theorem hn_memzeroBo {w : BitVec 64} (hw : S (Fct.gobj (nm "bo") w tBO)) (ho : S (Fct.obj w tBO 88))
    (hrd : ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → ∀ f, S f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y → ¬ Overlap w.toNat 88 y) :
    HN (PA E En S) (callD (nm "memzero") [gv (nm "bo"), cw 88])
      (PA E En (fun f => S f ∨ f = Fct.cellv (w + BitVec.ofNat 64 64) 0)) := by
  refine hoare_callD (funSpec_memzero_blk (σ := σ)) ?_
  intro s hs hpa vs hvs callee v st hR hst
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hw' : gword s (nm "bo") = some w := (hL _ hw).1
  have hvs' : vs = [.val (.word w), .val (.word (BitVec.ofNat 64 88))] := by
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [ev_gv_of_gword hw'] at h1
    rw [ev_cw] at h2
    cases h1; cases h2; rfl
  subst hvs'
  obtain ⟨o, hoΓ, hob, hot, hos⟩ := hL _ ho
  obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
  obtain ⟨hq1, hq2, hq3, hq4, hq5⟩ := hL0.1 o hoΓ
  have hqp : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs hr))
  have hhi := obj_hi (hqp ▸ hord) hL0 hoΓ
  have hlo : o.lo = w.toNat := by unfold Obj.lo; rw [hob]
  have h88 : (BitVec.ofNat 64 88).toNat = 88 := by decide
  have hw8 : w.toNat % 8 = 0 := by rw [← hlo]; exact hq1
  have hbn : o.base.toNat = w.toNat := by rw [hob]
  obtain ⟨hg1, hg2, hg3, hmod, hz⟩ := hR _ rfl w (BitVec.ofNat 64 88) rfl hw8 (by rw [h88]) (Or.inr (by
    rw [h88]; unfold Obj.hi at hhi; omega))
  rw [h88] at hmod hz
  have hRB : ∀ a, Overlap w.toNat 88 a → BCell guestC Γ a := fun a hov =>
    bcell_of_overlap hoΓ (Or.inr (Or.inl hot)) (by rw [hlo]; exact hw8) hq2 ⟨hov.1, by rw [hlo]; exact hov.2.1,
      by rw [hlo]; have := hov.2.2; omega⟩
  have hGt : G guestC (HR σ) Γ { st with locals := s.locals } :=
    G_mem_blk (ebRun_G hr) hRB hmod hg1 hg2 hg3
  have hrun := ebRun_memchg hr hGt hg1
  refine ⟨rfl, ⟨Γ, p, hrun, ?_⟩, hlk⟩
  have hstep : StepD Γ p s Γ p { st with locals := s.locals } :=
    ⟨ebRun_ptrs hr, ebRun_ptrs hrun, mono_g_refl (ebRun_ord hr), fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ebRun_G hr, hGt⟩
  have hord' : p.Ordered := ebRun_ord hr
  have hL0' : Layout guestC p Γ := by
    obtain ⟨q', hq', -, hLL, -⟩ := ebRun_G hr
    obtain rfl : q' = p := Option.some.inj (hq'.symm.trans (ebRun_ptrs hr))
    exact hLL
  have hgs : ∀ g, gword st g = gword s g := fun g => gword_congr hg1 g
  have h1 : HoldsAll E.p0 Γ p { st with locals := s.locals } S :=
    holds_step hstep (ebRun_ord0 hr) (fun f hf a' ha' => hmod a' (by
        by_cases hpc : ∃ a'' v'', f = Fct.pcv a'' v''
        · obtain ⟨a'', v'', rfl⟩ := hpc
          have hh := hL _ hf
          have ha'' : a' = a'' := ha'
          subst ha''
          intro hov
          exact plCell_ne_bCell hord' hL0' hh.2 (hRB _ hov) rfl
        · push_neg at hpc
          exact hrd s ⟨⟨Γ, p, hr, hL⟩, hlk⟩ Γ p hr hL f hf (fun a v h => hpc a v h) a' ha'))
      (fun g w' ty hm => hgs g) (fun g w' hm => hgs g) hL
  intro f hf
  rcases hf with hf | rfl
  · exact h1 f hf
  · have hov : Overlap w.toNat 88 (w + BitVec.ofNat 64 64) := by
      have h64 : (BitVec.ofNat 64 64).toNat = 64 := by decide
      have hse : scratchEnd < 2 ^ 64 := by decide
      have hwl : w.toNat + 88 ≤ scratchEnd := by unfold Obj.hi at hhi; omega
      have e1 : (w + BitVec.ofNat 64 64).toNat = w.toNat + 64 := by
        rw [BitVec.toNat_add, h64, Nat.mod_eq_of_lt (by omega)]
      rw [Overlap, e1]
      refine ⟨by omega, by omega, by omega⟩
    refine ⟨?_, hRB _ hov⟩
    have := hz 64 (by decide) (by decide)
    show rd st.memory _ = 0
    unfold rd; rw [this]

end mz

end InitECandidate.Solver.MemSafe.Eb
