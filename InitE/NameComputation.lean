import InitE.MetadataComputation

/-! Reflect byte-name fingerprints to numeric literals. The returned proof is
reflexivity, so the kernel must check the original fold equals that literal.
Native computation proposes the result but adds no reduction axiom. -/
namespace InitE.NameComputation
open Lean Meta Sym Meta.Tactic.Cbv

scoped cbv_simproc cbv_eval evalMlStringLiteral
    (Flapjack.Basis.Pure.MlString.ofString _) := fun e => do
  let_expr Flapjack.Basis.Pure.MlString.ofString s := e | return .rfl
  let some literal := Sym.getStringValue? s | return .rfl
  let bytes := literal.toList.map (fun c => BitVec.ofNat 8 c.toNat)
  let result ← Sym.share (mkApp (mkConst ``Flapjack.Basis.Pure.MlString.MlString.implode)
    (toExpr bytes))
  return .step result (← Sym.mkEqRefl result) (done := true)

scoped cbv_simproc cbv_eval evalNameFingerprint
    (InitE.MetadataComputation.nameFingerprint _) := fun e => do
  let_expr InitE.MetadataComputation.nameFingerprint name := e | return .rfl
  let_expr Flapjack.Basis.Pure.MlString.MlString.implode bytes := name | return .rfl
  let some bytes := getListLitElems bytes | return .rfl
  let mut fingerprint := 0
  for byte in bytes do
    let some value := Sym.getBitVecValue? byte | return .rfl
    if value.n != 8 then return .rfl
    fingerprint := fingerprint * 257 + value.val.toNat + 1
  let result ← Sym.share (toExpr fingerprint)
  return .step result (← Sym.mkEqRefl result) (done := true)

end InitE.NameComputation
