import InitECandidate.Solver.MemSafe.Hooks.Laws
import InitECandidate.Solver.MemSafe.Hooks.Journal
import InitECandidate.Solver.MemSafe.Hooks.List
import InitECandidate.Solver.MemSafe.Helpers.GuestCtx
import InitECandidate.Solver.MemSafe.Fold
import InitECandidate.Solver.MemSafe.Alloc
import InitECandidate.Solver.MemSafe.Types
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.MemSafe.Shards.FpAll

/-!
# Wiring for the challenge context

These are the concrete instances that the memory-safety and frame proofs take as hypotheses,
stated for the challenge context `guestCtx`, the guest type table `guestC` and the concrete
hook family `guestHooks`.

* `foldOK_guest`: the fold's context hypotheses (`FoldOK`).
* `calleeCost_guest`: a callee cost read off the kernel-checked cost table
  (`SourceCost.Shards.finalState`), given its literal lookup.
* `keepsFp_guest`: a "keeps `frame_mem_ptr`" fact read off the table `Shards.fptab26`.
-/

namespace InitECandidate.Solver.MemSafe.Wire
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.SourceCost

/-- The allocator globals are neither typed nor protected in the guest type table. -/
theorem allocCfg_guest : AllocCfg Types.guestC := fun g hg => Types.alloc_untyped g hg

/-- The fold's context hypotheses hold for the challenge context, the guest type table and the
concrete hook family. -/
theorem foldOK_guest {σ : Type} :
    FoldOK σ guestCtx Types.guestC (Hooks.guestHooks (σ := σ)) where
  hH := Hooks.guestHooks_lawful
  hC := Types.cfgOK_guest
  hal := Helpers.alignedDom_guestCtx
  hX := guestCtx_code
  hAC := allocCfg_guest
  hNS := nullSafe_guestCtx

/-- The fold's context hypotheses for the final hook family `guestHooksJ` (the guest hooks plus
the journal hook). Final assembly instantiates every memory-safety statement with it. -/
theorem foldOK_guestJ {σ : Type} :
    FoldOK σ guestCtx Types.guestC (Hooks.guestHooksJ (σ := σ)) where
  hH := Hooks.guestHooksJ_lawful
  hC := Types.cfgOK_guest
  hal := Helpers.alignedDom_guestCtx
  hX := guestCtx_code
  hAC := allocCfg_guest
  hNS := nullSafe_guestCtx

/-- The fold's context hypotheses for the final hook family `guestHooksJL` (guest hooks, the
journal hook and the list hook). -/
theorem foldOK_guestJL {σ : Type} :
    FoldOK σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) where
  hH := Hooks.guestHooksJL_lawful
  hC := Types.cfgOK_guest
  hal := Helpers.alignedDom_guestCtx
  hX := guestCtx_code
  hAC := allocCfg_guest
  hNS := nullSafe_guestCtx

/-- The final table state bounds `f` by at most `B` (a `Bool`, checked by `rfl` / `decide_cbv` at the call sites). Monotone in `B`,
so a literal stays valid when the table entry shrinks. -/
def TbLe (f : MlS) (B : Nat) : Bool :=
  match Shards.finalState.1.lookup f with
  | some b => decide (b ≤ B)
  | none => false

theorem tbLe_of_eq {f : MlS} {B : Nat} (h : Shards.finalState.1.lookup f = some B) : TbLe f B = true := by
  unfold TbLe; rw [h]; exact decide_eq_true (Nat.le_refl B)

/-- A callee cost from the kernel-checked cost table: if the final table state bounds `f` by at most `B`,
every body installed under `f` costs at most `B` ticks in `guestCtx`. -/
theorem calleeCost_guest {σ : Type} {f : MlS} {B : Nat}
    (h : TbLe f B = true) : Spec.CalleeCost σ guestCtx f B := by
  unfold TbLe at h
  split at h
  · rename_i b hb
    have hle : b ≤ B := of_decide_eq_true h
    exact fun vs body callee rs hl =>
      (Spec.calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 hb vs body callee rs hl).mono hle
  · cases h

/-- A "keeps `frame_mem_ptr`" fact from the kernel-checked table `fptab26`, given membership. -/
theorem keepsFp_guest {σ : Type} {f : MlS} (h : f ∈ Shards.fptab26) : KeepsFp σ guestCtx f :=
  Shards.fptab_sound guestCtx_code f h

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.foldOK_guest
#print axioms InitECandidate.Solver.MemSafe.Wire.calleeCost_guest
#print axioms InitECandidate.Solver.MemSafe.Wire.foldOK_guestJ
#print axioms InitECandidate.Solver.MemSafe.Wire.foldOK_guestJL
#print axioms InitECandidate.Solver.MemSafe.Wire.keepsFp_guest
