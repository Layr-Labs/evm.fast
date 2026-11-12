import InitECandidate.Solver.MemSafe.Ptx.PtFin

/-!
# F3d: a call to an encoder that returns a slice of a fresh block (`encode_transaction`, `encode_receipt`)
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

/-- A cell of a `Γ` object is below `p.hp` or at/above `heapEnd`. -/
theorem inObj_hp_or {Γ : Gam} {p : Ptrs} (hL : Layout guestC p Γ) (hord : p.Ordered) {a : Nat}
    (h : InObj Γ a) : a < p.hp ∨ heapEnd ≤ a := by
  obtain ⟨o, ho, hlo, hhi⟩ := h
  have hl := (hL.1 o ho).2.2.2.2
  have h1 := hord
  unfold Ptrs.Ordered at h1
  simp only [Obj.lo, Obj.hi] at hlo hhi
  cases hr : (guestC.ty o.ty).region <;> rw [hr] at hl <;> simp only [Region.Live, Obj.lo] at hl
  · left; omega
  · right; omega
  · right; omega


/-- **A call to an encoder keeps the run.** -/
theorem ptRun_encout {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {u t : State σ} {p : Ptrs} {v : ValueHOL 64} (h : PtRun D Γ0 s0 p0 Γ u p) (hE : EncOut Γ p u t v)
    (hgl : ∀ g, ptW.contains g = false → t.globals.lookup g = u.globals.lookup g) :
    ∃ Γ' p', PtRun D Γ0 s0 p0 Γ' t p' ∧ StepD Γ p u Γ' p' t ∧ ∃ (rp rl : BitVec 64) (buf n : Nat),
      flattenHOL v = [.word rp, .word rl] ∧ 1 ≤ rl.toNat ∧ buf % 8 = 0 ∧ n % 8 = 0 ∧ p.hp ≤ buf ∧
      buf ≤ rp.toNat ∧ rp.toNat + rl.toNat ≤ buf + n ∧ buf + n ≤ p'.hp ∧
      (∀ a : Nat, buf ≤ a → a < buf + n → ¬ InObj Γ' a) := by
  obtain ⟨Γ', p', rp, rl, hG', hp', hext, hnf, hmono, hPG, hfl, hrl, buf, n, hb8, hn8, hbuf1, hbuf2, hbuf3, hbuf4, hdis, hmod⟩ := hE
  have hordp := ptRun_ord h
  have hGu := ptRun_G h
  have hL : Layout guestC p Γ := by
    obtain ⟨q, hq, -, hL, -⟩ := hGu
    obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs h))
    exact hL
  have hord' := ordered_of_G hG' hp'
  have hkeep : ∀ a, ProtCell guestC Γ a → t.memory a = u.memory a := by
    intro a ha
    apply hmod
    rintro (hw | ⟨h1, h2⟩ | hna)
    · exact protCell_not_wcell hordp hL ha hw
    · have hin := inObj_of_protCell hordp hL ha
      rcases inObj_hp_or hL hordp hin with hlt | hge
      · omega
      · have := hord'.2.1
        omega
    · exact hna (Helpers.allocated_of_inObj hL (inObj_of_protCell hordp hL ha))
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  refine ⟨Γ', p', ⟨h1, hp', mono_trans h3 hmono, ext_trans h4 hext, newFresh_trans h3 hmono h5 hnf, hG',
    fun g hg hn => (hPG g hg).trans (h7 g hg hn), ?_, ?_, ?_, ?_, h12, fun g hg => (hgl g hg).trans (h13 g hg)⟩,
    ⟨h2, hp', hmono, hext, hnf, h6, hG'⟩, rp, rl, buf, n, hfl, hrl, hb8, hn8, hbuf1, hbuf2, hbuf3, hbuf4, hdis⟩
  · intro a ha
    have hpc : ProtCell guestC Γ a := by
      obtain ⟨o, ho, k, hk, hp, e⟩ := protCell_ext (C := guestC) (ext_nst h4) ha
      exact ⟨o, (mem_nst.mp ho).1, k, hk, hp, e⟩
    have := hkeep a hpc
    exact ⟨fun hd => by rw [this]; exact (h8 a ha).1 hd, fun w hw => by unfold rd; rw [this]; exact (h8 a ha).2 w hw⟩
  · exact jrNZ_of_lookup (fun g hg => hPG g (by simp [Frames.jrGs] at hg; rcases hg with rfl | rfl <;> decide)) h9
  · obtain ⟨e, he, hs⟩ := h10
    exact ⟨e, by unfold gword at he ⊢; rw [hPG _ (by decide)]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11
    exact ⟨e, by unfold gword at he ⊢; rw [hPG _ (by decide)]; exact he, hs⟩


theorem tval_slot (k : Nat) : (Types.guestC.ty tVAL).slot k = .scalar := by
  show (valTy).slot k = .scalar
  unfold TyD.slot valTy
  simp

theorem plain_tVAL' : Plain tVAL := plain_tVAL
theorem tags_tVAL : Types.guestC.tags.lookup tVAL = none := by decide

/-- **Adopting the encoder's block as a `tVAL` object.** -/
theorem adopt_enc {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {u t : State σ} {p : Ptrs} {v : ValueHOL 64} (h : PtRun D Γ0 s0 p0 Γ u p) (hE : EncOut Γ p u t v)
    (hgl : ∀ g, ptW.contains g = false → t.globals.lookup g = u.globals.lookup g) :
    ∃ (Γ'' : Gam) (p' : Ptrs) (rp rl : BitVec 64) (buf n : Nat), flattenHOL v = [.word rp, .word rl] ∧
      PtRun D Γ0 s0 p0 Γ'' t p' ∧ StepD Γ p u Γ'' p' t ∧ 1 ≤ rl.toNat ∧ buf ≤ rp.toNat ∧
      rp.toNat + rl.toNat ≤ buf + n ∧ ∃ o ∈ Γ'', o.base = BitVec.ofNat 64 buf ∧ o.ty = tVAL ∧ o.size = n ∧
        buf % 8 = 0 ∧ n % 8 = 0 ∧ p.hp ≤ buf ∧ buf + n ≤ p'.hp := by
  obtain ⟨Γ', p', hrun, hstep, rp, rl, buf, n, hfl, hrl, hb8, hn8, hbuf1, hbuf2, hbuf3, hbuf4, hdis⟩ := ptRun_encout h hE hgl
  have hordp := ptRun_ord h
  have hord' := ordered_of_G hstep.hG' hstep.hp'
  have hn0 : 0 < n := by omega
  have hbnd : buf + n < 2 ^ 64 := by
    have := hord'.2.1; unfold heapEnd at *; omega
  have hbase : (BitVec.ofNat 64 buf).toNat = buf := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  let x : Obj := ⟨BitVec.ofNat 64 buf, tVAL, n⟩
  have hL' : Layout guestC p' Γ' := by
    obtain ⟨q, hq, -, hL, -⟩ := hstep.hG'
    obtain rfl : q = p' := Option.some.inj (hq.symm.trans hstep.hp')
    exact hL
  have hlive : heapBase ≤ buf := by
    have := hordp.1; omega
  have hGx : G guestC (HR σ) (Γ' ++ [x]) t := by
    refine g_adopt_plain hstep.hG' hstep.hp' (x := x) plain_tVAL tags_tVAL
      (by simpa [Obj.lo, x, hbase] using hb8) (by simpa [x] using hn8)
      (by show (Types.guestC.ty tVAL).minSz ≤ n; show 8 ≤ n; omega) (by simpa [x] using hn0)
      (by show (Types.guestC.ty tVAL).region.Live p' (BitVec.ofNat 64 buf).toNat n
          show heapBase ≤ (BitVec.ofNat 64 buf).toNat ∧ (BitVec.ofNat 64 buf).toNat + n ≤ p'.hp
          rw [hbase]; exact ⟨hlive, hbuf4⟩)
      (fun a ha => by
        have h1 : buf ≤ a.toNat := by have := ha.1; simpa [Obj.lo, x, hbase] using this
        have h2 : a.toNat < buf + n := by have := ha.2; simpa [Obj.hi, x, hbase] using this
        exact hdis a.toNat h1 h2)
      (fun k hk => by rw [tval_slot]; trivial)
  have hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p0 p' a := by
    intro a h1 h2
    have h1' : buf ≤ a.toNat := by simpa [Obj.lo, x, hbase] using h1
    have h2' : a.toNat < buf + n := by simpa [Obj.hi, x, hbase] using h2
    have hp0 : p0.hp ≤ p.hp := h.2.2.1.1
    exact Or.inl ⟨by omega, by omega⟩
  have hfrp : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p p' a := by
    intro a h1 h2
    have h1' : buf ≤ a.toNat := by simpa [Obj.lo, x, hbase] using h1
    have h2' : a.toNat < buf + n := by simpa [Obj.hi, x, hbase] using h2
    exact Or.inl ⟨by omega, by omega⟩
  refine ⟨Γ' ++ [x], p', rp, rl, buf, n, hfl, ptRun_adopt hrun hGx hfr, ?_, hrl, hbuf2, hbuf3,
    x, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl, rfl, hb8, hn8, hbuf1, hbuf4⟩
  refine ⟨hstep.hp, hstep.hp', hstep.mono, ext_trans hstep.ext (ext_append Γ' x), ?_, hstep.hG, hGx⟩
  intro o ho a ha1 ha2
  rcases List.mem_append.mp ho with ho | ho
  · exact hstep.nf o ho a ha1 ha2
  · simp only [List.mem_singleton] at ho
    subst ho
    exact Or.inr (hfrp a ha1 ha2)

end InitECandidate.Solver.MemSafe.Ptx
