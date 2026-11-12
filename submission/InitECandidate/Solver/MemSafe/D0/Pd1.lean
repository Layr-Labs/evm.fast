import InitECandidate.Solver.MemSafe.D0.Kq
import InitECandidate.Solver.MemSafe.Sc.EcoFinal

/-!
# `prepare_dispatch`'s fold callees in the `KP` shape

`KpSpec f sg`: `SumSpecA` with `Pre = JrNZ`, footprint `PWtopM tEV tCK []`, trivial post (the shape
`hoareG_kpCallD` / `hoareG_kpDecCall` take). `ecoKp`: `ext_code_of` with its post `EcoQ`.
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

/-- The `KP`-shaped summary. -/
def KpSpec (σ : Type) (f : MlS) (sg : Sig) : Prop :=
  SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg (fun _ s _ => JrNZ s)
    (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True)

theorem sumSpecA_capsQ {f : MlS} {sg : Sig} {cs : List Cap}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hc : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg (fun _ s Γ => ReqOK cs s Γ)
      (fun _ s Γ a => CapPW cs s Γ a) Q)
    (hreq : ∀ c ∈ cs, c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64))
    (hst : ∀ c ∈ cs, c.ks = [] ∧ (c.all = true → guestSt c.t = true)) :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg (fun _ s _ => JrNZ s)
      (PWtopM tEV tCK []) Q := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hJ
  obtain ⟨Γ', p, p', core, hq⟩ := hc vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs
    (reqOK_jrs hreq hG hJ)
  exact ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => ⟨hpc, caps_pw hst hG hw⟩, hq⟩

theorem aie_kp : KpSpec σ (nm "acct_is_empty") ⟨[.any], [], [], false⟩ :=
  sumSpecA_caps (cs := []) (by exact ctab% tabJL_guestR) (by decide) (by decide)
theorem uz_kp : KpSpec σ (nm "u256_is_zero") ⟨[.any], [], [], false⟩ :=
  sumSpecA_caps (cs := []) (by exact ctab% tabJL_guestR) (by decide) (by decide)
theorem gdca_kp : KpSpec σ (nm "get_delegated_code_address") ⟨[.any, .any], [], [], false⟩ :=
  sumSpecA_caps (cs := []) (by exact ctab% tabJL_guestR) (by decide) (by decide)
theorem iwa_kp : KpSpec σ (nm "is_warm_address") ⟨[.any], [], [], false⟩ :=
  sumSpecA_caps (cs := []) (by exact ctab% tabJL_guestR) (by decide) (by decide)
theorem iaa_kp : KpSpec σ (nm "is_account_alive") ⟨[.buf 20], [], [], true⟩ :=
  sumSpecA_caps (cs := stCaps) (by exact ctab% tabJL_guestR) stCaps_g stCaps_st
theorem wa_kp : KpSpec σ (nm "warm_address") ⟨[.buf 20], [], [], true⟩ :=
  sumSpecA_caps (cs := stCaps) (by exact ctab% tabJL_guestR) stCaps_g stCaps_st

theorem aie_fp : KeepsFp σ guestCtx (nm "acct_is_empty") := keepsFp_guest (by decide_cbv)
theorem uz_fp : KeepsFp σ guestCtx (nm "u256_is_zero") := keepsFp_guest (by decide_cbv)
theorem gdca_fp : KeepsFp σ guestCtx (nm "get_delegated_code_address") := keepsFp_guest (by decide_cbv)
theorem iwa_fp : KeepsFp σ guestCtx (nm "is_warm_address") := keepsFp_guest (by decide_cbv)
theorem iaa_fp : KeepsFp σ guestCtx (nm "is_account_alive") := keepsFp_guest (by decide_cbv)
theorem wa_fp : KeepsFp σ guestCtx (nm "warm_address") := keepsFp_guest (by decide_cbv)
theorem gpsa_fp : KeepsFp σ guestCtx (nm "get_pre_state_account") := keepsFp_guest (by decide_cbv)

/-- `ext_code_of(buf 20)` with `EcoQ`. -/
theorem eco_kp : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "ext_code_of") eocSg
    (fun _ s _ => JrNZ s) (PWtopM tEV tCK []) Calls.EcoQ :=
  sumSpecA_capsQ (cs := eocCs) Sc.ecoHyp_proved (by decide) (by decide)

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.eco_kp
#print axioms InitECandidate.Solver.MemSafe.D0.iaa_kp
#print axioms InitECandidate.Solver.MemSafe.D0.gpsa_fp
#print axioms InitECandidate.Solver.MemSafe.D0.aie_kp
