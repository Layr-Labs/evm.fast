import Init.Data.ByteArray.Lemmas
import Lean
import Flapjack.Parser
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.KernelComputation
theorem byteArray_loop (bs : ByteArray) (i : Nat) (r : List UInt8) :
    ByteArray.toList.loop bs i r = r.reverse ++ bs.data.toList.drop i := by
  fun_induction ByteArray.toList.loop bs i r with
  | case1 i r hi ih =>
    rw [ih, List.reverse_cons, List.append_assoc]
    have bound : i < bs.data.toList.length := by simpa using hi
    rw [List.drop_eq_getElem_cons bound]
    have element : bs.get! i = bs.data.toList[i] := by
      change bs.data[i]! = bs.data.toList[i]
      rw [getElem!_pos bs.data i hi]
      rfl
    rw [element]
    rfl
  | case2 i r hi =>
    have bound : bs.data.toList.length ≤ i := by simpa using Nat.le_of_not_gt hi
    simp [List.drop_eq_nil_of_le bound]

theorem byteArray_toList (bs : ByteArray) : bs.toList = bs.data.toList := by
  simpa [ByteArray.toList] using byteArray_loop bs 0 []
/-- Preserve the lexer byte view without replaying the byte-array loop. -/
theorem utf8Bytes_eq (s : String) : Flapjack.Parser.utf8Bytes s =
    s.toUTF8.data.toList.map (fun b => Char.ofNat b.toNat) := by
  unfold Flapjack.Parser.utf8Bytes
  rw [byteArray_toList]

open Lean Meta Sym Meta.Tactic.Cbv in
scoped cbv_simproc cbv_eval evalUtf8Bytes (Flapjack.Parser.utf8Bytes _) := fun e => do
  let_expr Flapjack.Parser.utf8Bytes s := e | return .rfl
  let some literal := Sym.getStringValue? s | return .rfl
  let bytes := literal.toUTF8.data.toList.map (fun b => Char.ofNat b.toNat)
  let result ← Sym.share (toExpr bytes)
  return .step result (mkApp (mkConst ``utf8Bytes_eq) s) (done := true)

#print axioms byteArray_toList
#print axioms utf8Bytes_eq
end InitECandidate.Proofs.KernelComputation

