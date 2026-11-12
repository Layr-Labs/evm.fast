import InitECandidate.Solver.Band4.MptSet

/-!
# The `mpt_new` record across a summarized call (trie-inv)

**`mRec_frame`**: `MRec Γ s m` (the record is allocated heap outside every `Γ` object, its root slot
is `0` or a `Γ` node) survives every `SumCore` step that passes no buffer argument over the
record's two cells and has no extra write there (`PW`). The secured flag `rd (m + 8)` is kept too.
This is the frame the `build_mpt_indexed` / `compute_state_root` loops use for every callee except
`mpt_set` itself (e.g. `rlp_encode_word(mpt_key_scratch, i)`, whose buffer is a `Γ` object).
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.Band4
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (State Ptrs ptrsOf heapBase heapEnd scratchEnd rd Gam Obj InObj G
  Hooks Sig SumCore Ext NewFresh ArgCells WCell)
open InitECandidate.Solver.MemSafe.Types (guestC)

variable {σ : Type}

/-- A live heap cell outside every `Γ` object, not an argument cell and not in `PW`, is kept. -/
theorem sumCore_cell_kept {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC H sg PW Γ s vs r t Γ' p p') (hG : G guestC H Γ s) {a : BitVec 64}
    (ha1 : heapBase ≤ a.toNat) (ha2 : a.toNat < p.hp) (hno : ¬ InObj Γ a.toNat)
    (hnA : ¬ ArgCells sg.params vs a) (hnP : ¬ PW a) : t.memory a = s.memory a := by
  obtain ⟨-, -, -, -, -, -, hmod, -⟩ := hc
  apply hmod
  rintro (⟨o, ho, k, hk, -, rfl⟩ | hA | hal | hP)
  · obtain ⟨p0, -, hord, hL, -⟩ := hG
    exact hno (MemSafe.cell_in hord hL ho hk)
  · exact hnA hA
  · exact hal (Or.inl ⟨ha1, ha2⟩)
  · exact hnP hP

/-- A cell below the entry `hp` outside every old object is outside every new object. -/
theorem newFresh_out {Γ Γ' : Gam} {p p' : Ptrs} (hN : NewFresh Γ Γ' p p') (hord : p.Ordered)
    (hord' : p'.Ordered) {a : BitVec 64} (ha2 : a.toNat < p.hp) (hpE : p.hp ≤ heapEnd) (hno : ¬ InObj Γ a.toNat) :
    ¬ InObj Γ' a.toNat := by
  rintro ⟨o, ho, h1, h2⟩
  rcases hN o ho a h1 h2 with ⟨o0, ho0, -, -, h3, h4⟩ | hf
  · exact hno ⟨o0, ho0, h3, h4⟩
  · obtain ⟨-, -, hfp', hfs', -, -, -, -⟩ := hord'
    obtain ⟨-, -, hfp, -, -, -, -, -⟩ := hord
    rcases hf with ⟨h, -⟩ | ⟨h, -⟩ | ⟨h, -⟩ <;> omega

/-- **The record survives a summarized call** that writes neither of its cells. -/
theorem mRec_frame {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC H sg PW Γ s vs r t Γ' p p') (hG : G guestC H Γ s) {m : BitVec 64}
    (hm : MRec Γ s m) (hnA : ∀ a, (a = m ∨ a = m + 8) → ¬ ArgCells sg.params vs a)
    (hnP : ∀ a, (a = m ∨ a = m + 8) → ¬ PW a) :
    MRec Γ' t m ∧ rd t.memory (m + 8) = rd s.memory (m + 8) := by
  obtain ⟨pm, hpm, hm8, hm1, hm16, hno0, hno8, hroot⟩ := hm
  have hc' := hc
  obtain ⟨hp, hp', hmono, hext, hnew, hG', -, -⟩ := hc'
  rw [hpm] at hp
  cases hp
  obtain ⟨p'', hp'', hord', -⟩ := hG'
  rw [hp'] at hp''
  cases hp''
  have hord : p.Ordered := by
    obtain ⟨p0, hp0, hord0, -⟩ := hG
    rw [hpm] at hp0; cases hp0; exact hord0
  have hE : p.hp ≤ heapEnd := hord.2.1
  have hE2 : heapEnd < 2 ^ 62 := by decide
  have h8 : (m + 8).toNat = m.toNat + 8 := by
    rw [BitVec.toNat_add, show (8 : BitVec 64).toNat = 8 from rfl, Nat.mod_eq_of_lt (by omega)]
  have k0 := sumCore_cell_kept hc hG hm1 (by omega) hno0 (hnA m (Or.inl rfl)) (hnP m (Or.inl rfl))
  have k8 := sumCore_cell_kept hc hG (a := m + 8) (by rw [h8]; omega) (by rw [h8]; omega)
    (by rw [h8]; exact hno8) (hnA _ (Or.inr rfl)) (hnP _ (Or.inr rfl))
  refine ⟨⟨p', hp', hm8, hm1, by have := hmono.1; omega,
    newFresh_out hnew hord hord' (by omega) hE hno0,
    newFresh_out hnew hord hord' (a := m + 8) (by rw [h8]; omega) hE (by rw [h8]; exact hno8) |>
      fun h => by rw [h8] at h; exact h, ?_⟩, ?_⟩
  · unfold rd; rw [k0]; exact rootOK_ext hext hroot
  · unfold rd; rw [k8]

end InitECandidate.Solver.Band4

#print axioms InitECandidate.Solver.Band4.mRec_frame
