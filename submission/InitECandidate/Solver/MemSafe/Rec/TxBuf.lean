import InitECandidate.Solver.MemSafe.Rec.TxDec

set_option autoImplicit false

/-!
# `TxBuf`: the decoded transaction's address pointers are 20-byte buffers

`txBuf_of_txIn`: if the envelope `[P, P + N)` lies in a `tVAL` object of `Γ` (all slots scalar), the envelope fact
`TxIn P N m tx` of `sumSpecA_decode_transaction` gives `TxBuf Γ p m tx 152`: `TO` is 0 or `BufOK 20`, and so is every
access record's `ACC_ADDR`. (`TxBuf` is F3's statement, `Ptx/Hyp.lean`.)
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

def TxBuf (Γ : Gam) (p : Ptrs) (m : Mem) (tx : BitVec 64) (txTo : Nat) : Prop :=
  (rd m (tx + BitVec.ofNat 64 txTo) = 0 ∨ BufOK Types.guestC Γ p (rd m (tx + BitVec.ofNat 64 txTo)).toNat 20) ∧
  ∀ i : Nat, i < (rd m (tx + 216)).toNat →
    BufOK Types.guestC Γ p (rd m (rd m (tx + 208) + BitVec.ofNat 64 (24 * i))).toNat 20

/-- 20 bytes inside a `tVAL` object are a `BufOK` buffer: every overlapped aligned cell is a scalar cell of it. -/
theorem bufOK_of_tval {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout Types.guestC p Γ) {x : Obj}
    (hx : x ∈ Γ) (ht : x.ty = Types.tVAL) {b : Nat} (h1 : x.lo ≤ b) (h2 : b + 20 ≤ x.hi) :
    BufOK Types.guestC Γ p b 20 := by
  intro c hc
  obtain ⟨c8, c1, c2⟩ := hc
  obtain ⟨x8, xs8, -, -, -⟩ := hL.1 x hx
  simp only [Obj.hi, Obj.lo] at h2 h1 x8
  have hlo : x.base.toNat ≤ c.toNat := by omega
  have hhi : c.toNat + 8 ≤ x.base.toNat + x.size := by omega
  have hk : x.HasSlot ((c.toNat - x.base.toNat) / 8) := by unfold Obj.HasSlot; omega
  left
  refine ⟨x, hx, (c.toNat - x.base.toNat) / 8, hk, ?_, ?_⟩
  · rw [ht]
    have e : ∀ k, (Types.guestC.ty Types.tVAL).slot k = .scalar := fun k => by
      unfold TyD.slot
      rw [show (Types.guestC.ty Types.tVAL).fixed = [] from by decide,
        show (Types.guestC.ty Types.tVAL).rest = .scalar from by decide]
      simp
    exact e _
  · apply BitVec.eq_of_toNat_eq
    rw [(cell_toNat hord hL hx hk).1]
    unfold Obj.lo
    omega

/-- **`TxIn` gives `TxBuf`** when the envelope lies in a `tVAL` object. -/
theorem txBuf_of_txIn {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout Types.guestC p Γ) {x : Obj}
    (hx : x ∈ Γ) (ht : x.ty = Types.tVAL) {P N : BitVec 64} (h1 : x.lo ≤ P.toNat)
    (h2 : P.toNat + N.toNat ≤ x.hi) {m : Mem} {tx : BitVec 64} (h : TxIn P N m tx) : TxBuf Γ p m tx 152 := by
  obtain ⟨h19, hacc⟩ := h
  have e19 : cl tx m 19 = rd m (tx + BitVec.ofNat 64 152) := rfl
  have e26 : cl tx m 26 = rd m (tx + 208) := rfl
  have e27 : cl tx m 27 = rd m (tx + 216) := rfl
  refine ⟨?_, fun i hi => ?_⟩
  · rcases h19 with h0 | ⟨l1, l2⟩
    · exact Or.inl (by rw [← e19]; exact h0)
    · rw [← e19]
      exact Or.inr (bufOK_of_tval hord hL hx ht (by omega) (by omega))
  · rw [← e27] at hi
    obtain ⟨l1, l2⟩ := hacc i hi
    rw [← e26]
    exact bufOK_of_tval hord hL hx ht (by omega) (by omega)

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.txBuf_of_txIn
