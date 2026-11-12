import InitECandidate.Solver.MemSafe.Ptx.DropOwn
import InitECandidate.Solver.MemSafe.Ptx.PtT35

/-!
# F3h: the delete table's key, order and header cells (pure memory facts)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- The key bytes of a live entry lie in the key array (and the key slot is 8-aligned), for 20-byte keys. -/
theorem tbl_key_facts {s : State σ} {T : BitVec 64} (hwf : Inv.TableWF s T)
    (hkl : Inv.hdr s.memory T 0 = BitVec.ofNat 64 20) {I : BitVec 64} (hI : I.toNat < Inv.CNT s.memory T) :
    (Inv.keyPtr s.memory T (Inv.ORD s.memory T I)).toNat % 8 = 0 ∧
    ∀ c : BitVec 64, (Inv.keyPtr s.memory T (Inv.ORD s.memory T I)).toNat ≤ c.toNat →
      c.toNat < (Inv.keyPtr s.memory T (Inv.ORD s.memory T I)).toNat + 20 →
      Spec.Inv.InR c (Inv.hdr s.memory T 32) ((Inv.hdr s.memory T 8).toNat * (Inv.CAP s.memory T + 1)) := by
  obtain ⟨hsep, L, hsh, -⟩ := hwf
  obtain ⟨hlv, -, -⟩ := hsh.order_live I hI
  obtain ⟨h1, h2⟩ := hsh.live_range _ hlv
  obtain ⟨-, -, -, hK8, hS8, hkS, -, -, -, hK, -⟩ := hsep
  have hkl' : (Inv.hdr s.memory T 0).toNat = 20 := by
    rw [hkl, BitVec.toNat_ofNat]
  have hjS : (Inv.ORD s.memory T I).toNat * (Inv.hdr s.memory T 8).toNat ≤
      Inv.CAP s.memory T * (Inv.hdr s.memory T 8).toNat := Nat.mul_le_mul_right _ h2
  have hCS : Inv.CAP s.memory T * (Inv.hdr s.memory T 8).toNat + (Inv.hdr s.memory T 8).toNat =
      (Inv.hdr s.memory T 8).toNat * (Inv.CAP s.memory T + 1) := by
    rw [Nat.mul_comm (Inv.hdr s.memory T 8).toNat, Nat.add_mul, Nat.one_mul]
  have hlt : (Inv.hdr s.memory T 32).toNat +
      (Inv.ORD s.memory T I).toNat * (Inv.hdr s.memory T 8).toNat < 2 ^ 64 := by
    rcases Nat.eq_zero_or_pos (Inv.hdr s.memory T 8).toNat with h0 | hp
    · rw [h0, Nat.mul_zero]; have := (Inv.hdr s.memory T 32).isLt; omega
    · omega
  have hkp : (Inv.keyPtr s.memory T (Inv.ORD s.memory T I)).toNat =
      (Inv.hdr s.memory T 32).toNat + (Inv.ORD s.memory T I).toNat * (Inv.hdr s.memory T 8).toNat := by
    unfold Inv.keyPtr
    rw [BitVec.toNat_add, BitVec.toNat_mul, Nat.mod_eq_of_lt (a := (Inv.ORD s.memory T I).toNat * _)
      (by omega), Nat.mod_eq_of_lt hlt]
  rw [hkp]
  refine ⟨?_, fun c hc1 hc2 => ⟨by omega, by omega⟩⟩
  have : (Inv.ORD s.memory T I).toNat * (Inv.hdr s.memory T 8).toNat % 8 = 0 := by
    rw [Nat.mul_mod, hS8]; simp
  omega

end InitECandidate.Solver.MemSafe.Ptx
