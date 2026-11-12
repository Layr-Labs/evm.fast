import InitECandidate.Solver.MemSafe.Puc.Front

/-!
# Puc U6: the tail (`incorporate_tx_into_block`, the return-data copy, the releases)

The tail runs on `TlS` (F3's tail kit, `Ptx/PtT1.lean`) from an anchor `A` (heap-only typing after the call, state `A.s0`),
with the kept cells `Zt A out`: all `prot` cells of block-type objects of the anchor typing except `out[MCO_RETDATA]`
(the one cell the tail writes).
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

/-- The reference valuation of the tail: the anchor's memory. -/
def refA (A : TlA σ) : BitVec 64 → BitVec 64 := fun a => rd A.s0.memory a

/-- The kept cells: block `prot` cells of the anchor typing except `out[40]`. -/
def Zt (A : TlA σ) (out : BitVec 64) (a : BitVec 64) : Prop :=
  (∃ o ∈ A.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ (guestC.ty o.ty).slot k = .prot ∧ a = o.cell k) ∧
    a ≠ out + BitVec.ofNat 64 40

/-- The tracked locals: `out`. -/
def EnO (out : BitVec 64) : Env := fun x => if x = nm "out" then some (.val (.word out)) else none

/-- What the tail needs of its anchor. -/
structure TPre (A : TlA σ) (out : BitVec 64) : Prop where
  heap0 : ∀ o ∈ A.Γ0, (guestC.ty o.ty).region = .heap
  own0 : OwnerHeap A.Γ0
  outO : ∃ o ∈ A.Γ0, o.base = out ∧ o.ty = tMCO ∧ 96 ≤ o.size
  gbs : GObj A.Γ0 A.s0 (nm "bs") tBS
  gba : GObj A.Γ0 A.s0 (nm "bal_accounts") tHTd20
  gbk : GObj A.Γ0 A.s0 (nm "bal_key_buf") tB64
  gbi : GObj A.Γ0 A.s0 (nm "bal_idx_accts") tHTh28
  gbs2 : GObj A.Γ0 A.s0 (nm "bal_idx_stor") tHTh60
  gsk : GObj A.Γ0 A.s0 (nm "sk_buf") tB64
  ts : GObj A.Γ0 A.s0 nmTs tTS
  mv : rd A.s0.memory (out + BitVec.ofNat 64 80) ≠ 0 →
    MarkVals (rd A.s0.memory (out + BitVec.ofNat 64 80)) (rd A.s0.memory (out + BitVec.ofNat 64 88))
  b48 : (rd A.s0.memory (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32
  noY : ∀ a, ¬ A.Y a

/-- The post of the tail. -/
def TEnd (A : TlA σ) (out : BitVec 64) (t : State σ) : Prop :=
  ∃ Γ' : Gam, G guestC (HR σ) Γ' t ∧ OwnerHeap Γ' ∧ KeepH guestC A.Γ0 Γ' A.s0 t ∧
    (∀ a, Zt A out a → rd t.memory a = rd A.s0.memory a) ∧
    (∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) ∧ (∃ c, gword t nmCC = some c ∧ c.toNat < nullMax) ∧
    JrNZ t ∧ (∃ o ∈ Γ', o.base = out ∧ o.ty = tMCO) ∧ (rd t.memory (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32 ∧
    (∃ w, gword t nmTs = some w ∧ ∃ o ∈ Γ', o.base = w ∧ o.ty = tTS)

theorem tEnd_loc {A : TlA σ} {out : BitVec 64} {t : State σ} (h : TEnd A out t) (l : Locs) (c : Nat) :
    TEnd A out { t with locals := l, clock := c } := by
  obtain ⟨Γ', hG, hO, hK, hz, hev, hcc, hj, ho, h48, hts⟩ := h
  refine ⟨Γ', (G_locFree Hooks.guestHooksR_lawful t l c).mpr hG, hO, hK, hz, hev, hcc,
    jrNZ_congr (s := t) rfl hj, ho, h48, hts⟩

/-! ## Facts about the anchor -/

theorem zt_out {A : TlA σ} {out : BitVec 64} (P : TPre A out) {off : Nat} (ho8 : off % 8 = 0) (hoN : off + 8 ≤ 96)
    (hne : off ≠ 40) : Zt A out (out + BitVec.ofNat 64 off) := by
  obtain ⟨o, ho, hb, ht, hs⟩ := P.outO
  have hk : o.HasSlot (off / 8) := by unfold Obj.HasSlot; omega
  have hcell : out + BitVec.ofNat 64 off = o.cell (off / 8) := by
    unfold Obj.cell; rw [hb]; congr 2; omega
  have hbk : o.ty ∈ bkTys := by rw [ht]; simp [bkTys, blockTys]
  refine ⟨⟨o, ho, hbk, off / 8, hk, ?_, hcell⟩, ?_⟩
  · exact slot_block (by rw [ht]; simp [blockTys]) _
  · exact bv_off_ne (by omega) (by omega) hne

theorem tl_gf' {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ}
    {Γ : Gam} {p : Ptrs} (h : TlS A ref Z O u Γ p) {g : MlS} {ty : Nat} (hg : GObj A.Γ0 A.s0 g ty)
    (hc : cW.contains g = false) : Bal.GF g ty Γ u := by
  obtain ⟨w, hw, o, ho, hb, ht⟩ := hg
  obtain ⟨o', ho', hb', ht', -⟩ := h.ext o ho
  refine ⟨w, ?_, o', ho', hb'.trans hb, ht'.trans ht⟩
  unfold gword at hw ⊢
  rw [h.glob g hc]; exact hw

/-- **`incorporate_tx_into_block()`** keeps the run when the kept cells are block cells only. -/
theorem hn_incorp' {A : TlA σ} {out : BitVec 64} {En : Env} (P : TPre A out) (hgs : Bal.HGS σ) :
    HN (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) (callD (nm "incorporate_tx_into_block") [])
      (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) := by
  refine hoare_callD ((sumSpecA_relX (Bal.sumSpec_incorporate_tx_into_block hgs)).and
    (funSpec_pt_gw_all guestCtx_code incorp_fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hvs' : vs = [] := by rw [evs_nil] at hvs; exact (Option.some.inj hvs).symm
  subst hvs'
  have hre : TlS A (refA A) (Zt A out) ([] : List Obj) (callEntryStateHOLFinite s callee) Γ p := tl_loc hr callee (s.clock - 1)
  have hpre : Bal.UbPre ([] : List (ValueHOL 64)) (callEntryStateHOLFinite s callee) Γ :=
    ⟨rfl, tl_gf' hre P.gbs (by decide), tl_gf' hre P.ts (by decide), tl_gf' hre P.gba (by decide),
      tl_gf' hre P.gbk (by decide), tl_gf' hre P.gbi (by decide), tl_gf' hre P.gbs2 (by decide),
      tl_gf' hre P.gsk (by decide)⟩
  have hBC : ∀ a, Zt A out a → ∃ o ∈ A.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k :=
    fun a ha => by
      obtain ⟨o, ho, hot, k, hk, -, he⟩ := ha.1
      exact ⟨o, ho, hot, k, hk, he⟩
  obtain ⟨Γ', p', hc, hrun, -⟩ := tl_call_core2 (Pre := Bal.UbPre) (PWx := fun _ s Γ a => Bal.IcPW s Γ a) hR hgl
    (by simp [Bal.biSig]) (by simp [JrOut, Bal.biSig])
    (fun a ha hw => z_not_icpw hre (bc_ext hre hr.ext hBC) ha hw) hr
    (argsOK_anys (by simp [Bal.biSig]) rfl) (fun a _ => P.noY a) hpre
  exact ⟨rfl, ⟨Γ', p', hrun⟩, hlk⟩

end InitECandidate.Solver.MemSafe.Puc
