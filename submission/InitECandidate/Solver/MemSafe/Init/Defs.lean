import InitECandidate.Solver.MemSafe.Init.Esc
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Init: the weak invariant `WI` of the init phase

`WI Γ pn s`: the allocator pointers are ordered, `Γ` is a layout of heap objects that are all scalar blocks `tB<n>`
(`BTys`), and every typed global fits its kind or is still pending: `g ∈ pn` and `0`. It reads only the globals (`wi_congr`),
since scalar blocks have no pointer slots, no tags and trivial hooks. With `pn = []` it is `G` (`G_of_wi`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

/-- The scalar block types `tB640 .. tB360`. -/
def BTys : List Nat := List.range' 23 19

theorem BTys_facts : ∀ t ∈ BTys, t ≠ tEV ∧ t ∉ hdrTys ∧ t ∉ lstTys ∧ t ≠ tJOURNAL ∧ t ∉ recTys ∧
    (guestC.ty t).region = .heap ∧ (guestC.ty t).fixed = [] ∧ (guestC.ty t).rest = .scalar ∧
    guestC.tags.lookup t = none := by decide

/-- Remove one global from the pending list. -/
def pnDel (pn : List MlS) (g : MlS) : List MlS := pn.filter (fun x => x != g)

theorem mem_pnDel {pn : List MlS} {g x : MlS} : x ∈ pnDel pn g ↔ x ∈ pn ∧ x ≠ g := by
  simp [pnDel]

def WI (Γ : Gam) (pn : List MlS) (s : State σ) : Prop :=
  ∃ p, ptrsOf s = some p ∧ p.Ordered ∧ Layout guestC p Γ ∧ (∀ o ∈ Γ, o.ty ∈ BTys) ∧
    ∀ g k, guestC.GT.lookup g = some k → ∃ v, gword s g = some v ∧ (g ∈ pn → v = 0) ∧ (g ∉ pn → Fits Γ k v)

theorem wi_congr {Γ : Gam} {pn : List MlS} {s t : State σ} (h : t.globals = s.globals) (hw : WI Γ pn s) :
    WI Γ pn t := by
  obtain ⟨p, hp, ho, hl, hb, hg⟩ := hw
  refine ⟨p, by rw [AllocImpl.ptrsOf_congr h]; exact hp, ho, hl, hb, fun g k hk => ?_⟩
  obtain ⟨v, hv, hf⟩ := hg g k hk
  exact ⟨v, by unfold gword at hv ⊢; rw [h]; exact hv, hf⟩

theorem wi_ex_congr {pn : List MlS} {s t : State σ} (h : t.globals = s.globals)
    (hw : ∃ Γ, WI Γ pn s) : ∃ Γ, WI Γ pn t :=
  let ⟨Γ, hΓ⟩ := hw; ⟨Γ, wi_congr h hΓ⟩

theorem wf_B {Γ : Gam} {s : State σ} {o : Obj} (h : o.ty ∈ BTys) :
    (guestHooksR (σ := σ)).wf Γ s o := by
  obtain ⟨h1, h2, h3, h4, h5, -⟩ := BTys_facts _ h
  refine ⟨⟨⟨gwf_none (hkOf_none h1 h2), fun hj => absurd hj h4⟩, fun hl => absurd hl h3⟩, ?_⟩
  intro e he het
  exact absurd (het ▸ recTab_ty he) h5

theorem G_of_wi {Γ : Gam} {s : State σ} (h : WI Γ [] s) : G guestC (guestHooksR (σ := σ)) Γ s := by
  obtain ⟨p, hp, ho, hl, hb, hg⟩ := h
  refine ⟨p, hp, ho, hl, ?_, ?_, ?_, fun o hmem => wf_B (hb o hmem)⟩
  · intro o hmem k _
    obtain ⟨-, -, -, -, -, -, hf, hr, -⟩ := BTys_facts _ (hb o hmem)
    simp [TyD.slot, hf, hr, Fits]
  · intro o hmem tag htag
    obtain ⟨-, -, -, -, -, -, -, -, ht⟩ := BTys_facts _ (hb o hmem)
    rw [ht] at htag; cases htag
  · intro g k hk
    obtain ⟨v, hv, -, hf⟩ := hg g k hk
    exact ⟨v, hv, hf (by simp)⟩

end InitECandidate.Solver.MemSafe.Init
