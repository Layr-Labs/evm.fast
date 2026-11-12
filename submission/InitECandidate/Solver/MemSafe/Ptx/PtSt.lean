import InitECandidate.Solver.MemSafe.Ptx.PtHoare
import InitECandidate.Solver.MemSafe.D0.BlockSt

/-!
# F3d: stores
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

section stfresh
variable {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {u t : State σ}
  {p : Ptrs}

/-- Cells of `Γ0`'s non-state prot cells lie in `Γ` objects. -/
theorem protNst_inObj (h : PtRun D Γ0 s0 p0 Γ u p) {a : BitVec 64}
    (ha : ProtCell guestC (nst guestSt Γ0) a) : InObj Γ a.toNat := by
  obtain ⟨-, hp, -, hx, -, hG, -⟩ := h
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  have := protCell_ext (C := guestC) (ext_nst hx) ha
  obtain ⟨o, ho, k, hk, -, rfl⟩ := this
  exact cell_in hord hL (mem_nst.mp ho).1 hk

/-- **A store into cells outside every object of `Γ`** keeps the run. -/
theorem ptRun_store_fresh {R : BitVec 64 → Prop} (h : PtRun D Γ0 s0 p0 Γ u p)
    (hmod : ModifiesOnly R u.memory t.memory) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) (hR : ∀ a, R a → ¬ InObj Γ a.toNat) :
    PtRun D Γ0 s0 p0 Γ t p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  have hnR : ∀ a, ProtCell guestC (nst guestSt Γ0) a → ¬ R a := fun a ha hra =>
    hR a hra (protNst_inObj ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ ha)
  refine ⟨h1, (ptrsOf_congr hg).trans h2, h3, h4, h5,
    Helpers.G_buf Hooks.guestHooksR_lawful Helpers.tagSlots_guestC h6 hg hd hbe hmod (fun a ha => Or.inr (hR a ha)),
    fun g hg' hn => by rw [hg]; exact h7 g hg' hn,
    fun a ha => ⟨fun hd' => by rw [hmod a (hnR a ha)]; exact (h8 a ha).1 hd',
      fun v hv => by unfold rd; rw [hmod a (hnR a ha)]; exact (h8 a ha).2 v hv⟩,
    jrNZ_congr hg h9, ?_, ?_, h12, fun g hg' => by rw [hg]; exact h13 g hg'⟩
  · obtain ⟨e, he, hs⟩ := h10; exact ⟨e, by rw [gword_congr hg]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11; exact ⟨e, by rw [gword_congr hg]; exact he, hs⟩

end stfresh

/-- A cell of a fresh buffer. -/
theorem fbuf_cell {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {b : BitVec 64} {n : Nat} (hf : FreshBuf Γ p0 p b n)
    (h0 : p0.Ordered) (hord : p.Ordered) {a : BitVec 64} (ha : Overlap b.toNat n a) :
    ¬ InObj Γ a.toNat ∧ p.Allocated a.toNat :=
  ⟨(hf.2 a ha).2, alloc_of_fresh h0 hord (hf.2 a ha).1⟩


/-- **A store of a value into cells outside `Γ`**, not overlapping the cells the facts read. -/
theorem hn_stF {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64}
    (hcell : ∀ s : State σ, PA E En S s → ∀ D Γ p, PtRun D E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → ∀ (w : BitVec 64) (v : ValueHOL 64),
      ev s a = some (.val (.word w)) → ev s e = some v →
      (∀ j, j < (flattenHOL v).length → ¬ InObj Γ (w + BitVec.ofNat 64 (8 * j)).toNat) ∧
      (∀ f, S f → ∀ x, f.reads x → ∀ j, j < (flattenHOL v).length → x ≠ w + BitVec.ofNat 64 (8 * j))) :
    HN (PA E En S) (.store a e) (PA E En S) := by
  refine hoare_store fun s hs hpa w v mem hw hv hmem => ?_
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  obtain ⟨hin, hrd⟩ := hcell s hpa D Γ p hr hL w v hw hv
  obtain ⟨hmod, -⟩ := Helpers.stores_mod hmem
  have hr' : PtRun D E.Γ0 E.s0 E.p0 Γ { s with memory := mem } p :=
    ptRun_store_fresh hr (R := fun a => ∃ j, j < (flattenHOL v).length ∧ a = w + BitVec.ofNat 64 (8 * j))
      hmod rfl rfl rfl (by rintro a ⟨j, hj, rfl⟩; exact hin j hj)
  refine ⟨rfl, ⟨D, Γ, p, hr', hD, ?_⟩, hlk⟩
  have hstep : StepD Γ p s Γ p { s with memory := mem } :=
    ⟨ptRun_ptrs hr, ptRun_ptrs hr', ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ptRun_G hr, ptRun_G hr'⟩
  refine holds_step hstep (ptRun_ord0 hr) ?_ (fun _ _ _ => rfl) hL
  intro f hf x hx
  exact hmod x (by rintro ⟨j, hj, hxj⟩; exact hrd f hf x hx j hj hxj)

end InitECandidate.Solver.MemSafe.Ptx
