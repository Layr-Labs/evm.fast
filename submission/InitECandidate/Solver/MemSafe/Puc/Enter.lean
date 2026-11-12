import InitECandidate.Solver.MemSafe.Puc.Code
import InitECandidate.Solver.MemSafe.Plug.F3
import InitECandidate.Solver.MemSafe.Wg.Bridge

/-!
# Puc U1: entering the walk (`state_fresh_tx()`)

`pucE Γ s q`: the entry data (typing, state, allocator `q`; the block fields of `PtE` are dummies, nothing in the block is
written, `D = noD`). The allocator anchor is `q` itself (`PtRun` allows `p0 = q`), so the target buffer's `BufOK` at `q` is a
`bufok0` fact.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

/-- The entry data. -/
def pucE (Γ : Gam) (s : State σ) (q : Ptrs) : PtE σ := ⟨Γ, s, q, 0, 0, 0, 0, 0, 0⟩

/-- The tracked locals at the start: the three parameters. -/
def PuEn0 (T Dv N : BitVec 64) : Env := fun x =>
  if x = nm "target" then some (.val (.word T)) else
  if x = nm "data" then some (.val (.word Dv)) else
  if x = nm "data_n" then some (.val (.word N)) else none

/-- The facts after `state_fresh_tx()`. -/
def PuS0 (T N vmw : BitVec 64) : FS := fun f =>
  f = Fct.gobj (nm "bs") tBS ∨ f = Fct.gobj (nm "bal_accounts") tHTd20 ∨
  f = Fct.gobj (nm "bal_key_buf") tB64 ∨ f = Fct.gobj (nm "bal_idx_accts") tHTh28 ∨
  f = Fct.gobj (nm "bal_idx_stor") tHTh60 ∨ f = Fct.gobj (nm "sk_buf") tB64 ∨ f = Fct.gobj nmTs tTS ∨
  f = Fct.obj vmw tB24 0 ∨ f = Fct.bufok0 T 20 ∨ f = Fct.prop (N.toNat < 2 ^ 32) ∨ f = Fct.prop (T ≠ 0)

/-- `state_fresh_tx`'s result starts the walk, with the allocator anchor `p` itself. -/
theorem ptRun_of_qfin' {Γ : Gam} {p : Ptrs} {s0 s0' t : State σ} (hord : p.Ordered)
    (hm : s0'.memory = s0.memory) (hg : s0'.globals = s0.globals)
    (hp : ptrsOf s0 = some p) (h : QFin Γ p s0' t) :
    ∃ Γ' p', PtRun noD Γ s0 p Γ' t p' ∧ StepD Γ p s0' Γ' p' t ∧
      (∃ w, gword t nmTs = some w ∧ ∃ o ∈ Γ', o.base = w ∧ o.ty = tTS) := by
  obtain ⟨Γ', p', hs, h1, h2, h3, h4, h5, he, hc, hts⟩ := h
  refine ⟨Γ', p', ⟨⟨p, hp, Or.inl rfl⟩, hs.hp', hs.mono, hs.ext, hs.nf, hs.hG', ?_, ?_, h5, he, hc,
    hord, ?_⟩, hs, hts⟩
  · intro g hg' hn; rw [h3 g hg' hn, hg]
  · intro a ha
    obtain ⟨o, ho, k, hk, hp', e⟩ := ha
    have := h1 a ⟨o, (mem_nst.mp ho).1, k, hk, hp', e⟩
    exact ⟨fun _ => by rw [this, hm], fun v hv => by simp [noD] at hv⟩
  · intro g hg'; rw [h4 g hg', hg]

theorem gobj_holds {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {g : MlS} {ty : Nat}
    (h : ∃ w, gword u g = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = ty) : (Fct.gobj g ty).holds p0 Γ p u := h

/-- 20 bytes inside an object with only scalar slots are a `BufOK` buffer (copy of `Eb.bufOK_of_scalar_obj`). -/
theorem bufOK_of_scalar_obj' {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {x : Obj}
    (hx : x ∈ Γ) (hsc : ∀ k, (guestC.ty x.ty).slot k = .scalar) {b n : Nat} (h1 : x.lo ≤ b) (h2 : b + n ≤ x.hi) :
    BufOK guestC Γ p b n := by
  intro c hc
  obtain ⟨c8, c1, c2⟩ := hc
  obtain ⟨x8, xs8, -, -, -⟩ := hL.1 x hx
  simp only [Obj.hi, Obj.lo] at h2 h1 x8
  have hlo : x.base.toNat ≤ c.toNat := by omega
  have hhi : c.toNat + 8 ≤ x.base.toNat + x.size := by omega
  have hk : x.HasSlot ((c.toNat - x.base.toNat) / 8) := by unfold Obj.HasSlot; omega
  left
  refine ⟨x, hx, (c.toNat - x.base.toNat) / 8, hk, hsc _, ?_⟩
  apply BitVec.eq_of_toNat_eq
  rw [(cell_toNat hord hL hx hk).1]
  unfold Obj.lo
  omega

theorem tB24_scalar' : ∀ k, (guestC.ty tB24).slot k = .scalar := slot_all (by decide) (by decide)

/-- The constant address globals (`tB24` objects) are 20-byte buffers. -/
theorem bufOK_tB24' {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {x : Obj} (hx : x ∈ Γ)
    (ht : x.ty = tB24) : BufOK guestC Γ p x.base.toNat 20 := by
  have hmin := (hL.1 x hx).2.2.2.1
  rw [ht] at hmin
  have : (guestC.ty tB24).minSz = 24 := rfl
  refine bufOK_of_scalar_obj' hord hL hx (by rw [ht]; exact tB24_scalar') le_rfl ?_
  unfold Obj.hi; omega

/-- A `BufOK` buffer does not start at address 0. -/
theorem bufOK_ne_zero {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {T : BitVec 64}
    (h : BufOK guestC Γ p T.toNat 20) : T ≠ 0 := by
  intro hT
  subst hT
  have := h 0 ⟨by simp, by simp, by simp⟩
  rcases this with ⟨o, ho, k, hk, -, e⟩ | ⟨-, hal⟩
  · have h1 := (cell_toNat hord hL ho hk).1
    have h2 := (hL.1 o ho).2.2.2.2
    have e' := congrArg BitVec.toNat e
    have h0 : BitVec.toNat (0 : BitVec 64) = 0 := rfl
    have hlo : o.lo = o.base.toNat := rfl
    unfold Obj.lo at h1
    unfold Region.Live at h2
    obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hord
    unfold heapBase heapEnd at *
    rcases hr : (guestC.ty o.ty).region <;> rw [hr] at h2 <;> simp only [Region.Live] at h2 <;> omega
  · unfold Ptrs.Allocated at hal
    obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hord
    unfold heapBase heapEnd at *
    have h0 : BitVec.toNat (0 : BitVec 64) = 0 := rfl
    omega

/-- **Entering the walk.** -/
theorem puc_enter {Γ : Gam} {s : State σ} {q : Ptrs} {T Dv N vmw : BitVec 64}
    (hG : G guestC (HR σ) Γ s) (hp : ptrsOf s = some q) (hJ : JrNZ s) (hE : Eb.EvCc s)
    (hB : Eb.BalG Γ s) (hvo : ∃ o ∈ Γ, o.base = vmw ∧ o.ty = tB24)
    (hT : BufOK guestC Γ q T.toNat 20) (hN : N.toNat < 2 ^ 32)
    (hl : s.locals.lookup (nm "target") = some (.val (.word T)) ∧
      s.locals.lookup (nm "data") = some (.val (.word Dv)) ∧
      s.locals.lookup (nm "data_n") = some (.val (.word N))) :
    HN (fun t => t = s) (callD (nm "state_fresh_tx") []) (PA (pucE Γ s q) (PuEn0 T Dv N) (PuS0 T N vmw)) := by
  refine hoare_callD sf_spec ?_
  intro s' hs hs0 vs hvs callee v st hR hst
  subst s'
  have hord : q.Ordered := ordered_of_G hG hp
  have hGe : G guestC (HR σ) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree Hooks.guestHooksR_lawful s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := (ptrsOf_congr rfl).trans hp
  have hJe : JrNZ (callEntryStateHOLFinite s callee) := jrNZ_congr (s := s) rfl hJ
  obtain ⟨⟨e, he, hes⟩, ⟨c, hc, hcs⟩⟩ := hE
  have hQ := hR v rfl Γ q hGe hpe hJe ⟨e, he, hes⟩ ⟨c, hc, hcs⟩
  obtain ⟨Γ', p', hrun, hstep, hts⟩ := ptRun_of_qfin' (s0 := s) (s0' := callEntryStateHOLFinite s callee)
    hord rfl rfl hp hQ
  have hrun' : PtRun noD Γ s q Γ' { st with locals := s.locals } p' := ptRun_loc hrun s.locals st.clock
  have gobj_pre' : ∀ {g : MlS} {ty : Nat}, (∃ w, gword s g = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = ty) →
      ptW.contains g = false → (Fct.gobj g ty).holds q Γ' p' { st with locals := s.locals } :=
    fun h hw => gobj_pre (E := pucE Γ s q) h hw hrun' q
  refine ⟨rfl, ⟨noD, Γ', p', hrun', fun a ha => absurd rfl ha, ?_⟩, ?_⟩
  · intro f hf
    rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact gobj_pre' hB.gbs (by decide)
    · exact gobj_pre' hB.gba (by decide)
    · exact gobj_pre' hB.gbk (by decide)
    · exact gobj_pre' hB.gbi (by decide)
    · exact gobj_pre' hB.gbs2 (by decide)
    · exact gobj_pre' hB.gsk (by decide)
    · exact hts
    · obtain ⟨o, ho, hb, ht⟩ := hvo
      obtain ⟨o', ho', hb', ht', hs'⟩ := hstep.ext o ho
      exact ⟨o', ho', hb'.trans hb, ht'.trans ht, Nat.zero_le _⟩
    · -- the target buffer
      refine ⟨bufOK_step hord (ordered_of_G hstep.hG' hstep.hp') hstep.mono hstep.ext hstep.nf hT, ?_⟩
      intro x hx
      rcases hT x hx with ⟨o, ho, k, hk, -, rfl⟩ | ⟨-, hal⟩
      · obtain ⟨o', ho', hb, ht', hs'⟩ := hstep.ext o ho
        refine Or.inl ?_
        have hk' : o'.HasSlot k := by unfold Obj.HasSlot at hk ⊢; omega
        have hLay : Layout guestC p' Γ' := by
          obtain ⟨q', hq', -, hL', -⟩ := ptRun_G hrun'
          obtain rfl : q' = p' := Option.some.inj (hq'.symm.trans hstep.hp')
          exact hL'
        have := cell_in (ordered_of_G hstep.hG' hstep.hp') hLay ho' hk'
        have e1 : o'.cell k = o.cell k := by unfold Obj.cell; rw [hb]
        rw [e1] at this
        exact this
      · exact Or.inr hal
    · exact hN
    · have hL : Layout guestC q Γ := by
        obtain ⟨q', hq', -, hL, -⟩ := hG
        rwa [Option.some.inj (hq'.symm.trans hp)] at hL
      exact bufOK_ne_zero hord hL hT
  · intro x v h
    unfold PuEn0 at h
    split_ifs at h with h1 h2 h3
    · cases h; subst h1; exact hl.1
    · cases h; subst h2; exact hl.2.1
    · cases h; subst h3; exact hl.2.2

end InitECandidate.Solver.MemSafe.Puc
