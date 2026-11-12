import InitECandidate.Solver.MemSafe.Trie.Forget
import InitECandidate.Solver.MemSafe.Ptx.PtGw
import InitECandidate.Solver.MemSafe.Bal.GlobKit

/-!
# F3d: the ghost world of `state_fresh_tx` (the global `ts` is a fresh, not yet typed block)

`gz u`: `u` with the global `ts` set to the word 0 (a valid `nptr`). The callees of `state_fresh_tx` (`htab_new`, `alloc`, `memzero`) read
and write no `ts`: `ghost_fs` turns a `FunSpec` of such a callee (proved under `G`) into one that holds at every state, about the run
from the ghost state, related to the real run by `GrRel`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

abbrev nmTs : MlS := nm "ts"

def gz (u : State σ) : State σ := { u with globals := u.globals.update (nmTs, .val (.word 0)) }

def tsFns : EntryList :=
  [fnEntry Guest.Software.guestFn_htab_new, fnEntry Guest.Software.guestFn_alloc,
   fnEntry Guest.Software.guestFn_memzero, fnEntry Guest.Software.guestFn_trap_with]

theorem tsFns_valid : ∀ e ∈ tsFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [tsFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 128) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 17) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by decide)) ⟨_, rfl⟩

theorem tsFns_gr : tsFns.all (fun e => Trie.grFreeB [nmTs] (tsFns.map Prod.fst) e.2.2.1) = true := by
  conv => lhs; cbv

theorem grClosed_ts : Trie.GrClosed [nmTs] (tsFns.map Prod.fst) guestCode :=
  closed_of_entries (chk := Trie.grFreeB [nmTs]) tsFns_valid tsFns_gr

theorem gz_inCtx {u : State σ} {X : Ctx 64} (h : InCtx u X) : InCtx (gz u) X := h

theorem grRel_gz (u : State σ) : Trie.GrRel [nmTs] (gz u) u := by
  refine ⟨u.globals, rfl, fun g hg => ?_⟩
  have hne : nmTs ≠ g := fun e => hg (by simp [e])
  show u.globals.lookup g = (u.globals.update (nmTs, .val (.word 0))).lookup g
  simp [HolFiniteMapExact.update, FUPDATE, hne]

/-- **A callee that never touches `ts`, at every state:** the run from the ghost state is the run from the real one, up to `ts`. -/
theorem ghost_fs {f : MlS} (hf : (tsFns.map Prod.fst).contains f = true)
    {R0 : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (h0 : FunSpec σ guestCtx f R0) :
    FunSpec σ guestCtx f (fun vs e r t => ∃ t0, R0 vs (gz e) r t0 ∧ Trie.GrRel [nmTs] t0 t) := by
  intro vs body callee rs hl e he hloc r hr
  have hl' := hl
  rw [guestCtx_code] at hl'
  have hbody : Trie.grFreeB [nmTs] (tsFns.map Prod.fst) body = true := by
    obtain ⟨ps, hps⟩ := lookupCode_some' hl'
    exact grClosed_ts f hf ps body rs hps
  have hc : (gz e).code.lookup = guestCode := by
    have : (gz e).code = guestCtx.code := he.1
    rw [this]; exact guestCtx_code
  obtain ⟨hres, hrel⟩ := Trie.gr_preserved grClosed_ts body (gz e) e hbody hc (grRel_gz e)
  have hr0 : (evaluateHOLFiniteState (gz e) body).1 = some r := by rw [← hres]; exact hr
  have := h0 vs body callee rs hl (gz e) (gz_inCtx he) hloc r hr0
  exact ⟨_, this, hrel⟩



theorem gt_ts : Types.guestC.GT.lookup nmTs = some (.nptr tTS) := by decide
theorem ts_notPG : nmTs ∉ Types.guestC.PG := by decide

/-- `G` holds with `ts` nulled. -/
theorem G_gz {Γ : Gam} {u : State σ} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) :
    G guestC (Hooks.guestHooksR (σ := σ)) Γ (gz u) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  obtain ⟨p, hp, -⟩ := id hG
  have := Bal.trk_gset (PW := fun _ => False) (Γ0 := Γ) (s0 := u) (p0 := p) hF.hH hA
    (Struct.trk_refl hG hp) gt_ts (w := 0) (Or.inl (by unfold nullMax; decide)) ts_notPG
  obtain ⟨p', -, -, -, -, hG', -⟩ := this
  exact hG'

theorem ptrsOf_gz (u : State σ) : ptrsOf (gz u) = ptrsOf u := by
  unfold ptrsOf gword gz
  have h1 : gHeap ≠ nmTs := by decide
  have h2 : gFrame ≠ nmTs := by decide
  have h3 : gScratch ≠ nmTs := by decide
  simp [HolFiniteMapExact.update, FUPDATE, h1, h2, h3, Ne.symm h1, Ne.symm h2, Ne.symm h3]

theorem gz_lookup (u : State σ) (g : MlS) (h : g ≠ nmTs) : (gz u).globals.lookup g = u.globals.lookup g := by
  show (u.globals.update (nmTs, .val (.word 0))).lookup g = _
  simp [HolFiniteMapExact.update, FUPDATE, Ne.symm h]

theorem gz_lookup_ts (u : State σ) : (gz u).globals.lookup nmTs = some (.val (.word 0)) := by
  show (u.globals.update (nmTs, .val (.word 0))).lookup nmTs = _
  simp [HolFiniteMapExact.update, FUPDATE]

end InitECandidate.Solver.MemSafe.Ptx
