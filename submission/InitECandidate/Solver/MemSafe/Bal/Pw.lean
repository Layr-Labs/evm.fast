import InitECandidate.Solver.MemSafe.Bal.EnsureMain

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- The capabilities of the BAL mutators: the account table, the per-account change and read tables. -/
def balCaps : List Cap := capsHT tHTd20 ++ capsHT tHTl32 ++ capsHT tHTh32

/-- The cells the BAL mutators may write (beyond the writable ones): table cells and list header / array cells. -/
def BalPW (s : State σ) (Γ : Gam) (a : BitVec 64) : Prop := CapPW balCaps s Γ a ∨ Inc.LaPW Γ a

/-- The tracked footprint. -/
def balPW (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (a : BitVec 64) : Prop :=
  (ProtCell guestC Γ0 a ∧ BalPW s0 Γ0 a) ∨ ¬ p0.Allocated a.toNat

theorem capsHT_sub {th : Nat} (h : th = tHTd20 ∨ th = tHTl32 ∨ th = tHTh32) :
    ∀ c ∈ capsHT th, c.ks = [] ∧ ∃ c0 ∈ balCaps, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t := by
  intro c hc
  have hks : c.ks = [] := (capsHT_self c hc).1
  refine ⟨hks, c, ?_, ?_, fun _ h => h⟩
  · unfold balCaps
    simp only [List.mem_append]
    rcases h with rfl | rfl | rfl
    · exact Or.inl (Or.inl hc)
    · exact Or.inl (Or.inr hc)
    · exact Or.inr hc
  · exact (capsHT_self c hc).2.choose_spec.2.1 |> fun _ => by
      obtain ⟨c0, hc0, hall, -⟩ := (capsHT_self c hc).2
      simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
      rcases hc with rfl | rfl <;> rfl

theorem pw_of_caps {Γ0 Γ : Gam} {p0 p : Ptrs} {s s0 : State σ} (hord0 : p0.Ordered) (hord : p.Ordered)
    (hm : p0.Mono p) (hL0 : Layout guestC p0 Γ0) (hL : Layout guestC p Γ) (hnf : NewFresh Γ0 Γ p0 p)
    {th : Nat} (h : th = tHTd20 ∨ th = tHTl32 ∨ th = tHTh32) {a : BitVec 64}
    (hpc : ProtCell guestC Γ a) (hpw : CapPW (capsHT th) s Γ a) : balPW Γ0 s0 p0 a := by
  rcases capBack hord0 hord hm hL0 hL hnf (capsHT_sub h) (cs0 := balCaps) (s0 := s0) hpc hpw with
    ⟨hpc0, hcp⟩ | hna
  · exact Or.inl ⟨hpc0, Or.inl hcp⟩
  · exact Or.inr hna

/-- A list header / array cell of the current typing is a list cell of the entry typing, or unallocated at entry. -/
theorem pw_of_la {Γ0 Γ : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}
    {t : State σ} (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 PW Γ t) {a : BitVec 64}
    (hpc : ProtCell guestC Γ a) (hla : Inc.LaPW Γ a) : balPW Γ0 s0 p0 a := by
  obtain ⟨A, hA, k, hk, hpr, rfl⟩ := hpc
  have hT0 := hT
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT0
  obtain ⟨qT, hq, hordT, hLayT, -⟩ := hGT
  rcases Inc.back_cell hord0 hL0 hT hA hk with ⟨o0, ho0, hob, hot, hok, hce⟩ | hna
  · have hpc0 : ProtCell guestC Γ0 (A.cell k) := ⟨o0, ho0, k, hok, by rw [hot]; exact hpr, hce⟩
    refine Or.inl ⟨hpc0, Or.inr ?_⟩
    rcases hla with ⟨L, hL, hLt, hc⟩ | ⟨y, hy, hyt, k', hk', he⟩
    · have hj : ∃ j, j < 3 ∧ A.cell k = L.cell j := by
        rcases hc with h | h | h
        · exact ⟨0, by omega, h⟩
        · exact ⟨1, by omega, h⟩
        · exact ⟨2, by omega, h⟩
      obtain ⟨j, hj3, hjc⟩ := hj
      obtain ⟨rfl, rfl⟩ := cell_inj hordT hLayT hA hL hk (lst_slot hLayT hL hLt hj3) hjc
      refine Or.inl ⟨o0, ho0, hot ▸ hLt, ?_⟩
      rcases (by omega : k = 0 ∨ k = 1 ∨ k = 2) with h0 | h0 | h0
      · subst h0; exact Or.inl hce
      · subst h0; exact Or.inr (Or.inl hce)
      · subst h0; exact Or.inr (Or.inr hce)
    · obtain ⟨rfl, rfl⟩ := cell_inj hordT hLayT hA hy hk hk' he
      exact Or.inr ⟨o0, ho0, hot ▸ hyt, k, hok, hce⟩
  · exact Or.inr hna

end InitECandidate.Solver.MemSafe.Bal
