import InitECandidate.Solver.MemSafe.Ptx.PtA7

/-!
# F3d: entering the walk (`state_fresh_tx`, the initial locals and facts)
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

def En0 (E : PtE σ) : Env := fun x =>
  if x = nm "tx" then some (.val (.word E.tx)) else if x = nm "index" then some (.val (.word E.idx)) else none

/-- The facts at the start of the walk. -/
def S0 (E : PtE σ) : FS := fun f =>
  f = Fct.obj E.tx tTX 0 ∨ f = Fct.gobj (nm "bs") tBS ∨ f = Fct.gobj (nm "bal_accounts") tHTd20 ∨
  f = Fct.gobj (nm "bal_key_buf") tB64 ∨ f = Fct.gobj (nm "bal_idx_accts") tHTh28 ∨
  f = Fct.gobj (nm "bal_idx_stor") tHTh60 ∨ f = Fct.gobj (nm "sk_buf") tB64 ∨ f = Fct.gobj nmTs tTS

theorem gobj_pre {E : PtE σ} {g : MlS} {ty : Nat} (h : GObj E.Γ0 E.s0 g ty) (hw : ptW.contains g = false)
    {D Γ u p} (hr : PtRun D E.Γ0 E.s0 E.p0 Γ u p) (q : Ptrs) :
    (Fct.gobj g ty).holds E.p0 Γ p u := by
  obtain ⟨w, hw', o, ho, hb, ht⟩ := h
  obtain ⟨o', ho', hb', ht', -⟩ := ptRun_ext hr o ho
  refine ⟨w, ?_, o', ho', hb'.trans hb, ht'.trans ht⟩
  unfold gword at hw' ⊢
  rw [ptRun_glob hr hw]; exact hw'

/-- **Entering the walk**: `state_fresh_tx()` from the entry state. -/
theorem pt_enter {E : PtE σ} (hP : PtPre E)
    (hl : E.s0.locals.lookup (nm "tx") = some (.val (.word E.tx)) ∧
      E.s0.locals.lookup (nm "index") = some (.val (.word E.idx))) :
    HN (fun t => t = E.s0) (callD (nm "state_fresh_tx") []) (PA E (En0 E) (S0 E)) := by
  refine hoare_callD sf_spec ?_
  intro s hs hs0 vs hvs callee v st hR hst
  subst hs0
  obtain ⟨q, hq, hqe⟩ := hP.hp
  have hord : q.Ordered := ordered_of_G hP.hG hq
  have hGe : G guestC (HR σ) E.Γ0 (callEntryStateHOLFinite E.s0 callee) :=
    (G_locFree Hooks.guestHooksR_lawful E.s0 _ _).mpr hP.hG
  have hpe : ptrsOf (callEntryStateHOLFinite E.s0 callee) = some q := (ptrsOf_congr rfl).trans hq
  have hJe : JrNZ (callEntryStateHOLFinite E.s0 callee) := jrNZ_congr (s := E.s0) rfl hP.hJ
  obtain ⟨e, he, hes⟩ := hP.hev
  obtain ⟨c, hc, hcs⟩ := hP.hcc
  have hQ := hR v rfl E.Γ0 q hGe hpe hJe ⟨e, he, hes⟩ ⟨c, hc, hcs⟩
  obtain ⟨Γ', p', hrun, hstep, hts⟩ := ptRun_of_qfin (s0 := E.s0) (s0' := callEntryStateHOLFinite E.s0 callee)
    hord rfl rfl hq hQ
  have hrun' : PtRun noD E.Γ0 E.s0 E.p0 Γ' { st with locals := E.s0.locals } p' := by
    rw [hqe]; exact ptRun_loc hrun E.s0.locals st.clock
  refine ⟨rfl, ⟨noD, Γ', p', hrun', fun a ha => absurd rfl ha, ?_⟩, ?_⟩
  · intro f hf
    rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · obtain ⟨o, ho, hb, ht⟩ := hP.tx
      obtain ⟨o', ho', hb', ht', -⟩ := ptRun_ext hrun' o ho
      exact ⟨o', ho', hb'.trans hb, ht'.trans ht, Nat.zero_le _⟩
    · exact gobj_pre hP.gbs (by decide) hrun' q
    · exact gobj_pre hP.gba (by decide) hrun' q
    · exact gobj_pre hP.gbk (by decide) hrun' q
    · exact gobj_pre hP.gbi (by decide) hrun' q
    · exact gobj_pre hP.gbs2 (by decide) hrun' q
    · exact gobj_pre hP.gsk (by decide) hrun' q
    · exact hts
  · intro x v h
    unfold En0 at h
    split_ifs at h with h1 h2
    · cases h; subst h1; exact hl.1
    · cases h; subst h2; exact hl.2

end InitECandidate.Solver.MemSafe.Ptx
