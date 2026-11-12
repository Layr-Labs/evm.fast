import InitECandidate.Solver.MemSafe.Ops4.SwapnA

set_option autoImplicit false

/-!
# Ops4: the pure callee specs of `op_swapn` / `op_exchange`
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Mod (V W toNat_W W_toNat ev_addW ev_subW ev_lsrW)
open InitECandidate.Solver.MemSafe.Struct (PureR PureP pureR_of hoareG_ifRet)

variable {σ : Type} {X : Ctx 64}

/-! ## `code_imm` -/

def codeImmBody : ProgHOL 64 :=
  .dec (nm "pc") .one (gLoad "ev" 0)
    (.seq (.ite (.cmp .lower (.op .add [lv (nm "pc"), cw 1]) (gLoad "ev" 56))
        (.return (.loadByte (.op .add [gLoad "ev" 48, lv (nm "pc"), cw 1]))) .skip)
      (.return (cw 0)))

theorem entry_code_imm : fnEntry Guest.Software.guestFn_code_imm =
    (nm "code_imm", [], codeImmBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_code_imm : guestCode (nm "code_imm") = some ([], codeImmBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 518) (by decide)) ⟨_, rfl⟩
    entry_code_imm

theorem pureR_code_imm (hC : X.code.lookup = guestCode) :
    PureR σ X (nm "code_imm") (fun _ _ v => ∃ w : BitVec 64, v = V w ∧ w.toNat ≤ 255) := by
  refine pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen code_code_imm hl
  unfold codeImmBody
  refine hoareG_dec fun s hs hP v hv hsh => ?_
  subst hP
  refine hoareG_seq (R := fun r t => (r ≠ none → PureP s (fun v => ∃ w : BitVec 64, v = V w ∧
      w.toNat ≤ 255) r t) ∧ (r = none → t = setVarHOLFinite (nm "pc") v s)) ?_
    (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun u _ ⟨hu, w, hw, hw0⟩ x hx => ⟨fun _ => ?_, fun h => by cases h⟩
      subst hu
      obtain ⟨b, hb, hb256⟩ := ev_loadByte_word hx
      exact ⟨rfl, rfl, x, rfl, b, hb, by omega⟩
    · exact hoareG_skip fun u _ ⟨hu, hz⟩ => ⟨fun h => absurd rfl h, fun _ => hu⟩
  · refine hoareG_return fun u _ hR x hx => ?_
    have hu := hR.2 rfl
    subst hu
    rw [ev_cw] at hx
    cases hx
    exact ⟨rfl, rfl, _, rfl, BitVec.ofNat 64 0, rfl, by simp⟩


theorem ev_and_k {s : State σ} {x : BitVec 64} {e : ExpHOL 64}
    (he : ev s e = some (.val (.word x))) (k : Nat) :
    ev s (.op .and [e, cw k]) = some (.val (.word (x &&& BitVec.ofNat 64 k))) := by
  rw [ev_op (xs := [x, BitVec.ofNat 64 k]) (evs_cons he (evs_cons (ev_cw s k) evs_nil))]
  simp only [Flapjack.wordOpHOL, Flapjack.wordOp, List.foldr, Option.map_some]
  have e : (AndOp.and (BitVec.ofNat 64 k) (Complement.complement (0 : BitVec 64)) : BitVec 64) =
      BitVec.ofNat 64 k := by
    show BitVec.ofNat 64 k &&& ~~~(0 : BitVec 64) = _
    have : (~~~(0 : BitVec 64)) = BitVec.allOnes 64 := by decide
    rw [this, BitVec.and_allOnes]
  rw [e]
  rfl

/-! ## `decode_single` -/

def decodeBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (cw 0) (.op .or [.cmp .notLower (cw 90) (lv (nm "x")),
        .cmp .notLower (lv (nm "x")) (cw 128)]))
      (.return (.op .and [.op .add [lv (nm "x"), cw 145], cw 255])) .skip)
    (.seq (.raise (nm "EvmErr") (cw 10)) (.return (cw 0)))

theorem entry_decode_single : fnEntry Guest.Software.guestFn_decode_single =
    (nm "decode_single", [(nm "x", .one)], decodeBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_decode_single : guestCode (nm "decode_single") =
    some ([(nm "x", .one)], decodeBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 519) (by decide)) ⟨_, rfl⟩
    entry_decode_single

theorem pureX_decode_single (hC : X.code.lookup = guestCode) :
    PureX σ X (nm "decode_single") (fun _ _ v => ∃ w : BitVec 64, v = V w ∧ w.toNat ≤ 255) := by
  refine pureX_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_decode_single hl
  obtain ⟨x, rfl⟩ := val_of_shapeEq_one hA
  have hx : s0.locals.lookup (nm "x") = some (V x) := by rw [hloc]; exact hla
  unfold decodeBody
  refine hoareG_seq (R := fun r t => (r ≠ none → PureXP s0 (fun v => ∃ w : BitVec 64, v = V w ∧
      w.toNat ≤ 255) r t) ∧ (r = none → t = s0)) ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun u _ ⟨hu, w, hw, hw0⟩ v hv => ⟨fun _ => ?_, fun h => by cases h⟩
      subst hu
      rw [ev_and_k (ev_add2 (Struct.ev_lw' hx) (ev_cw _ 145)) 255] at hv
      cases hv
      refine ⟨rfl, rfl, Or.inl ⟨_, rfl, _, rfl, ?_⟩⟩
      rw [BitVec.toNat_and]
      exact le_trans (Nat.and_le_right) (by simp)
    · exact hoareG_skip fun u _ ⟨hu, hz⟩ => ⟨fun h => absurd rfl h, fun _ => hu⟩
  · refine hoareG_seq (R := fun r t => r ≠ none ∧ PureXP s0 (fun v => ∃ w : BitVec 64, v = V w ∧
      w.toNat ≤ 255) r t) ?_ (fun r t _ hr _ h => h.2) ?_
    · refine hoareG_raise fun u _ hu v hv => ?_
      have hu' := hu.2 rfl
      subst hu'
      exact ⟨by simp, rfl, rfl, Or.inr ⟨_, rfl, Or.inl ⟨_, _, rfl⟩⟩⟩
    · exact hoareG_false fun u _ hu => by cases hu.1 rfl


/-! ## `max` -/

theorem pureR_max (hC : X.code.lookup = guestCode) :
    PureR σ X (nm "max") (fun vs _ v => ∀ A B : BitVec 64, vs = [V A, V B] →
      ∃ w, v = V w ∧ w.toNat = max A.toNat B.toNat) := by
  refine pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two Mod.code_max (by decide) hl
  obtain ⟨A', rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨B', rfl⟩ := val_of_shapeEq_one hB'
  have hla' : s0.locals.lookup (nm "a") = some (V A') := by rw [hloc]; exact hla
  have hlb' : s0.locals.lookup (nm "b") = some (V B') := by rw [hloc]; exact hlb
  unfold Mod.maxBody
  refine hoareG_seq (R := fun r t => (r ≠ none → PureP s0 (fun v => ∀ A B : BitVec 64,
      [V A', V B'] = [V A, V B] → ∃ w, v = V w ∧ w.toNat = max A.toNat B.toNat) r t) ∧
      (r = none → ¬ B'.toNat < A'.toNat ∧ t = s0)) ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun s _ ⟨hs, w, hw, hw0⟩ v hv => ⟨fun _ => ?_, fun h => by cases h⟩
      subst hs
      rw [ev_cmp (Struct.ev_lw' hlb') (Struct.ev_lw' hla')] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      subst hw
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, BitVec.lt_def] at hw0
      rw [Struct.ev_lw' hla'] at hv
      cases hv
      refine ⟨rfl, rfl, _, rfl, fun A B hvs => ?_⟩
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl⟩ := hvs
      refine ⟨A', rfl, ?_⟩
      have hlt : B'.toNat < A'.toNat := by
        by_contra hcon
        exact hw0 (by simp [hcon])
      omega
    · refine hoareG_skip fun s _ ⟨hs, hw⟩ => ⟨fun h => absurd rfl h, fun _ => ⟨?_, hs⟩⟩
      subst hs
      rw [ev_cmp (Struct.ev_lw' hlb') (Struct.ev_lw' hla')] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, BitVec.lt_def] at hw
      by_contra hcon
      simp [hcon] at hw
  · refine hoareG_return fun t _ ht v hv => ?_
    obtain ⟨hnlt, ht0⟩ := ht.2 rfl
    subst ht0
    rw [Struct.ev_lw' hlb'] at hv
    cases hv
    refine ⟨rfl, rfl, _, rfl, fun A B hvs => ?_⟩
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    exact ⟨B', rfl, by omega⟩

end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.pureR_code_imm
#print axioms InitECandidate.Solver.MemSafe.Ops4.pureX_decode_single
#print axioms InitECandidate.Solver.MemSafe.Ops4.pureR_max
