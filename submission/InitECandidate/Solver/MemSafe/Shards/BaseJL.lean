import InitECandidate.Solver.MemSafe.Shards.BaseW
import InitECandidate.Solver.MemSafe.HtabEntries.JL
import InitECandidate.Solver.MemSafe.HtabEntries.Del
import InitECandidate.Solver.MemSafe.HtabEntries.AcctCopy
import InitECandidate.Solver.MemSafe.HtabEntries.LstNewScratchL
import InitECandidate.Solver.MemSafe.HtabEntries.LstNewHL
import InitECandidate.Solver.MemSafe.HtabEntries.LstPush
import InitECandidate.Solver.MemSafe.Hooks.List

/-!
# The fold's base table for the final hook family `guestHooksJL`

`baseJLTab` is `baseWTab` plus the hand-proved entries that hold for `guestHooksJL`:
* `state_restore` (`csumm_state_restoreL`);
* `jset` / `jdel` (`jsetTab`, `jdelTab` at `guestHooksJL`);
* the general-key `htab_del` (`delTab`) and `acct_copy` (`acctCopyTab`);
* the lists: heap `lst_new` at `(tLSTh, 1)` and `(tLSTh, 16)`, `lst_new_scratch` (`[.eq 8, .eq 4]`)
  and `lst_push` (`lstPushTab`).

The generated fold (`Tabs`, `ShardNN`, `All`) runs on this base. Nothing outside `Shards/` and
`Wire/` imports it, so regenerating the fold leaves the frame proofs alone.
-/

namespace InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-- `state_restore`'s entry. -/
def srTab : CTab := [(nm "state_restore", srSig, srCaps)]

theorem srTab_sound (hF : FoldOK σ X guestC guestHooksJL) :
    CTabSound σ X guestC guestHooksJL srTab := by
  intro f sg cs hm
  simp only [srTab, List.mem_cons, List.not_mem_nil, or_false, Prod.mk.injEq] at hm
  obtain ⟨rfl, rfl, rfl⟩ := hm
  exact csumm_state_restoreL hF

/-- The guest's heap `lst_new` instances: element size 8, capacities 1 and 16. -/
def lnCs : List (Nat × Nat) := [(tLSTh, 1), (tLSTh, 16)]

/-- The hand-proved entries for `guestHooksJL`. -/
def jlEntries : CTab :=
  srTab ++ jsetTab ++ jdelTab ++ delTab ++ acctCopyTab ++ lstNewTabL lnCs ++ lstNewScratchTabL ++
    lstPushTab

theorem jlEntries_sound (hF : FoldOK σ X guestC guestHooksJL) :
    CTabSound σ X guestC guestHooksJL jlEntries := by
  unfold jlEntries
  refine ctabSound_append (ctabSound_append (ctabSound_append (ctabSound_append
    (ctabSound_append (ctabSound_append (ctabSound_append (srTab_sound hF) (jsetTabL_sound hF))
      (jdelTabL_sound hF)) (delTab_sound hF htabHooks_guestJL)) (acctCopyTab_sound hF))
    (lstNewTabL_sound hF guestHooksJL_mono lstHooks_guestJL (by decide)))
    (lstNewScratchTabL_sound hF guestHooksJL_mono lstHooks_guestJL))
    (lstPushTab_sound hF guestHooksJL_mono lstHooks_guestJL)

/-- **The base table for `guestHooksJL`.** -/
def baseJLTab : CTab := jlEntries ++ baseWTab

theorem baseJLTab_sound (hF : FoldOK σ X guestC guestHooksJL) (hDL : DomLow X) :
    CTabSound σ X guestC guestHooksJL baseJLTab :=
  ctabSound_append (jlEntries_sound hF)
    (baseWTab_sound hF guestHooksJL_guest htabHooks_guestJL hDL)

end InitECandidate.Solver.MemSafe.Shards

#print axioms InitECandidate.Solver.MemSafe.Shards.baseJLTab_sound
