import InitECandidate.Solver.MemSafe.D0.Kp
import InitECandidate.Solver.MemSafe.Frames.ProJL

/-!
# Callee summaries in the `KP` shape (state-capability fold entries)

`sumSpecA_caps`: a fold entry `CSumm … f sg cs` whose capabilities are on `journal` / `sk_buf` or
type capabilities of state types, as a `SumSpecA` with `Pre = JrNZ`, footprint `PWtopM tEV tCK []`
and trivial post (the shape `hoareG_kpCallD` / `hoareG_kpDecCall` take, as `Frames.me_guestR`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- State-capability footprints are in `PWtopM []` (`Frames.incCaps_pw` for any such cap list). -/
theorem caps_pw {cs : List Cap} (hst : ∀ c ∈ cs, c.ks = [] ∧ (c.all = true → guestSt c.t = true))
    {vs : List (ValueHOL 64)} {Γ : Gam} {s : State σ} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    {a : BitVec 64} (hw : CapPW cs s Γ a) : PWtopM tEV tCK [] vs s Γ a := by
  obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨hall, e, he, hty, k, hks, rfl⟩⟩ := hw
  · rw [(hst c hc).1] at hk; cases hk
  · refine stCell_pwM hG he hks ?_
    rcases hty with h | h
    · rw [h]; exact (hst c hc).2 hall
    · exact guestSt_own _ h

theorem sumSpecA_caps {f : MlS} {sg : Sig} {cs : List Cap}
    (hc : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg cs)
    (hreq : ∀ c ∈ cs, c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64))
    (hst : ∀ c ∈ cs, c.ks = [] ∧ (c.all = true → guestSt c.t = true)) :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg (fun _ s _ => JrNZ s)
      (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hJ
  obtain ⟨Γ', p, p', core, -⟩ := hc vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs
    (reqOK_jrs hreq hG hJ)
  exact ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => ⟨hpc, caps_pw hst hG hw⟩, trivial⟩

/-- The state capabilities of `get_pre_state_account` / `is_account_alive` / `warm_address`. -/
def stCaps : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩,
    ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩,
    ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩]

/-- `ext_code_of`'s: also `sk_buf`. -/
def ecoCaps : List Cap := stCaps ++ [⟨nm "sk_buf", 24, [], false⟩]

theorem stCaps_g : ∀ c ∈ stCaps, c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64) := by
  decide
theorem stCaps_st : ∀ c ∈ stCaps, c.ks = [] ∧ (c.all = true → guestSt c.t = true) := by decide
theorem ecoCaps_g : ∀ c ∈ ecoCaps, c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64) := by
  decide
theorem ecoCaps_st : ∀ c ∈ ecoCaps, c.ks = [] ∧ (c.all = true → guestSt c.t = true) := by decide

/-- `get_pre_state_account(buf 20)`. -/
theorem gpsa_sum :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "get_pre_state_account")
      ⟨[.buf 20], [], [], true⟩ (fun _ s _ => JrNZ s) (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_caps (cs := stCaps) (by exact ctab% tabJL_guestR) stCaps_g stCaps_st

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.sumSpecA_caps
#print axioms InitECandidate.Solver.MemSafe.D0.gpsa_sum
