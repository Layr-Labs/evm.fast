import InitECandidate.Solver.MemSafe.Ptx.PtT11
import InitECandidate.Solver.MemSafe.Aw.Rule

/-!
# F3g: dropping the non-heap objects (`tl_heapOnly`) and adopting an encoder's block (`tl_encout`)
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

/-- The heap part of a typing. -/
abbrev hpart (Γ : Gam) : Gam := Γ.filter fun o => (guestC.ty o.ty).region == .heap

theorem mem_hpart {Γ : Gam} {o : Obj} : o ∈ hpart Γ ↔ o ∈ Γ ∧ (guestC.ty o.ty).region = .heap := by
  simp [hpart, List.mem_filter]

theorem G_hpart {Γ : Gam} {s : State σ} (hG : G guestC (HR σ) Γ s)
    (hev : ∃ e, gword s nmEv = some e ∧ e.toNat < nullMax) (hcc : ∃ c, gword s nmCC = some c ∧ c.toNat < nullMax) :
    G guestC (HR σ) (hpart Γ) s :=
  Aw.G_heapOnly Hooks.relCfg_guestR Hooks.drvCfg_guestHooksR (by decide) hG hev hcc

section hp
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam} {p : Ptrs}

/-- **Dropping the non-heap objects keeps the run.** -/
theorem tl_heapOnly (h : TlS A ref Z O u Γ p) (hh0 : ∀ o ∈ A.Γ0, (guestC.ty o.ty).region = .heap) :
    TlS A ref Z O u (hpart Γ) p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  refine ⟨h1, h2, ?_, fun o ho a l1 l2 => h4 o (mem_hpart.mp ho).1 a l1 l2, G_hpart h5 h8 h9, h6, h7, h8, h9, ?_, h11,
    ?_, h13, h14⟩
  · intro o ho
    obtain ⟨o', ho', hb, ht, hs⟩ := h3 o ho
    exact ⟨o', mem_hpart.mpr ⟨ho', by rw [ht]; exact hh0 o ho⟩, hb, ht, hs⟩
  · intro a ha
    obtain ⟨o, ho, hr, hst, k, hk, hpr, rfl⟩ := h10 a ha
    exact ⟨o, mem_hpart.mpr ⟨ho, hr⟩, hr, hst, k, hk, hpr, rfl⟩
  · intro o ho
    obtain ⟨o', ho', hb, ht, hs⟩ := h12 o ho
    exact ⟨o', mem_hpart.mpr ⟨ho', by rw [ht]; exact h13 o ho⟩, hb, ht, hs⟩

/-- **An encoder's fresh block adopted as a `tVAL` object keeps the run** (`tl` version of `adopt_enc`). -/
theorem tl_encout {t : State σ} {v : ValueHOL 64} (h : TlS A ref Z O u Γ p) (hE : EncOut Γ p u t v)
    (hgl : ∀ g, cW.contains g = false → t.globals.lookup g = u.globals.lookup g) :
    ∃ (Γ'' : Gam) (p' : Ptrs) (rp rl : BitVec 64) (buf n : Nat), flattenHOL v = [.word rp, .word rl] ∧
      TlS A ref Z (O ++ [⟨BitVec.ofNat 64 buf, tVAL, n⟩]) t Γ'' p' ∧ Ext Γ Γ'' ∧ p.Mono p' ∧ 1 ≤ rl.toNat ∧ Hooks.VInR tVAL Γ'' rp rl ∧
      buf ≤ rp.toNat ∧ rp.toNat + rl.toNat ≤ buf + n ∧ buf + n < 2 ^ 64 := by
  obtain ⟨Γ', p', rp, rl, hG', hp', hext, hnf, hmono, hPG, hfl, hrl, buf, n, hb8, hn8, hbuf1, hbuf2, hbuf3, hbuf4, hdis,
    hmod⟩ := hE
  have hordp := tl_ord h
  have hL := tl_layout h
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
  have hn0 : 0 < n := by omega
  have hbnd : buf + n < 2 ^ 64 := by
    have := hord'.2.1; unfold heapEnd at *; omega
  have hbase : (BitVec.ofNat 64 buf).toNat = buf := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  let x : Obj := ⟨BitVec.ofNat 64 buf, tVAL, n⟩
  have hL' : Layout guestC p' Γ' := by
    obtain ⟨q, hq, -, hL1, -⟩ := hG'
    obtain rfl : q = p' := Option.some.inj (hq.symm.trans hp')
    exact hL1
  have hlive : heapBase ≤ buf := by
    have := hordp.1; omega
  have hGx : G guestC (HR σ) (Γ' ++ [x]) t := by
    refine g_adopt_plain hG' hp' (x := x) plain_tVAL tags_tVAL
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
  have hfrp : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p p' a := by
    intro a h1 h2
    have h1' : buf ≤ a.toNat := by simpa [Obj.lo, x, hbase] using h1
    have h2' : a.toNat < buf + n := by simpa [Obj.hi, x, hbase] using h2
    exact Or.inl ⟨by omega, by omega⟩
  have hnfx : NewFresh Γ (Γ' ++ [x]) p p' := by
    intro o ho a ha1 ha2
    rcases List.mem_append.mp ho with ho | ho
    · rcases hnf o ho a ha1 ha2 with ⟨o0, ho0, e1, e2, e3, e4⟩ | hfr
      · exact Or.inl ⟨o0, ho0, e1, e2, e3, e4⟩
      · exact Or.inr hfr
    · simp only [List.mem_singleton] at ho
      subst ho
      exact Or.inr (hfrp a ha1 ha2)
  have hextx : Ext Γ (Γ' ++ [x]) := ext_trans hext (ext_append Γ' x)
  have hmem : x ∈ Γ' ++ [x] := List.mem_append_right _ (List.mem_singleton.mpr rfl)
  refine ⟨Γ' ++ [x], p', rp, rl, buf, n, hfl, ⟨hp', mono_trans h.mono hmono, ext_trans h.ext hextx,
    newFresh_trans h.mono hmono h.nf hnfx, hGx, fun g hg => (hgl g hg).trans (h.glob g hg), ?_, ?_, ?_,
    fun a ha => nstProt_ext hextx (h.hZ a ha), ?_, ?_, ?_, ?_⟩, hextx, hmono, hrl, ?_, hbuf2, hbuf3, hbnd⟩
  · exact jrNZ_of_lookup (fun g hg => hPG g (by simp [Frames.jrGs] at hg; rcases hg with rfl | rfl <;> decide)) h.jr
  · obtain ⟨e, he, hs⟩ := h.hev
    exact ⟨e, by unfold gword at he ⊢; rw [hPG _ (by decide)]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h.hcc
    exact ⟨e, by unfold gword at he ⊢; rw [hPG _ (by decide)]; exact he, hs⟩
  · intro a ha
    have := hkeep a (tl_prot h ha)
    have h1 : rd t.memory a = rd u.memory a := by unfold rd; rw [this]
    exact h1.trans (h.keep a ha)
  · intro o ho
    rcases List.mem_append.mp ho with ho | ho
    · obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := h.hO o ho
      obtain ⟨o2, ho2, hb2, ht2, hs2⟩ := hextx o1 ho1
      exact ⟨o2, ho2, hb2.trans hb1, ht2.trans ht1, le_trans hs1 hs2⟩
    · simp only [List.mem_singleton] at ho
      subst ho
      exact ⟨x, hmem, by simp [x], rfl, le_refl _⟩
  · intro o ho
    rcases List.mem_append.mp ho with ho | ho
    · exact h.hOh o ho
    · simp only [List.mem_singleton] at ho
      subst ho
      show (guestC.ty tVAL).region = .heap
      decide
  · intro a ha
    obtain ⟨hn, hal⟩ := tl_yout h ha
    have hna : ¬ (buf ≤ a.toNat ∧ a.toNat < buf + n) := fun hh =>
      fresh_not_alloc hordp hord' hmono (x := a) (Or.inl ⟨by omega, by omega⟩) hal
    have := hmod a (by
      rintro (hw | hb | hn')
      · exact hn (inObj_of_wcell hordp hL hw)
      · exact hna hb
      · exact hn' hal)
    have h1 : rd t.memory a = rd u.memory a := by unfold rd; rw [this]
    exact h1.trans (h.kY a ha)
  · right
    refine ⟨x, hmem, rfl, ?_, ?_⟩
    · show x.lo ≤ rp.toNat
      simpa [Obj.lo, x, hbase] using hbuf2
    · show rp.toNat + rl.toNat ≤ x.hi
      simpa [Obj.hi, x, hbase] using hbuf3

end hp

end InitECandidate.Solver.MemSafe.Ptx
