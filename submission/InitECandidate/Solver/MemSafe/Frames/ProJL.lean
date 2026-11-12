import InitECandidate.Solver.MemSafe.Frames.ProSpec
import InitECandidate.Solver.MemSafe.Frames.StartXJL
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# `frame_prologue`, `frame_start`, `start_child`, `generic_call` for `guestHooksR` (frames10)

**`PreHyps σ`** collects the callee facts this lane takes as hypotheses (decision B1 / F3: a
helper lane proves each field; main wires them). Everything else `frame_prologue` calls comes from
the merged fold table `ShardsJL.tab26` and the `KeepsFp` table `Shards.fptab26`:

* `u256_is_zero` [445], `memeq` [482], `precompile_index` [348]: pure entries (no capabilities);
* `move_ether` [349]: `buf 20` × 2, the journal / `sk_buf` / table capabilities (`incCaps`), whose
  `prot` cells are state cells, so outside every frame / message record (`incCaps_pw`).

Results (open only in `PreHyps`):
* **`pro_sumSpecX_guestR hP`** (`frame_prologue`), **`fst_sumSpecX_guestRh hP`**
  (`frame_start`), **`sc_sumSpecX_guestRh hP`** (`start_child`), **`gc_sumSpecT_guestRh hP`**
  (`generic_call`), all at `gwS = [journal_n]`.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Wire
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- **The callee facts taken as hypotheses in the run_frames lane** (for `guestHooksR` in the
challenge context). Each field is a self-contained statement for the helper lane. -/
structure PreHyps (σ : Type) : Prop where
  /-- **`emit_transfer_log(sender, recipient, amount)`** (`Sigs1` signature `[any, any, any]`,
  no protected globals written): from a state whose running EV record's log list (`EV 88`) is a
  `Γ` list header of element size 8 (`EtlPre`), every good non-abortive result writes `prot`
  cells only outside every EV / CK record and every message object (`PWtopM tEV tCK []`; in fact
  only the log list's header / array: `log_append` → `lst_push`). The two addresses are only
  read (`memcpy` into a fresh `alloc(96)` block). -/
  etl : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "emit_transfer_log")
    (sgA 3 []) EtlPre (PWtopL tEV tCK []) LogQ
  /-- **`run_precompile(idx)`** (`Sigs2` signature `[any]`, no protected globals written): from a
  state with the running EV record, its message (`EV 112`) a `Γ` message object and `JrNZ`
  (`RpPre`), every good non-abortive result writes `prot` cells only in the running EV's gas
  slots `8 / 9 / 23 / 24` or outside every EV / CK record and message object
  (`PWtopM tEV tCK gasKs`; the precompiles' `EV 120` / `EV 128` output stores are scalar
  slots), and does not raise the running frame's `GAS_LEFT + SPILLED` (`RpQ`). -/
  rp : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "run_precompile")
    (sgA 1 []) RpPre (PWtopM tEV tCK gasKs) RpQ

variable {σ : Type}

/-- A cell of a state object is in `PWtopM []`. -/
theorem stCell_pwM {H : Hooks σ} {vs : List (ValueHOL 64)} {Γ : Gam} {s : State σ}
    (hG : G guestC H Γ s) {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k)
    (hst : guestSt o.ty = true) : PWtopM tEV tCK [] vs s Γ (o.cell k) := by
  refine noFrameM_cell hG ho hk ⟨fun h => ?_, fun h => ?_⟩ fun hm => ?_
  · rw [h, guestSt_frames.1] at hst; cases hst
  · rw [h, guestSt_frames.2] at hst; cases hst
  · rw [guestSt_msgTys _ hm] at hst; cases hst

/-- The `prot` cells `move_ether`'s (= `increment_nonce`'s) capabilities allow are in
`PWtopM []`. -/
theorem incCaps_pw {H : Hooks σ} {vs : List (ValueHOL 64)} {Γ : Gam} {s : State σ}
    (hG : G guestC H Γ s) {a : BitVec 64} (hw : CapPW incCaps s Γ a) :
    PWtopM tEV tCK [] vs s Γ a := by
  obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨hall, e, he, hty, k, hks, rfl⟩⟩ := hw
  · rw [(incCaps_st c hc).1] at hk; cases hk
  · refine stCell_pwM hG he hks ?_
    rcases hty with h | h
    · rw [h]; exact (incCaps_st c hc).2 hall
    · exact guestSt_own _ h

/-- **`move_ether` from the merged table** (`ShardsJL.tab26[349]`). -/
theorem me_guestR :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "move_ether") sgME
      (fun _ s _ => JrNZ s) (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True) := by
  have hc : CSumm σ guestCtx guestC Hooks.guestHooksR (nm "move_ether") sgME incCaps :=
    ctab% tabJL_guestR
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hJ
  obtain ⟨Γ', p, p', core, -⟩ := hc vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs
    (reqOK_jrs incCaps_g hG hJ)
  exact ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => ⟨hpc, incCaps_pw hG hw⟩, trivial⟩

/-- **`frame_prologue`'s callee facts for `guestHooksR`**, open only in `PreHyps`. -/
theorem proCallees_guestR (hP : PreHyps σ) : ProCallees σ guestCtx Hooks.guestHooksR where
  z := ctab% tabJL_guestR
  zF := Wire.keepsFp_guest (by decide_cbv)
  me := me_guestR
  meF := Wire.keepsFp_guest (by decide_cbv)
  mq := ctab% tabJL_guestR
  mqF := Wire.keepsFp_guest (by decide_cbv)
  etl := hP.etl
  etlF := Wire.keepsFp_guest (by decide_cbv)
  lstH := Hooks.lstHooks_guestR
  pi := ctab% tabJL_guestR
  piF := Wire.keepsFp_guest (by decide_cbv)
  rp := hP.rp
  rpF := Wire.keepsFp_guest (by decide_cbv)

/-- **`frame_prologue`'s extended summary for `guestHooksR`**, open only in `PreHyps`. -/
theorem pro_sumSpecX_guestR (hP : PreHyps σ) {M : Nat} :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "frame_prologue") (sg0 [Hooks.gJn])
      (PreInvX guestC tEV tCK GP GR M) (QProX guestC tEV tCK GP GR) :=
  pro_sumSpecX guestCtx_code Hooks.frameCfg_guestHooksR (proCallees_guestR hP)

/-- **`frame_start`'s extended summary for `guestHooksR`**, open only in `PreHyps`. -/
theorem fst_sumSpecX_guestRh (hP : PreHyps σ) {M : Nat} :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "frame_start") (sg0 [Hooks.gJn])
      (PreInvX guestC tEV tCK GP GR M) (QLeX guestC tEV tCK GP GR) :=
  fst_sumSpecX_guestR (by decide) (pro_sumSpecX_guestR hP)

/-- **`start_child` for `guestHooksR`**, open only in `PreHyps`. -/
theorem sc_sumSpecX_guestRh (hP : PreHyps σ) {M : Nat} :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "start_child")
      (sgSC ([Hooks.gJn] ++ [] ++ [Hooks.gJn])) (PreSCX guestC guestSt tEV tCK M NewPreG XPG)
      (QSCX guestC tEV tCK GP GR) :=
  sc_sumSpecX_guestRp (by decide) (pro_sumSpecX_guestR hP)

/-- **`generic_call` for `guestHooksR`**, open only in `PreHyps`. -/
theorem gc_sumSpecT_guestRh (hP : PreHyps σ) {M : Nat} :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "generic_call")
      (sgA 16 (nmEv :: nmCC :: ([Hooks.gJn] ++ [] ++ [Hooks.gJn]))) (PreGC M) QGC :=
  gc_sumSpecT_guestRp (by decide) (pro_sumSpecX_guestR hP)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.me_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.proCallees_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.pro_sumSpecX_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.fst_sumSpecX_guestRh
#print axioms InitECandidate.Solver.MemSafe.Frames.sc_sumSpecX_guestRh
#print axioms InitECandidate.Solver.MemSafe.Frames.gc_sumSpecT_guestRh
