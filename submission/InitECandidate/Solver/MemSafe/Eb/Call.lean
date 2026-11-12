import InitECandidate.Solver.MemSafe.Eb.Hoare

/-!
# `execute_block`: calls

`Stp Γ p s Γ' p' t D`: a call step from `(Γ, p, s)` to `(Γ', p', t)`: the typed heap steps (`StepD`), the journal globals and
`ev` / `cur_cont` stay good, and the `prot` cells of the block objects of `Γ` outside `D` keep their value.
`CallR f Pre D Q`: the contract of a callee (returns only) in that shape. Table summaries and `SumSpecA`s convert by
`callR_of_sumSpecA`; the block-level hypotheses (`HypPt`, ...) are stated in this shape directly.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

def EvCc (t : State σ) : Prop :=
  (∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) ∧ (∃ c, gword t nmCC = some c ∧ c.toNat < nullMax)

def Stp (Γ : Gam) (p : Ptrs) (s : State σ) (Γ' : Gam) (p' : Ptrs) (t : State σ) (D : BitVec 64 → Prop) : Prop :=
  StepD Γ p s Γ' p' t ∧ JrNZ t ∧ EvCc t ∧ (∀ a, BCell guestC Γ a → ¬ D a → rd t.memory a = rd s.memory a) ∧
    PlKeep Γ s t

/-- The contract of a callee: from `G`, the good globals and `Pre`, a return is an `Stp` step with the block cells outside `D`
kept, and `Q`. -/
def CallR (f : MlS)
    (Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop)
    (D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop) : Prop :=
  FunSpec σ guestCtx f (fun vs s r t => ∀ v, r = .returned v → ∀ (Γ : Gam) (p : Ptrs),
    G guestC (HR σ) Γ s → ptrsOf s = some p → JrNZ s → EvCc s → Pre vs s Γ p →
    ∃ (Γ' : Gam) (p' : Ptrs), Stp Γ p s Γ' p' t (D vs s Γ) ∧ Q vs s Γ p v t Γ' p')

/-- A summarized callee. The extra post also carries the result typing. -/
theorem callR_of_sumSpecA {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx guestC (HR σ) f sg Pre PW Q)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJo : JrOut sg.gw)
    (hB : ∀ vs s Γ a, G guestC (HR σ) Γ s → PW vs s Γ a → ¬ BCell guestC Γ a ∧ ¬ PlCell Γ a) :
    CallR f (fun vs s Γ p => ArgsOK guestC Γ p sg.params vs ∧ Pre vs s Γ) (fun _ _ _ _ => False)
      (fun vs s Γ p v t Γ' p' => RetOK Γ' p p' vs sg.ret v ∧ (sg.grows = false → NewFresh Γ Γ' p p) ∧
        Q vs s Γ (.returned v) t Γ') := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE ⟨hargs, hpre⟩
  subst hv
  have hspec := hf vs body callee rs hl s hs hloc _ hr (by simp [Good]) (not_abortive_ret v) Γ hG ⟨p, hp, hargs⟩ hpre
  obtain ⟨Γ', p0, p', hc, hq⟩ := hspec
  obtain rfl : p0 = p := Option.some.inj (hc.1.symm.trans hp)
  have hc' := sumCore_pwM (PW' := fun a => ProtCell guestC Γ a ∧ PW vs s Γ a) hc (fun a h => h)
  have hbk : ∀ a, BCell guestC Γ a → rd (evaluateHOLFiniteState s body).2.memory a = rd s.memory a :=
    bcell_keep_of_sumCore hG hargs hc (fun a h => (hB vs s Γ a hG h.2).1)
  have hpk : PlKeep Γ s (evaluateHOLFiniteState s body).2 :=
    plKeep_of_sumCore hG hargs hc (fun a h => (hB vs s Γ a hG h.2).2)
  refine ⟨Γ', p', ⟨stepD_of_core hG hc, jrNZ_sumCore (by decide) hJo hc hJ, ?_, ?_, hpk⟩, ?_⟩
  · have hF := Hooks.frameCfg_guestHooksR (σ := σ)
    have hglob := hc.2.2.2.2.2.2.2.1
    obtain ⟨⟨e, he, hs⟩, ⟨c, hc', hs'⟩⟩ := hE
    exact ⟨⟨e, by unfold gword; rw [hglob _ hF.pgEv hgw.1]; exact he, hs⟩,
      ⟨c, by unfold gword; rw [hglob _ hF.pgCC hgw.2]; exact hc', hs'⟩⟩
  · intro a ha _
    exact hbk a ha
  · exact ⟨hc.2.2.2.2.2.2.2.2.2 v rfl, hc.2.2.2.2.2.2.2.2.1, hq⟩

end InitECandidate.Solver.MemSafe.Eb
