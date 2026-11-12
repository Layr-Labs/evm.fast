import InitECandidate.Solver.MemSafe.Eb.Run

/-!
# `execute_block`: the payload record cells are kept (`PlKeep`)

`PlKeep Γ s t`: the `prot` cells of the `tTX`, `tPL`, `tSLA`, `tSI` objects of `Γ` keep their value (main folds these types
into `BKeep` / `blockTys` at merge; until then it is stated here in exactly this shape).
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

def PlTys : List Nat := [tTX, tPL, tSLA, tSI]

def PlKeep (Γ : Gam) (s t : State σ) : Prop :=
  ∀ o ∈ Γ, o.ty ∈ PlTys → ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot →
    rd t.memory (o.cell k) = rd s.memory (o.cell k)

def PlCell (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ o ∈ Γ, o.ty ∈ PlTys ∧ ∃ k, o.HasSlot k ∧ (guestC.ty o.ty).slot k = .prot ∧ a = o.cell k

theorem plCell_prot {Γ : Gam} {a : BitVec 64} (h : PlCell Γ a) : ProtCell guestC Γ a :=
  let ⟨o, ho, _, k, hk, hp, he⟩ := h; ⟨o, ho, k, hk, hp, he⟩

theorem plKeep_iff {Γ : Gam} {s t : State σ} : PlKeep Γ s t ↔ ∀ a, PlCell Γ a → rd t.memory a = rd s.memory a :=
  ⟨fun h a ⟨o, ho, ht, k, hk, hp, he⟩ => he ▸ h o ho ht k hk hp,
    fun h o ho ht k hk hp => h _ ⟨o, ho, ht, k, hk, hp, rfl⟩⟩

theorem plKeep_refl {Γ : Gam} {s : State σ} : PlKeep Γ s s := fun _ _ _ _ _ _ => rfl

theorem plKeep_of_sumCore' {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop}
    {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hG : G guestC H Γ s) (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ a)
    (hc : SumCore guestC H sg PW Γ s vs r t Γ' p p') (hPW : ∀ a, PW a → ¬ PlCell Γ a) :
    PlKeep Γ s t := by
  refine plKeep_iff.mpr fun a ha => ?_
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hc.1)
  have hmod := hc.2.2.2.2.2.2.1 a
  have hnr : ¬ (WCell guestC Γ a ∨ ArgCells sg.params vs a ∨ ¬ q.Allocated a.toNat ∨ PW a) := by
    rintro (⟨o, ho, k, hk, hpr, rfl⟩ | h1 | h2 | h3)
    · obtain ⟨o', ho', ht, k', hk', hp', he⟩ := ha
      obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
      exact hpr hp'
    · exact hac _ h1 (plCell_prot ha)
    · exact h2 (prot_alloc hord hL (plCell_prot ha))
    · exact hPW _ h3 ha
  unfold rd
  rw [hmod hnr]

theorem plKeep_of_sumCore {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop}
    {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hG : G guestC H Γ s) (hargs : ArgsOK guestC Γ p sg.params vs)
    (hc : SumCore guestC H sg PW Γ s vs r t Γ' p p') (hPW : ∀ a, PW a → ¬ PlCell Γ a) :
    PlKeep Γ s t := by
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hc.1)
  exact plKeep_of_sumCore' hG (fun a ha => argCells_not_prot hord hL hargs ha) hc hPW

end InitECandidate.Solver.MemSafe.Eb

#print axioms InitECandidate.Solver.MemSafe.Eb.plKeep_of_sumCore
