import InitECandidate.Solver.MemSafe.Frames.NewGuest

/-!
# `frame_open` and `start_child` over the guest configuration, without the `frame_new` /
# `frame_open` hypotheses

* `noExc_fopen`, `noEvm_fopen`: `frame_open` (whose callees are `frame_new`, `scratch_alloc`,
  `memzero`) has only returns and abortive results, so it never raises `EvmErr`.
* **`open_sumSpec_guest`**: `open_sumSpec` with `frame_new`'s summary `fnew_sumSpec`
  (precondition `NewPreG`).
* **`sc_sumSpec_guest`**: `sc_sumSpec` with `open_sumSpec_guest` and `noEvm_fopen`; the remaining
  inputs are the summaries of `destroy_storage`, `mark_account_created`, `increment_nonce`
  (`SummFp`) and `frame_start` (`SumSpec`, `NoEvm`), plus the table facts of `fnew_sumSpec`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

theorem xchk_fopen :
    xChk (nm "frame_new" :: fnewX) false (declPair Guest.Software.guestFn_frame_open).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_fopen (hX : X.code.lookup = guestCode) : NoExc σ X (nm "frame_open") :=
  HtabEntries.noExc_of_pair (noExcTab_cons (noExc_fnewX hX) (noExc_fnew hX)) hX
    (p := declPair Guest.Software.guestFn_frame_open)
    (declPair_valid (List.getElem_mem (n := 578) (by decide)) ⟨_, rfl⟩) xchk_fopen

/-- A function with only returns and abortive results never raises `EvmErr`. -/
theorem noEvm_of_noExc {f : MlS} (h : NoExc σ X f) : NoEvm σ X f := by
  intro vs body callee rs hl s hs hloc r hr v hv
  rcases h vs body callee rs hl s hs hloc r hr (by rw [hv]; simp [Good]) with ⟨w, hw⟩ | hab
  · rw [hv] at hw
    cases hw
  · rw [hv] at hab
    simp only [Abortive] at hab
    exact absurd hab (by decide)

theorem noEvm_fopen (hX : X.code.lookup = guestCode) : NoEvm σ X (nm "frame_open") :=
  noEvm_of_noExc (noExc_fopen hX)

/-- **`frame_open`'s summary** over `guestC`, from `fnew_sumSpec`. -/
theorem open_sumSpec_guest {H : Hooks σ} (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK)
    (hNH : Hooks.NewHooksL H)
    (hns : CSumm σ X guestC H (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [])
    (fpNs : KeepsFp σ X (nm "htab_new_scratch"))
    (hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [])
    (fpCnt : KeepsFp σ X (nm "htab_count")) (fpLst : KeepsFp σ X (nm "lst_new_scratch"))
    (fpJd : KeepsFp σ X (nm "compute_jumpdests")) :
    SumSpecA σ X guestC H (nm "frame_open") (sgFO []) (PreFO NewPreG) (fun _ _ _ _ => False)
      (FOQ tEV tCK) :=
  open_sumSpec hF.hX hD hF.hal (by decide) (by simp) newPreG_loc
    (fnew_sumSpec hF hD.mono hNH hns fpNs hcnt fpCnt fpLst fpJd)

/-- **`start_child`'s summary** over `guestC`, without the `frame_open` hypothesis. -/
theorem sc_sumSpec_guest {H : Hooks σ} {M : Nat} (hF : FoldOK σ X guestC H)
    (hD : DrvCfg guestC H tEV tCK) (hNH : Hooks.NewHooksL H)
    (hns : CSumm σ X guestC H (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [])
    (fpNs : KeepsFp σ X (nm "htab_new_scratch"))
    (hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [])
    (fpCnt : KeepsFp σ X (nm "htab_count")) (fpLst : KeepsFp σ X (nm "lst_new_scratch"))
    (fpJd : KeepsFp σ X (nm "compute_jumpdests"))
    {gwK gwS : List MlS} (hgwK : nmEv ∉ gwK ∧ nmCC ∉ gwK)
    (hds : SummFp σ X guestC H (nm "destroy_storage") (sg1 gwK))
    (hmac : SummFp σ X guestC H (nm "mark_account_created") (sg1 gwK))
    (hinc : SummFp σ X guestC H (nm "increment_nonce") (sg1 gwK))
    (hfst : SumSpec σ X guestC H (nm "frame_start") (sg0 gwS) (PreInv guestC tEV tCK M)
      (fun _ _ _ _ => True) (QLe guestC tEV tCK))
    (hfsE : NoEvm σ X (nm "frame_start")) :
    SumSpecA σ X guestC H (nm "start_child") (sgSC (gwK ++ [] ++ gwS))
      (PreSC guestC tEV tCK M NewPreG) (fun _ _ _ _ => True) (QSC guestC tEV tCK) :=
  sc_sumSpec hF.hX hD hgwK newPreG_loc (fun _ _ _ _ _ h hpk hx => newPreG_keep h hpk hx) hds hmac
    hinc (open_sumSpec_guest hF hD hNH hns fpNs hcnt fpCnt fpLst fpJd) (noEvm_fopen hF.hX) hfst hfsE

end InitECandidate.Solver.MemSafe.Frames
