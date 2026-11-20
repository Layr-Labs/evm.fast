import InitECandidate.Solver.MemSafe.D0.PlKit3
import InitECandidate.Solver.MemSafe.D0.Pd1
import InitECandidate.Solver.MemSafe.D0.Pd2
import InitECandidate.Solver.MemSafe.Frames.SCGuestJL

/-!
# `set_delegation`'s callees in the `KP` shape

Pure fold entries (`htab_has`, `u256_fits_word`, `memeq`, `is_valid_delegation`), state-capability
entries (`account_exists`, `get_code`, `validate_authorization_checks`, `increment_nonce`), the
table entries `htab_new` (post: the returned pointer is a `tHTh20` object) and `htab_set`
(footprint inside `PWtopM []`), `set_code` (from `SetCodeH`, `Pre` = the length bound) and
`recover_authority` (from `RaH`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Wire

variable {σ : Type}

/-- `get_code`'s capabilities. -/
def gcCaps : List Cap := ⟨nm "sk_buf", 24, [], false⟩ :: stCaps

theorem gcCaps_g : ∀ c ∈ gcCaps, c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64) := by
  decide
theorem gcCaps_st : ∀ c ∈ gcCaps, c.ks = [] ∧ (c.all = true → guestSt c.t = true) := by decide

theorem htf_kp : KpSpec σ (nm "htab_has") ⟨[.any, .any], [], [], false⟩ :=
  sumSpecA_caps (cs := []) (tableSummaryAt (i := 468) (by rfl)) (by decide) (by decide)
theorem fw_kp : KpSpec σ (nm "u256_fits_word") ⟨[.any], [], [], false⟩ :=
  sumSpecA_caps (cs := []) (tableSummaryAt (i := 356) (by rfl)) (by decide) (by decide)
theorem mq_kp : KpSpec σ (nm "memeq") ⟨[.any, .any, .any], [], [], false⟩ :=
  sumSpecA_caps (cs := []) (tableSummaryAt (i := 484) (by rfl)) (by decide) (by decide)
theorem ivd_kp : KpSpec σ (nm "is_valid_delegation") ⟨[.any, .any], [], [], false⟩ :=
  sumSpecA_caps (cs := []) (tableSummaryAt (i := 397) (by rfl)) (by decide) (by decide)
theorem ae_kp : KpSpec σ (nm "account_exists") ⟨[.buf 20], [], [], true⟩ :=
  sumSpecA_caps (cs := stCaps) (tableSummaryAt (i := 448) (by rfl)) stCaps_g stCaps_st
theorem gc_kp : KpSpec σ (nm "get_code") ⟨[.any, .any], [], [], true⟩ :=
  sumSpecA_caps (cs := gcCaps) (tableSummaryAt (i := 412) (by rfl)) gcCaps_g gcCaps_st
theorem vac_kp : KpSpec σ (nm "validate_authorization_checks") ⟨[.any, .buf 20], [], [], true⟩ :=
  sumSpecA_caps (cs := ecoCaps) (tableSummaryAt (i := 355) (by rfl)) ecoCaps_g ecoCaps_st
theorem inc_kp : KpSpec σ (nm "increment_nonce") ⟨[.buf 20], [], [Hooks.gJn], true⟩ :=
  sumSpecA_caps (cs := incCaps) (tableSummaryAt (i := 399) (by rfl)) incCaps_g incCaps_st

theorem htf_fp : KeepsFp σ guestCtx (nm "htab_has") :=
  keepsFp_guest (List.mem_of_getElem? (i := 646) (by rfl))
theorem fw_fp : KeepsFp σ guestCtx (nm "u256_fits_word") :=
  keepsFp_guest (List.mem_of_getElem? (i := 730) (by rfl))
theorem mq_fp : KeepsFp σ guestCtx (nm "memeq") :=
  keepsFp_guest (List.mem_of_getElem? (i := 752) (by rfl))
theorem ivd_fp : KeepsFp σ guestCtx (nm "is_valid_delegation") :=
  keepsFp_guest (List.mem_of_getElem? (i := 469) (by rfl))
theorem ae_fp : KeepsFp σ guestCtx (nm "account_exists") :=
  keepsFp_guest (List.mem_of_getElem? (i := 85) (by rfl))
theorem gc_fp : KeepsFp σ guestCtx (nm "get_code") :=
  keepsFp_guest (List.mem_of_getElem? (i := 88) (by rfl))
theorem vac_fp : KeepsFp σ guestCtx (nm "validate_authorization_checks") :=
  keepsFp_guest (List.mem_of_getElem? (i := 38) (by rfl))
theorem inc_fp : KeepsFp σ guestCtx (nm "increment_nonce") :=
  keepsFp_guest (List.mem_of_getElem? (i := 69) (by rfl))
theorem hn_fp : KeepsFp σ guestCtx (nm "htab_new") :=
  keepsFp_guest (List.mem_of_getElem? (i := 651) (by rfl))
theorem hs_fp : KeepsFp σ guestCtx (nm "htab_set") :=
  keepsFp_guest (List.mem_of_getElem? (i := 146) (by rfl))
theorem sc_fp : KeepsFp σ guestCtx (nm "set_code") :=
  keepsFp_guest (List.mem_of_getElem? (i := 68) (by rfl))
theorem ra_fp : KeepsFp σ guestCtx (nm "recover_authority") :=
  keepsFp_guest (List.mem_of_getElem? (i := 6) (by rfl))

/-- `htab_new(20, 8)`: the returned pointer is a `tHTh20` object of the post typing. -/
theorem hn_kp : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_new")
    (Shards.newSig (20, 8)) (fun _ s _ => JrNZ s) (PWtopM tEV tCK [])
    (fun _ _ _ r _ Γ' => ∀ w, r = .returned (.val (.word w)) → Fits Γ' (.ptr tHTh20) w) := by
  have hc : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_new")
      (Shards.newSig (20, 8)) [] := tableSummaryAt (i := 600) (by rfl)
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hJ
  obtain ⟨Γ', p, p', core, -⟩ := hc vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs
    (fun c hc' => absurd hc' (by simp))
  refine ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ =>
    ⟨hpc, caps_pw (cs := []) (by decide) hG hw⟩, fun w hw => ?_⟩
  have hret := core.2.2.2.2.2.2.2.2.2 (.val (.word w)) hw
  exact hret 0 (.fits (.ptr (Shards.hdrOfKL 20))) w rfl (by simp [flattenHOL])

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.hn_kp
#print axioms InitECandidate.Solver.MemSafe.D0.vac_kp
#print axioms InitECandidate.Solver.MemSafe.D0.inc_kp
