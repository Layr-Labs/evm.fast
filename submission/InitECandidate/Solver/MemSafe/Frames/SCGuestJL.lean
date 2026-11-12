import InitECandidate.Solver.MemSafe.Frames.SCGuestT
import InitECandidate.Solver.MemSafe.Frames.BundleJ
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# `start_child` for `guestHooksR` from the merged fold table (frames7)

Main's fold merge (`MemSafe/ShardsJL/`) accepts `destroy_storage` (`ShardsJL.tab26[403]`) and
`increment_nonce` (`[396]`). Their capabilities are the eight all-cells table-type capabilities,
the journal (`⟨journal, tJOURNAL, [], true⟩`) and the scratch key buffer
(`⟨sk_buf, tB64, [], false⟩`); `JrNZ` (now covering `journal` and `sk_buf`) gives their `ReqOK`
(`reqOK_jrs`).

* `tabJL_guestR`: `ShardsJL.tab26` is sound for `guestHooksR` in the challenge context.
* **`stSum_ds`**, **`stSum_inc`**: the two state-object summaries `start_child` needs.
* **`sc_sumSpecT_guestR2`**: `start_child`'s summary with `destroy_storage` /
  `increment_nonce` discharged (open: `frame_start`'s summary and `NoEvm`).
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- The merged table is sound for the final hook family in the challenge context. -/
theorem tabJL_guestR : CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26 :=
  tab26_guestR

/-- `destroy_storage`'s capabilities in `ShardsJL.tab26`. -/
def dsCaps : List Cap :=
  [⟨nm "sk_buf", 24, [], false⟩, ⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩,
    ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩, ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩,
    ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩, ⟨nm "journal", 9, [], true⟩]

/-- `increment_nonce`'s capabilities in `ShardsJL.tab26`. -/
def incCaps : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩,
    ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩,
    ⟨nm "journal", 9, [], true⟩, ⟨nm "sk_buf", 24, [], false⟩]

theorem dsCaps_g : ∀ c ∈ dsCaps, c.g ≠ anyG →
    (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64) := by decide

theorem incCaps_g : ∀ c ∈ incCaps, c.g ≠ anyG →
    (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64) := by decide

theorem dsCaps_st : ∀ c ∈ dsCaps, c.ks = [] ∧ (c.all = true → guestSt c.t = true) := by decide

theorem incCaps_st : ∀ c ∈ incCaps, c.ks = [] ∧ (c.all = true → guestSt c.t = true) := by decide

/-- **`destroy_storage` as a state-object summary** (`ShardsJL.tab26[403]`). -/
theorem stSum_ds :
    StSum σ guestCtx guestC Hooks.guestHooksR guestSt (nm "destroy_storage") (sgB [Hooks.gJn]) := by
  have hc : CSumm σ guestCtx guestC Hooks.guestHooksR (nm "destroy_storage")
      ⟨[.any], [], [nm "journal_n"], true⟩ dsCaps :=
    ctab% tabJL_guestR
  exact sumSpecA_any_buf (stSum_of_csumm (St := guestSt) hc
    (Shards.fptab_sound (Rec.foldOK_guestR (σ := σ)).hX _ (by decide_cbv))
    (fun _ _ hG hJ => reqOK_jrs dsCaps_g hG hJ) dsCaps_st guestSt_own)

/-- **`increment_nonce` as a state-object summary** (`ShardsJL.tab26[396]`). -/
theorem stSum_inc :
    StSum σ guestCtx guestC Hooks.guestHooksR guestSt (nm "increment_nonce") (sgB [Hooks.gJn]) := by
  have hc : CSumm σ guestCtx guestC Hooks.guestHooksR (nm "increment_nonce")
      ⟨[.buf 20], [], [nm "journal_n"], true⟩ incCaps :=
    ctab% tabJL_guestR
  exact stSum_of_csumm (St := guestSt) hc
    (Shards.fptab_sound (Rec.foldOK_guestR (σ := σ)).hX _ (by decide_cbv))
    (fun _ _ hG hJ => reqOK_jrs incCaps_g hG hJ) incCaps_st guestSt_own

/-- **`start_child`'s summary for `guestHooksR`**, with `destroy_storage` / `increment_nonce`
from the merged table. Open: `frame_start`'s footprint-free summary and its `NoEvm` fact. -/
theorem sc_sumSpecT_guestR2 {M : Nat} {gwS : List MlS} (hgJS : JrOut gwS)
    (hfst : SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "frame_start") (sg0 gwS)
      (PreInvX guestC tEV tCK (fun _ _ _ _ => True) (fun _ _ _ _ => True) M)
      (QLeX guestC tEV tCK (fun _ _ _ _ => True) (fun _ _ _ _ => True)))
    (hfsE : NoEvm σ guestCtx (nm "frame_start")) :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "start_child") (sgSC ([Hooks.gJn] ++ [] ++ gwS))
      (PreSCT guestC guestSt tEV tCK M NewPreG) (QSC guestC tEV tCK) :=
  sc_sumSpecT_guestR stSum_ds stSum_inc hgJS hfst hfsE

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.stSum_ds
#print axioms InitECandidate.Solver.MemSafe.Frames.stSum_inc
#print axioms InitECandidate.Solver.MemSafe.Frames.sc_sumSpecT_guestR2
