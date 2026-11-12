import InitECandidate.Solver.MemSafe.Shards.BaseJL
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# The fold's base table at the record family `guestHooksR`

`Shards.baseJLTab` (the base the generator `Gen8` runs on) is sound for `guestHooksR` too: every
hand entry is generic in the hook family (`…G` journal entries with `JHooks`, the table and list
entries with `HtabHooks` / `LstHooks` / `HooksMono`), so the port is the instance swap
`…_guestJL ↦ …_guestR`. **`baseJLTab_soundR`**.
-/

namespace InitECandidate.Solver.MemSafe.Rec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

theorem srTab_soundR (hF : FoldOK σ X guestC guestHooksR) :
    CTabSound σ X guestC guestHooksR srTab := by
  intro f sg cs hm
  simp only [srTab, List.mem_cons, List.not_mem_nil, or_false, Prod.mk.injEq] at hm
  obtain ⟨rfl, rfl, rfl⟩ := hm
  exact csumm_state_restoreG jHooks_guestR hF

theorem jlEntries_soundR (hF : FoldOK σ X guestC guestHooksR) :
    CTabSound σ X guestC guestHooksR jlEntries := by
  unfold jlEntries
  refine ctabSound_append (ctabSound_append (ctabSound_append (ctabSound_append
    (ctabSound_append (ctabSound_append (ctabSound_append (srTab_soundR hF)
      (jsetTab_soundG jHooks_guestR hF)) (jdelTab_soundG jHooks_guestR hF))
      (delTab_sound hF htabHooks_guestR)) (acctCopyTab_sound hF))
    (lstNewTabL_sound hF guestHooksR_mono lstHooks_guestR (by decide)))
    (lstNewScratchTabL_sound hF guestHooksR_mono lstHooks_guestR))
    (lstPushTab_sound hF guestHooksR_mono lstHooks_guestR)

/-- **The base table for `guestHooksR`.** -/
theorem baseJLTab_soundR (hF : FoldOK σ X guestC guestHooksR) (hDL : DomLow X) :
    CTabSound σ X guestC guestHooksR baseJLTab :=
  ctabSound_append (jlEntries_soundR hF)
    (baseWTab_sound hF guestHooksR_guest htabHooks_guestR hDL)

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.baseJLTab_soundR
