import InitECandidate.Solver.MemSafe.Rpg.Gas1
import InitECandidate.Solver.MemSafe.Frames.Bundle

/-!
# rpG: soundness of the spine check `sk`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rpg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

/-- The standing hypotheses of the gas pass. -/
structure RpEnv (σ : Type) (X : Ctx 64) (H : Hooks σ) : Prop where
  hH : HooksLawful guestC H
  hC : CfgOK guestC
  hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0
  hAC : AllocCfg guestC
  hNS : NullSafe X
  hWS : WinSpecs σ X
  hX : X.code.lookup = guestCode
  hT : CTabSound σ X guestC H gTab
  hF : Frames.FrameCfg guestC H tEV tCK

/-- The post: every non-abortive result leaves `GAS_LEFT` of `e` at most `g0`. -/
def Qg (e : BitVec 64) (g0 : Nat) : Option (PanSemResultExact 64) → State σ → Prop :=
  fun ro t => ∀ r', ro = some r' → ¬ Abortive r' → gasV t e ≤ g0

theorem spost_heap {a : Act σ} {rt : List RT} {o : AOut} {Γ : Gam} {Θ : List (BitVec 64 × Nat)}
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : SPost a rt o Γ Θ ro t) :
    ∀ r', ro = some r' → ¬ Abortive r' → ∃ Γ' p, Heap a Γ' p t := by
  intro r' hr hna
  subst hr
  rcases r' with _ | _ | _ | _ | _ | v | ⟨e, v⟩ | e
  all_goals first
    | (obtain ⟨B, Γ', Θ', -, -, p, hh, -⟩ := h; exact ⟨Γ', p, hh⟩)
    | (obtain ⟨Γ', p, -, hh, -⟩ := h; exact ⟨Γ', p, hh⟩)
    | (rcases h with hab | ⟨Γ', p, -, hh⟩
       · exact absurd hab hna
       · exact ⟨Γ', p, hh⟩)

section entry
variable (En : RpEnv σ X H)
include En

theorem entry_act {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (hG : G guestC H Γ0 s0)
    (hps : ptrsOf s0 = some p0) (hreq : ReqOK capE s0 Γ0) :
    ActOK (aAt H s0 Γ0 p0) X ∧ Heap (aAt H s0 Γ0 p0) Γ0 p0 s0 :=
  act_entry En.hH En.hC En.hal En.hAC En.hNS capsOK_capE hG hps argsOK_nil hreq

theorem gasle_of_heap {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (hG : G guestC H Γ0 s0)
    (hps : ptrsOf s0 = some p0) (hreq : ReqOK capE s0 Γ0) {e : BitVec 64} {g0 : Nat}
    (hge : gword s0 Frames.nmEv = some e) (hg0 : gasV s0 e ≤ g0) {Γ : Gam} {p : Ptrs}
    {t : State σ} (hh : Heap (aAt H s0 Γ0 p0) Γ p t) : gasV t e ≤ g0 := by
  obtain ⟨ha, -⟩ := entry_act En hG hps hreq
  have hL0 : Layout (aAt H s0 Γ0 p0).C (aAt H s0 Γ0 p0).p0 (aAt H s0 Γ0 p0).Γ0 := by
    obtain ⟨q, hq, hord, hL, -⟩ := id hG
    rw [hps] at hq
    cases hq
    exact hL
  have := gas_same ha rfl rfl rfl hL0 hh hge
  unfold gasV
  rw [this]
  exact hg0

end entry

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.spost_heap
#print axioms InitECandidate.Solver.MemSafe.Rpg.gasle_of_heap
