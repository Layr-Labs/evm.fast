import InitECandidate.Solver.MemSafe.Trie.CsrKit

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: frame lemmas for the invariants across a call
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type}

/-- The capability list of `compute_state_root`. -/
def capsX : List Cap := HtabEntries.capsHT Types.tHTb20 ++ HtabEntries.capsHT Types.tHTh20 ++ insCaps

/-- No capability of `cs` touches objects of type `t`. -/
def CapsAvoid (cs : List Cap) (t : Nat) : Prop :=
  ∀ c ∈ cs, t ≠ c.t ∧ t < ownBase ∧ ∀ k ∈ c.ks, 8 * k + 8 ≤ (Types.guestC.ty c.t).minSz

theorem capsX_avoid_wsr : CapsAvoid capsX Types.tWSR := by
  unfold CapsAvoid capsX HtabEntries.capsHT insCaps leafCaps brCaps
  decide

/-- A protected cell of an object keeps its word across a call. -/
theorem prot_keep {a : Act σ} (hCb : a.Cb = Types.guestC) {sg' : Sig} {cs : List Cap}
    {vs : List (ValueHOL 64)} {Γ : Gam}
    {q : Ptrs} {s st : State σ} (hMod : Mod a sg' cs vs Γ q s st) {o : Obj} (ho : o ∈ Γ) {k : Nat}
    (hk : o.HasSlot k) (hprot : (Types.guestC.ty o.ty).slot k = .prot) (hcaps : CapsAvoid cs o.ty)
    (hargs : ∀ y, ArgCells sg'.params vs y → ¬ InObj Γ y.toNat) (hord : q.Ordered)
    (hL : Layout Types.guestC q Γ) : st.memory (o.cell k) = s.memory (o.cell k) := by
  have hin := cell_in hord hL ho hk
  have hcn := (cell_toNat hord hL ho hk).1
  have hal : q.Allocated (o.cell k).toNat := by
    apply live_alloc hord hL ho (c := (o.cell k).toNat)
    · rw [hcn]; omega
    · rw [hcn]; unfold Obj.HasSlot at hk; unfold Obj.hi Obj.lo at *; omega
  refine hMod _ ?_ (fun h => hargs _ h hin) ?_ hal
  · rintro ⟨o', ho', k', hk', hnp, he⟩
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' ho hk' hk he.symm
    rw [hCb] at hnp
    exact hnp hprot
  · rintro ⟨-, c, hc, h | h⟩
    · obtain ⟨e, ⟨he, het, -⟩, k', hk', hx⟩ := h
      obtain ⟨h1, h2, h3⟩ := hcaps c hc
      have hsz := (hL.1 e he).2.2.2.1
      rw [het] at hsz
      have hslot : e.HasSlot k' := by
        unfold Obj.HasSlot
        have h4 := h3 k' hk'
        omega
      obtain ⟨rfl, rfl⟩ := cell_inj hord hL he ho hslot hk hx.symm
      exact h1 het
    · obtain ⟨-, e, he, hall, k', hk', hx⟩ := h
      obtain ⟨h1, h2, -⟩ := hcaps c hc
      obtain ⟨rfl, rfl⟩ := cell_inj hord hL he ho hk' hk hx.symm
      rcases hall with h | h
      · exact h1 h
      · omega

/-! ## Fresh blocks and handles across a call -/

theorem fblk_persist_g {p0 q q' : Ptrs} {Γ Γ' : Gam} {B : BitVec 64} {sz : Nat}
    (h : FBlk p0 B sz Γ q) (hord : q.Ordered) (hq' : q'.Ordered)
    (hnf : NewFresh Γ Γ' q q') (hm : q.Mono q') : FBlk p0 B sz Γ' q' := by
  obtain ⟨h8, hs8, hb, hq, hc⟩ := h
  have hqe := hord.2.1
  refine ⟨h8, hs8, hb, by have := hm.1; omega, fun x h1 h2 => ⟨?_, (hc x h1 h2).2⟩⟩
  rintro ⟨o, ho, ho1, ho2⟩
  have hE : heapEnd < 2 ^ 64 := by decide
  have hx : x < 2 ^ 64 := by omega
  have hxn : (BitVec.ofNat 64 x).toNat = x := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hx]
  rcases hnf o ho (BitVec.ofNat 64 x) (by rw [hxn]; exact ho1) (by rw [hxn]; exact ho2) with
    ⟨o0, ho0, -, -, hl, hh⟩ | hf
  · rw [hxn] at hl hh
    exact (hc x h1 h2).1 ⟨o0, ho0, hl, hh⟩
  · unfold Fresh at hf
    rw [hxn] at hf
    obtain ⟨-, -, d3, d4, -⟩ := hq'
    obtain ⟨-, e2, e3, e4, -⟩ := hord
    omega

/-- The handle record across a call that writes neither of its cells. -/
theorem hrec_call {a : Act σ} (hCb : a.Cb = Types.guestC) {sg' : Sig} {cs : List Cap}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    (hMod : Mod a sg' cs vs Γ q s st) (hExt : Ext Γ Γ') (hnf : NewFresh Γ Γ' q q')
    (hmo : q.Mono q') (hord : q.Ordered) (hord' : q'.Ordered) (hL : Layout Types.guestC q Γ)
    {M : BitVec 64} (hM : HRec Γ q s.memory M)
    (hargs : ∀ y, ArgCells sg'.params vs y → y.toNat ≠ M.toNat ∧ y.toNat ≠ M.toNat + 8) :
    HRec Γ' q' st.memory M := by
  obtain ⟨h8, hb, hq, hn0, hn8, hroot⟩ := hM
  have hE : heapEnd < 2 ^ 64 := by decide
  have hqe := hord.2.1
  have hcell : ∀ x : BitVec 64, (x.toNat = M.toNat ∨ x.toNat = M.toNat + 8) →
      st.memory x = s.memory x := by
    intro x hx
    refine hMod x ?_ (fun h => by have := hargs x h; omega) ?_ ?_
    · rintro ⟨o, ho, k, hk, -, he⟩
      have hin := cell_in hord hL ho hk
      rw [← he] at hin
      rcases hx with hx | hx <;> rw [hx] at hin
      · exact hn0 hin
      · exact hn8 hin
    · rintro ⟨⟨o, ho, k, hk, -, he⟩, -⟩
      have hin := cell_in hord hL ho hk
      rw [← he] at hin
      rcases hx with hx | hx <;> rw [hx] at hin
      · exact hn0 hin
      · exact hn8 hin
    · unfold Ptrs.Allocated
      left
      unfold heapBase at *
      omega
  refine ⟨h8, hb, by have := hmo.1; omega,
    newFresh_outN hnf hord hord' (by omega) hqe hn0,
    newFresh_outN hnf hord hord' (by omega) hqe hn8, ?_⟩
  have := hcell M (Or.inl rfl)
  unfold rd at *
  rw [this]
  exact fits_ext hExt hroot

end InitECandidate.Solver.MemSafe.Trie
