import InitECandidate.Solver.MemSafe.Frames.RunFramesCode
import InitECandidate.Solver.MemSafe.Frames.RunFramesGen
import InitECandidate.Solver.MemSafe.Frames.Layout
import InitECandidate.Solver.MemSafe.Frames.Lib0
import InitECandidate.Solver.MemSafe.Frames.Marks
import InitECandidate.Solver.MemSafe.Frames.Chain
import InitECandidate.Solver.MemSafe.Frames.Bundle
import InitECandidate.Solver.MemSafe.Frames.Lib
import InitECandidate.Solver.MemSafe.Frames.GasCode
import InitECandidate.Solver.MemSafe.Frames.Cells
import InitECandidate.Solver.MemSafe.Frames.Exc
import InitECandidate.Solver.MemSafe.Frames.Frame
import InitECandidate.Solver.MemSafe.Frames.Run
import InitECandidate.Solver.MemSafe.Frames.Epi
import InitECandidate.Solver.MemSafe.Frames.Top
import InitECandidate.Solver.MemSafe.Frames.GasSum
import InitECandidate.Solver.MemSafe.Frames.StateGasCode
import InitECandidate.Solver.MemSafe.Frames.StateGas
import InitECandidate.Solver.MemSafe.Frames.StateGasSum
import InitECandidate.Solver.MemSafe.Frames.Assemble
import InitECandidate.Solver.MemSafe.Frames.EvSum
import InitECandidate.Solver.MemSafe.Frames.Start
import InitECandidate.Solver.MemSafe.Frames.Incorporate
import InitECandidate.Solver.MemSafe.Frames.Ctor
import InitECandidate.Solver.MemSafe.Frames.Open
import InitECandidate.Solver.MemSafe.Frames.OpenSpec
import InitECandidate.Solver.MemSafe.Frames.Push
import InitECandidate.Solver.MemSafe.Frames.StartChildDefs
import InitECandidate.Solver.MemSafe.Frames.StartChildLib
import InitECandidate.Solver.MemSafe.Frames.StartChild
import InitECandidate.Solver.MemSafe.Frames.StartChildTail
import InitECandidate.Solver.MemSafe.Frames.StartChildSpec
import InitECandidate.Solver.MemSafe.Frames.Release
import InitECandidate.Solver.MemSafe.Frames.GuestRel
import InitECandidate.Solver.MemSafe.Frames.FinCode
import InitECandidate.Solver.MemSafe.Frames.FinR
import InitECandidate.Solver.MemSafe.Frames.FinA
import InitECandidate.Solver.MemSafe.Frames.FinA2
import InitECandidate.Solver.MemSafe.Frames.FinA4
import InitECandidate.Solver.MemSafe.Frames.FinSw
import InitECandidate.Solver.MemSafe.Frames.FinSpec
import InitECandidate.Solver.MemSafe.Frames.FinJ
import InitECandidate.Solver.MemSafe.Frames.FinCost
import InitECandidate.Solver.MemSafe.Frames.FinRb
import InitECandidate.Solver.MemSafe.Frames.FinGuest
import InitECandidate.Solver.MemSafe.Frames.McWrap
import InitECandidate.Solver.MemSafe.Frames.RetData
import InitECandidate.Solver.MemSafe.Frames.CreateFin
import InitECandidate.Solver.MemSafe.Frames.LstNew
import InitECandidate.Solver.MemSafe.Frames.MzVal
import InitECandidate.Solver.MemSafe.Frames.NewCode
import InitECandidate.Solver.MemSafe.Frames.NewTrk
import InitECandidate.Solver.MemSafe.Frames.NewSpec
import InitECandidate.Solver.MemSafe.Frames.NewGuest
import InitECandidate.Solver.MemSafe.Frames.OpenGuest
import InitECandidate.Solver.MemSafe.Frames.Jr
import InitECandidate.Solver.MemSafe.Frames.BundleJ
import InitECandidate.Solver.MemSafe.Frames.ChildMsg
import InitECandidate.Solver.MemSafe.Frames.SCRunT
import InitECandidate.Solver.MemSafe.Frames.SCStepT
import InitECandidate.Solver.MemSafe.Frames.SCTailT
import InitECandidate.Solver.MemSafe.Frames.SCSpecT
import InitECandidate.Solver.MemSafe.Frames.SCGuestT
import InitECandidate.Solver.MemSafe.Frames.GcLib
import InitECandidate.Solver.MemSafe.Frames.GcCode
import InitECandidate.Solver.MemSafe.Frames.GcDepth
import InitECandidate.Solver.MemSafe.Frames.GcPre
import InitECandidate.Solver.MemSafe.Frames.GcSpec
import InitECandidate.Solver.MemSafe.Frames.ChainX
import InitECandidate.Solver.MemSafe.Frames.ChainXG
import InitECandidate.Solver.MemSafe.Frames.SCGuestJL
import InitECandidate.Solver.MemSafe.Frames.IcsWire
import InitECandidate.Solver.MemSafe.Frames.RunFramesJL
import InitECandidate.Solver.MemSafe.Frames.StartX
import InitECandidate.Solver.MemSafe.Frames.StartXJL
import InitECandidate.Solver.MemSafe.Frames.RootX
import InitECandidate.Solver.MemSafe.Frames.ProCode
import InitECandidate.Solver.MemSafe.Frames.SCGuestX
import InitECandidate.Solver.MemSafe.Frames.GcX
import InitECandidate.Solver.MemSafe.Frames.BundleX
import InitECandidate.Solver.MemSafe.Frames.BundleXG
import InitECandidate.Solver.MemSafe.Frames.BundleXJL
import InitECandidate.Solver.MemSafe.Frames.ProStep
import InitECandidate.Solver.MemSafe.Frames.ProSpec
import InitECandidate.Solver.MemSafe.Frames.ProJL
import InitECandidate.Solver.MemSafe.Frames.GcrCode
import InitECandidate.Solver.MemSafe.Frames.GcrStep
import InitECandidate.Solver.MemSafe.Frames.GcrLib
import InitECandidate.Solver.MemSafe.Frames.GcrSteps
import InitECandidate.Solver.MemSafe.Frames.GcrTail
import InitECandidate.Solver.MemSafe.Frames.GcrSpec
import InitECandidate.Solver.MemSafe.Frames.GcrMain
import InitECandidate.Solver.MemSafe.Frames.GcrJL
import InitECandidate.Solver.MemSafe.Frames.PreWire
import InitECandidate.Solver.MemSafe.Frames.GChk
import InitECandidate.Solver.MemSafe.Frames.GChkKC
import InitECandidate.Solver.MemSafe.Frames.GChkJL
import InitECandidate.Solver.MemSafe.Frames.DispChk
import InitECandidate.Solver.MemSafe.Frames.GkHoare
import InitECandidate.Solver.MemSafe.Frames.OpStop
import InitECandidate.Solver.MemSafe.Frames.FHyps
import InitECandidate.Solver.MemSafe.Frames.GkMem
import InitECandidate.Solver.MemSafe.Frames.GkMemJL
import InitECandidate.Solver.MemSafe.Frames.OpStepB
import InitECandidate.Solver.MemSafe.Frames.FHypsB
import InitECandidate.Solver.MemSafe.Frames.OpMem
import InitECandidate.Solver.MemSafe.Frames.DispChkA
import InitECandidate.Solver.MemSafe.Frames.OpPush
import InitECandidate.Solver.MemSafe.Frames.Emc2
import InitECandidate.Solver.MemSafe.Frames.PmRoot
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# M5: the frame driver and the measure `Φ` of `run_frames`

* `MemSafe/Frames/RunFramesCode.lean`: the body of `run_frames`, certified against `guestCode`.
* `MemSafe/Frames/RunFramesGen.lean`: `run_frames_costP_gen`, the conditional cost of
  `run_frames` from abstract callee specifications (`RFHyps`) over any local-blind invariant
  `J` and measure `Φ`; measure `μ = 0` once `go = 0`, else `Φ + 1`.
* `MemSafe/Frames/Chain.lean`: the frame chain, `Phi` (design §2.1) and the chain invariant
  `Chain` (with the §2.4 facts for suspended frames).
* `MemSafe/Frames/Bundle.lean`: the hypothesis `Bundle` (frozen `SumSpec` / `CondCost`
  shapes) and **`run_frames_condCost`**.
* Frame-driver hand proofs (discharging the bundle):
  - `Lib`, `Cells`, `Frame`, `Run`: word updates, cell disjointness, `G` under safe-cell
    writes (`G_safe`), `FrameCfg` (requirements on the type table and hooks), plain summaries
    keep `Chain` / `Φ` (`chain_of_sumCore`), composition of callee summaries (`Run`);
  - `GasCode`: certified code and exact effects of `refill_frame_state_gas`, `frame_halt`,
    `charge_gas`;
  - `Exc`: **`exc_sumSpec`** (bundle entry `excSum`);
  - `Epi`: **`epi_sumSpec`**, `epi_condCost` (bundle entries `epiSum`, `epiCost`);
  - `Top`: `top_write` (writes to the running frame's driver slots keep `G` and `Chain`);
  - `GasSum`: **`charge_sumSpec`** (`Φ` drops by exactly the amount), `exc_cost` (bundle
    entry `excCost`);
  - `StateGasCode`, `StateGas`, `StateGasSum`: `add_sat`, `min`, **`csg_sumSpec`**
    (`charge_state_gas`) and **`credit_sumSpec`** (`credit_state_gas_refund`): `Chain` and the
    active bit kept, `Φ` not raised;
  - `Assemble`: **`bundle_of`** / **`run_frames_condCost_of`**: the bundle and the scoring
    shape from the entries still open (`op_dispatch`, `finish_child`, `state_restore`);
  - `EvSum`: **`charge_evSpec`**, **`pcAdd_evSpec`**: exact-footprint summaries over the running
    EV object (for the structure / opcode proofs);
  - `Start`: `run_call` (a summarized call inside a driver body), **`start_sumSpec`**
    (`frame_start` from a summary of `frame_prologue`: `Chain` kept, `Φ` not raised);
  - `Incorporate`: `icoe_spec` (exact effect of `incorporate_child_on_error`, for `finish_child`);
  - `Ctor`: `DrvCfg` (the type-table / hook requirements of the frame constructors) and the
    typing-extension lemmas;
  - `Open`, `OpenSpec`: **`open_sumSpec`** (`frame_open`, from a `frame_new` `SumSpecA`): the child
    EV and the scratch CK record allocated, `ev` / `cur_cont` switched, the record linked;
  - `Push`: `snapshot_spec`, **`chainL_push`** (the chain with the new frame on top),
    `wsum_push`, `wt_le`;
  - `StartChildDefs`, `StartChildLib`, `StartChild`, `StartChildTail`, `StartChildSpec`:
    **`sc_sumSpec`** (`start_child`): a return pushes the child (`Φ` grows by at most its gas
    plus 2); the depth `EvmErr` keeps the chain and `Φ`;
  - `Release`, `GuestRel`, `Marks`: the release law (`G_release`, `relCfg_guest`) and the mark
    invariant `MarkOK` of child frames;
  - `Fin*`: `finish_child`: **`fin_jSpec`** (bundle entry `finSum`, from `FinHyps`),
    **`fin_condCost`** (bundle entry `finCost`, from `FinCosts`), **`rb_condCost`** (the
    conditional cost of `rollback_child_access` under `G`), **`finHyps_guest`** (`FinHyps` for
    `guestC` from the fold entries and the four hand-spec callee facts);
  - `McWrap`: `funSpec_memcpy_nw` (a returning `memcpy` does not wrap around the address space);
  - `RetData`: **`sd_spec`** (`set_retdata`, the `FinHyps.sd` fact; `RdHooks`, `rdHooks_guest`);
  - `CreateFin`: **`cf_spec`** (`create_finish`, the `FinHyps.cf` fact, from a `set_code` summary;
    `TrkG`), `finHyps_guest_rc` (`finHyps_guest` with both discharged);
  - `LstNew`: **`lstNew_spec`** (`lst_new_scratch(8, 4)`, `frame_new`'s logs list: header `tLSTs`
    and array `tLSTAs` join `Γ`), `trk_tmp`, `trk_addObj`;
  - `MzVal`: **`funSpec_memzeroZ`** (a returning `memzero(D, N)`, `D`, `N` aligned, leaves `0` in
    every aligned cell of the buffer);
  - `NewCode`, `NewTrk`, `NewSpec`: `frame_new` (`code_fnew`, `noExc_fnew`; the tracking state
    `FNS`; **`fnew_sumSpec`**: `SumSpecA … "frame_new" (sgFN []) NewPreG False (NewQ tEV)`, from
    the table facts of `htab_new_scratch` / `htab_count` and four `KeepsFp` facts; `NewHooks H`);
    `NewGuest`: `newHooks_guest`, `newHooks_guestJ`;
  - `OpenGuest`: **`open_sumSpec_guest`**, **`sc_sumSpec_guest`** (`frame_open` / `start_child`
    over `guestC` without the `frame_new` / `frame_open` hypotheses; `open_sumSpec` and
    `sc_sumSpec` now take and give `SumSpecA`), `noEvm_fopen`;
  - `Jr`, `BundleJ` (decision 1, the journal in the loop invariant): `JrNZ` (the global
    `journal` is non-null; with `G` it gives the journal capability's `ReqOK`), the posts
    `QStepJ` / `QExcJ` / `QEpiJ`, **`BundleJ`**, **`run_frames_condCostJ`**, **`epi_jSpecA`**
    (`frame_epilogue` from `csumm_state_restore`), **`fin_srJ`** (`FinHyps.sr` from it),
    **`bundle_ofA`** / **`run_frames_condCost_ofA`** (the scoring shape from `op_dispatch`,
    `finish_child`, and `state_restore`'s `KeepsFp` and cost). `fin_jSpec` / `fin_condCost` now
    take `PreFinJ` and give `QStepJ` (`FinHyps` gained `pgJ` and the `j*` facts; `sr` / `cf`
    require `JrNZ`);
  - `ChildMsg` (task 3, step 1): **`cm_sumSpec`** / `cm_sumSpec_guestJ` (`child_message`, an
    exact-effect constructor: the message `⟨m, tMSGs, 176⟩` joins `Γ` in fresh scratch below the
    entry `scratch_ptr`, only its block and `scratch_ptr` change, CURRENT_TARGET / GAS / CODE_N
    are the arguments; post `CMQ`), `mns_spec` (`msg_new_scratch`), `noExc_cm`, the tracking
    state `CW` (`cw_st`, `cw_stV`, `cw_final`), `lookupCode_kS`.
  - `SCRunT`, `SCStepT`, `SCTailT`, `SCSpecT`, `SCGuestT` (frames6, the start_child fix,
    decision 2): footprint-free runs `RunT` and summaries `SumSpecT`; state objects (`nst`,
    `StCell`, the weakened `ProtKeep C (nst St Γ)`); the accepted callee shape `StSum`
    (`stSum_of_csumm`); **`sc_sumSpecT`** (`start_child` from state-object summaries of the kind-2
    callees, `frame_open`, and a footprint-free `frame_start` with precondition `PreInvJ`;
    precondition `PreSCT`), **`sc_sumSpecT_guest`** / **`sc_sumSpecT_guestR`** (`guestSt`,
    `mark_account_created` from `tab26[389]`, `frame_open` discharged). Supersedes `sc_sumSpec`.
  - `GcLib`, `GcCode`, `GcDepth`, `GcPre`, `GcSpec` (frames6, task b): `pa_coreX` (a callee
    writing running-EV `prot` slots keeps the chain), `markOK_fresh` / `frameAbove_fresh` (the
    release invariant of a fresh child), `gc_depth` (the depth-limit path), `gc_preSC`
    (`PreSCT` after `child_message`), **`gc_sumSpecT`** / **`gc_sumSpecT_guestR`**
    (`generic_call`: footprint-free, Pre `PreGC`, post `QGC`).
  - `ChainX`, `ChainXG` (frames7, decision 2(b)/(c)): the generic chain extension `ChainE P R`
    / `ChainX` (a per-frame predicate `P`, a child / parent predicate `R`, stability obligations
    `XCfg`; `chainE_step`, `chainE_release`) and its guest instance `GP` / `GR` (the message's
    CALLER / CURRENT_TARGET blocks `BufOK`, the `Inc.IcsX` list / table headers, distinct
    deletion tables, release facts `XAbove`), **`xCfg_guest`**, `xAbove_live`, `icsX_of`.
    `finish_child` carries the extension (`FinB.x`, `PA`, `fin_releaseX`; callee footprint
    `PWtopM`; `FinHyps … P R Ic`): **`fin_jSpec`** now has Pre `PreFinX` and post `QStepX`, and
    `incorporate_child_on_success`'s `Inc.IcsX` is discharged from the chain.
  - `SCGuestJL` (frames7): `destroy_storage` / `increment_nonce` from the merged table
    `ShardsJL.tab26` (`stSum_ds`, `stSum_inc`, `reqOK_jrs`); **`sc_sumSpecT_guestR2`**.
    `JrNZ` (Jr.lean) now covers `journal` and `sk_buf` (`jrGs`, side conditions `JrPG` / `JrOut`).

Design: scratchpad `memsafety-design.md` §2, §4 (M5).
-/
