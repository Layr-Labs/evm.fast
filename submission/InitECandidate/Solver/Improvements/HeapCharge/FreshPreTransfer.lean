import InitECandidate.Solver.Improvements.HeapCharge.HeapEntryBuffers
import InitECandidate.Solver.MemSafe.Eb.Adapt

set_option autoImplicit false
set_option maxRecDepth 100000

namespace FreshPreTransfer
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem ext_filtered {E : PtE σ} {Γ u p} (hr : PtRun noD E.Γ0 E.s0 E.p0 Γ u p)
    (hc : Eb.CPre E.Γ0) : Ext E.Γ0 (Eb.keepG Γ) := by
  intro o ho
  obtain ⟨o', ho', hb, ht, hs⟩ := ptRun_ext hr _ ho
  exact ⟨o', Eb.mem_keepG.mpr ⟨ho', ht ▸ Eb.keepTy_of_cpre hc ho⟩, hb, ht, hs⟩

private theorem obj {Γ Γ' : Gam} (e : Ext Γ Γ') {b ty}
    (h : ∃ o ∈ Γ, o.base = b ∧ o.ty = ty) : ∃ o ∈ Γ', o.base = b ∧ o.ty = ty := by
  obtain ⟨o, ho, hb, ht⟩ := h
  obtain ⟨o', ho', hb', ht', -⟩ := e o ho
  exact ⟨o', ho', hb'.trans hb, ht'.trans ht⟩

private theorem sized {Γ Γ' : Gam} (e : Ext Γ Γ') {b ty n}
    (h : ∃ o ∈ Γ, o.base = b ∧ o.ty = ty ∧ n ≤ o.size) :
    ∃ o ∈ Γ', o.base = b ∧ o.ty = ty ∧ n ≤ o.size := by
  obtain ⟨o, ho, hb, ht, hn⟩ := h
  obtain ⟨o', ho', hb', ht', hn'⟩ := e o ho
  exact ⟨o', ho', hb'.trans hb, ht'.trans ht, hn.trans hn'⟩

theorem pre_after {E : PtE σ} (hp : PtPreX E) (hc : Eb.CPre E.Γ0)
    {M : Nat} (hM : 2 ^ 24 + 2 ≤ M)
    (coin : heapBase ≤ (rd E.s0.memory (E.be + 32)).toNat ∧
      (rd E.s0.memory (E.be + 32)).toNat + 20 ≤ heapEnd)
    {Γ u p} (hr : PtRun noD E.Γ0 E.s0 E.p0 Γ u p) :
    G guestC (HR σ) (Eb.keepG Γ) u ∧
    PtPreD2 M (Eb.keepG Γ) u p E.tx E.idx E.bo E.be E.txs E.rcs := by
  have P := hp.toPtPre
  have hd : ∀ a, (noD a) ≠ none → E.WSet a := fun _ h => absurd rfl h
  have ex := ext_filtered hr hc
  have hev := hr.2.2.2.2.2.2.2.2.2.1
  have hcc := hr.2.2.2.2.2.2.2.2.2.2.1
  obtain ⟨hG, hO⟩ := G_keepOwnerHeap (ptRun_G hr) hev hcc
  have gkeep (g : MlS) (hg : ptW.contains g = false) : gword u g = gword E.s0 g := by
    unfold gword
    rw [ptRun_glob hr hg]
  have gobj (g : MlS) (ty : Nat) (hg : ptW.contains g = false)
      (h : GObj E.Γ0 E.s0 g ty) : GObj (Eb.keepG Γ) u g ty := by
    obtain ⟨w, hw, hobj⟩ := h
    exact ⟨w, (gkeep g hg).trans hw, obj ex hobj⟩
  have r40 : rd u.memory (E.bo + 40) = rd E.s0.memory (E.bo + 40) :=
    rd_bo P hr hd (j := 5) (by decide) (by decide) (by decide) (by decide) (by decide)
  have r72 : rd u.memory (E.bo + 72) = rd E.s0.memory (E.bo + 72) :=
    rd_bo P hr hd (j := 9) (by decide) (by decide) (by decide) (by decide) (by decide)
  have rcoin : rd u.memory (E.be + 32) = rd E.s0.memory (E.be + 32) :=
    rd_be hp hr hd (off := 32) (by decide) (by decide)
  have txG := HeapEntryBuffers.tx_after P hc.1 hr
  have bcG : BufOK guestC (Eb.keepG Γ) (gp0 p) (rd u.memory (E.be + 32)).toNat 20 := by
    rw [rcoin]
    exact HeapEntryBuffers.buf_after P hc.1 hr P.beCoin
  have ord := ptRun_ord hr
  refine ⟨hG, ⟨⟨ptRun_ptrs hr, ptRun_jr hr, hev, hcc, hM, obj ex P.tx, ?_,
    (gkeep _ (by decide)).trans P.hbo, obj ex P.boObj, rd_bo24 P hr hd, sized ex P.txsObj,
    rd_bo32 P hr hd, sized ex P.rcsObj, r40 ▸ obj ex P.logsObj, r72 ▸ obj ex P.rlogsObj,
    (gkeep _ (by decide)).trans P.hbe, sized ex P.beObj, Eb.bufOK_of_gp0 ord bcG,
    hp.dis1, hp.dis2, hp.dis3, gobj _ _ (by decide) P.gbs, gobj _ _ (by decide) P.gba,
    gobj _ _ (by decide) P.gbk, gobj _ _ (by decide) P.gbi, gobj _ _ (by decide) P.gbs2,
    gobj _ _ (by decide) P.gsk⟩, hO, rcoin ▸ coin, txG, bcG⟩⟩
  exact ⟨txG.1.imp id (fun h => Eb.bufOK_of_gp0 ord h),
    fun i hi => Eb.bufOK_of_gp0 ord (txG.2 i hi)⟩

#print axioms pre_after
end FreshPreTransfer
