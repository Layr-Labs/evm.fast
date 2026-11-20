import InitECandidate.Solver.Improvements.FourthBalEncodeContinuation
import InitECandidate.Solver.MemSafe.Aw.Kit

/-! The existing semantic sorted-key return theorem supplies a heap bound.
The implication is intentionally restricted to nonnegative signed lengths;
the initialized signed loop exits immediately for a negative count. -/
set_option autoImplicit false
namespace FourthEncoderKeysFacts
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Aw
variable {σ : Type}

theorem keysRet_count {a : AwE σ} (hK : AwOK a) {O N : BitVec 64}
    (hO : a.p0.hp ≤ O.toNat)
    (hN : N.toNat < 2^63 → O.toNat + N.toNat * 32 + 8 ≤ heapEnd)
    (hsign : N.toNat < 2^63) : N.toNat ≤ 7864319 := by
  have hbase : heapBase ≤ O.toNat := Nat.le_trans hK.hbase (Nat.le_trans hK.hle hO)
  have hlim := hN hsign
  have hb : heapBase = 2701131776 := rfl
  have he : heapEnd = 2952790016 := rfl
  omega

#print axioms keysRet_count
end FourthEncoderKeysFacts
