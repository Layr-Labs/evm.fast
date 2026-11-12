import InitECandidate.Solver.MemSafe.Ptx.PtT24
import InitECandidate.Solver.MemSafe.Bal.Ub9

/-!
# F3g: `incorporate_tx_into_block()` in the tail
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
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem incorp_fin : ptAllNames.contains (nm "incorporate_tx_into_block") = true := by decide_cbv

theorem icc_not_block : ∀ c ∈ Bal.icc, c.t ∉ bkTys ∧ c.t < ownBase := by decide +kernel
theorem block_lt_own : ∀ t ∈ blockTys, t < ownBase := by decide

section inc
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam}
  {p : Ptrs}

/-- Block cells are not in the footprint of `incorporate_tx_into_block`. -/
theorem z_not_icpw (h : TlS A ref Z O u Γ p)
    (hB : ∀ a, Z a → ∃ o ∈ Γ, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k) {a : BitVec 64} (ha : Z a) :
    ¬ Bal.IcPW u Γ a := by
  obtain ⟨o, ho, hot, k, hk, rfl⟩ := hB a ha
  have hord := tl_ord h
  have hLay := tl_layout h
  rintro (⟨c, hc, ⟨e, -, k', hk', -⟩ | ⟨-, e, he, hty, k', hk', hce⟩⟩ | hLa)
  · rw [(Bal.icc_ks c hc)] at hk'; cases hk'
  · obtain ⟨rfl, -⟩ := cell_inj hord hLay ho he hk hk' hce
    obtain ⟨hc1, hc2⟩ := icc_not_block c hc
    rcases hty with h1 | h1
    · exact hc1 (h1 ▸ hot)
    · exact absurd (bk_lt_own hot) (not_lt.mpr h1)
  · rcases hLa with ⟨L, hL, hLt, hlc⟩ | ⟨y, hy, hyt, k', hk', hyc⟩
    · exact z_not_lcell h hB hL hLt ha hlc
    · obtain ⟨rfl, -⟩ := cell_inj hord hLay ho hy hk hk' hyc
      exact lstA_not_block hyt hot

/-- A typed global of the anchor stays a typed global. -/
theorem tl_gf {K : TlCtx σ} (h : TlS K.A ref Z O u Γ p) {g : MlS} {ty : Nat} (hg : GObj K.E.Γ0 K.E.s0 g ty)
    (hc : cW.contains g = false) : Bal.GF g ty Γ u := by
  obtain ⟨w, hw, o, ho, hb, ht⟩ := hg
  obtain ⟨o', ho', hb', ht', -⟩ := h.ext o ho
  refine ⟨w, ?_, o', ho', hb'.trans hb, ht'.trans ht⟩
  unfold gword at hw ⊢
  rw [h.glob g hc]; exact hw

theorem enT0_dummy : True := trivial

/-- **`incorporate_tx_into_block()`** keeps the run when the kept cells are block cells only. -/
theorem hn_incorp {K : TlCtx σ} {En : Env} (hP : TlPre K) (hgs : Bal.HGS σ)
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k) :
    HN (PAg (TL K.A ref Z O) En) (callD (nm "incorporate_tx_into_block") []) (PAg (TL K.A ref Z O) En) := by
  refine hoare_callD ((sumSpecA_relX (Bal.sumSpec_incorporate_tx_into_block hgs)).and
    (funSpec_pt_gw_all guestCtx_code incorp_fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hvs' : vs = [] := by rw [evs_nil] at hvs; exact (Option.some.inj hvs).symm
  subst hvs'
  have hre : TlS K.A ref Z O (callEntryStateHOLFinite s callee) Γ p := tl_loc hr callee (s.clock - 1)
  have hpre : Bal.UbPre ([] : List (ValueHOL 64)) (callEntryStateHOLFinite s callee) Γ :=
    ⟨rfl, tl_gf hre hP.B.gbs (by decide), tl_gf hre hP.ts (by decide), tl_gf hre hP.B.gba (by decide),
      tl_gf hre hP.B.gbk (by decide), tl_gf hre hP.B.gbi (by decide), tl_gf hre hP.B.gbs2 (by decide),
      tl_gf hre hP.B.gsk (by decide)⟩
  obtain ⟨Γ', p', hc, hrun, -⟩ := tl_call_core2 (Pre := Bal.UbPre) (PWx := fun _ s Γ a => Bal.IcPW s Γ a) hR hgl
    (by simp [Bal.biSig]) (by simp [JrOut, Bal.biSig])
    (fun a ha hw => z_not_icpw hre (bc_ext hre hr.ext hBC) ha hw) hr
    (argsOK_anys (by simp [Bal.biSig]) rfl) (argCells_any _ (by simp [Bal.biSig])) hpre
  exact ⟨rfl, ⟨Γ', p', hrun⟩, hlk⟩

end inc

end InitECandidate.Solver.MemSafe.Ptx
