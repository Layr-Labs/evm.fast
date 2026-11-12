import InitECandidate.Solver.MemSafe.Frames.GasSum

/-!
# `add_sat`, `min`, `charge_state_gas`, `credit_state_gas_refund`: code and exact effects

```
fun 1 add_sat(1 a, 1 b) { var s = a + b; if s <+ a { return WORD_MAX; } return s; }
fun 1 min(1 a, 1 b) { if a <+ b { return a; } return b; }
fun 1 charge_state_gas(1 amount) {
  var sgl = lds 1 (ev + EV_STATE_GAS_LEFT); var gl = lds 1 (ev + EV_GAS_LEFT);
  if sgl >=+ amount { st ev + EV_STATE_GAS_LEFT, sgl - amount; return 0; }
  var 1 tot = add_sat(sgl, gl);
  if tot >=+ amount { var rem = amount - sgl;
    st ev + EV_STATE_GAS_LEFT, 0; st ev + EV_GAS_LEFT, gl - rem;
    st ev + EV_STATE_GAS_SPILLED, (lds 1 (ev + EV_STATE_GAS_SPILLED)) + rem; return 0; }
  throw EvmErr E_OUT_OF_GAS; return 0; }
fun 1 credit_state_gas_refund(1 amount) {
  var spilled = lds 1 (ev + EV_STATE_GAS_SPILLED);
  var 1 from_gl = min(amount, spilled);
  st ev + EV_GAS_LEFT, (lds 1 (ev + EV_GAS_LEFT)) + from_gl;
  st ev + EV_STATE_GAS_SPILLED, spilled - from_gl;
  st ev + EV_STATE_GAS_LEFT, (lds 1 (ev + EV_STATE_GAS_LEFT)) + (amount - from_gl);
  return 0; }
```
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

def addSatBody : ProgHOL 64 :=
  .dec (nm "s") .one (.op .add [lv (nm "a"), lv (nm "b")])
    (.seq (.ite (.cmp .lower (lv (nm "s")) (lv (nm "a"))) (.return (cw 18446744073709551615)) .skip)
      (.return (lv (nm "s"))))

def minBodyF : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (lv (nm "a")) (lv (nm "b"))) (.return (lv (nm "a"))) .skip)
    (.return (lv (nm "b")))

def csgBody : ProgHOL 64 :=
  .dec (nm "sgl") .one (gLoad "ev" 72)
    (.dec (nm "gl") .one (gLoad "ev" 64)
      (.seq
        (.ite (.cmp .notLower (lv (nm "sgl")) (lv (nm "amount")))
          (.seq (stG "ev" 72 (.op .sub [lv (nm "sgl"), lv (nm "amount")])) (.return (cw 0)))
          .skip)
        (.decCall (nm "tot") .one (nm "add_sat") [lv (nm "sgl"), lv (nm "gl")]
          (.seq
            (.ite (.cmp .notLower (lv (nm "tot")) (lv (nm "amount")))
              (.dec (nm "rem") .one (.op .sub [lv (nm "amount"), lv (nm "sgl")])
                (.seq (stG "ev" 72 (cw 0))
                (.seq (stG "ev" 64 (.op .sub [lv (nm "gl"), lv (nm "rem")]))
                (.seq (stG "ev" 192 (.op .add [gLoad "ev" 192, lv (nm "rem")]))
                  (.return (cw 0))))))
              .skip)
            (.seq (.raise (nm "EvmErr") (cw 4)) (.return (cw 0)))))))

def creditBody : ProgHOL 64 :=
  .dec (nm "spilled") .one (gLoad "ev" 192)
    (.decCall (nm "from_gl") .one (nm "min") [lv (nm "amount"), lv (nm "spilled")]
      (.seq (stG "ev" 64 (.op .add [gLoad "ev" 64, lv (nm "from_gl")]))
      (.seq (stG "ev" 192 (.op .sub [lv (nm "spilled"), lv (nm "from_gl")]))
      (.seq (stG "ev" 72 (.op .add [gLoad "ev" 72, .op .sub [lv (nm "amount"), lv (nm "from_gl")]]))
        (.return (cw 0))))))

theorem entry_addSat : fnEntry Guest.Software.guestFn_add_sat =
    (nm "add_sat", [(nm "a", .one), (nm "b", .one)], addSatBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_addSat :
    guestCode (nm "add_sat") = some ([(nm "a", .one), (nm "b", .one)], addSatBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 441) (by decide)) ⟨_, rfl⟩
    entry_addSat

theorem entry_minF : fnEntry Guest.Software.guestFn_min =
    (nm "min", [(nm "a", .one), (nm "b", .one)], minBodyF, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_minF : guestCode (nm "min") = some ([(nm "a", .one), (nm "b", .one)], minBodyF, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 31) (by decide)) ⟨_, rfl⟩
    entry_minF

theorem entry_csg : fnEntry Guest.Software.guestFn_charge_state_gas =
    (nm "charge_state_gas", [(nm "amount", .one)], csgBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_csg :
    guestCode (nm "charge_state_gas") = some ([(nm "amount", .one)], csgBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 449) (by decide)) ⟨_, rfl⟩
    entry_csg

theorem entry_credit : fnEntry Guest.Software.guestFn_credit_state_gas_refund =
    (nm "credit_state_gas_refund", [(nm "amount", .one)], creditBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_credit :
    guestCode (nm "credit_state_gas_refund") = some ([(nm "amount", .one)], creditBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 450) (by decide)) ⟨_, rfl⟩
    entry_credit

/-! ## `add_sat`, `min` -/

/-- A two-word pure function: the result, the memory and the globals. -/
def Pure2 (f : BitVec 64 → BitVec 64 → BitVec 64) (vs : List (ValueHOL 64)) (s : State σ)
    (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ∃ a b, vs = [.val (.word a), .val (.word b)] ∧ r = .returned (.val (.word (f a b))) ∧
    t.memory = s.memory ∧ t.globals = s.globals

def addSatF (a b : BitVec 64) : BitVec 64 := if a + b < a then 18446744073709551615 else a + b
def minF (a b : BitVec 64) : BitVec 64 := if a < b then a else b

theorem lower_iff {x y : BitVec 64} :
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .lower x y = true ↔ x < y := by
  simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL]

theorem addSat_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "add_sat") (fun vs s r t => Good (some r) → Pure2 addSatF vs s r t) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, ha, hb, hA, hB⟩ := lookupCode_two code_addSat (by decide) hl
  obtain ⟨a, rfl⟩ := val_of_shapeEq_one ha
  obtain ⟨b, rfl⟩ := val_of_shapeEq_one hb
  have hla : s0.locals.lookup (nm "a") = some (.val (.word a)) := by rw [hloc]; exact hA
  have hlb : s0.locals.lookup (nm "b") = some (.val (.word b)) := by rw [hloc]; exact hB
  refine hoareG_dec fun s1 _ hs1 v hv _ => ?_
  subst hs1
  rw [ev_add2 (ev_lv_eq hla) (ev_lv_eq hlb)] at hv
  cases hv
  have hls : (setVarHOLFinite (nm "s") (.val (.word (a + b))) s1).locals.lookup (nm "s") =
      some (.val (.word (a + b))) := lk_set_self _ _ _
  have hla' : (setVarHOLFinite (nm "s") (.val (.word (a + b))) s1).locals.lookup (nm "a") =
      some (.val (.word a)) := by rw [lk_set_ne _ _ (by decide)]; exact hla
  refine hoareG_seq (R := fun r u => (r = none ∧ ¬ (a + b < a) ∧
        u = setVarHOLFinite (nm "s") (.val (.word (a + b))) s1) ∨
      (r = some (.returned (.val (.word 18446744073709551615))) ∧ a + b < a ∧
        u.memory = s1.memory ∧ u.globals = s1.globals)) ?_ ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun u _ ⟨hu, w, hw, hw0⟩ v hv => ?_
      subst hu
      rw [ev_cw] at hv; cases hv
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv_eq hls] at hx; rw [ev_lv_eq hla'] at hy
      cases hx; cases hy
      exact Or.inr ⟨rfl, lower_iff.mp hxy, rfl, rfl⟩
    · refine hoareG_skip fun u _ ⟨hu, hw⟩ => ?_
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hw
      rw [ev_lv_eq hls] at hx; rw [ev_lv_eq hla'] at hy
      cases hx; cases hy
      exact Or.inl ⟨rfl, (fun h => by rw [lower_iff.mpr h] at hxy; cases hxy), rfl⟩
  · intro r t _ hr _ h
    rcases h with ⟨h0, -⟩ | ⟨rfl, hlt, hm, hg⟩
    · exact absurd h0 hr
    · intro rr hrr
      cases hrr
      refine ⟨a, b, rfl, ?_, hm, hg⟩
      unfold addSatF; rw [if_pos hlt]
  · refine hoareG_pre (hoareG_pure (P0 := ¬ (a + b < a))
      (P := fun u => u = setVarHOLFinite (nm "s") (.val (.word (a + b))) s1) fun hnl => ?_) ?_
    · refine hoareG_return fun u' _ hu' v hv => ?_
      subst hu'
      rw [ev_lv_eq hls] at hv; cases hv
      intro rr hrr
      cases hrr
      refine ⟨a, b, rfl, ?_, rfl, rfl⟩
      unfold addSatF; rw [if_neg hnl]
    · rintro u - (⟨-, hnl, rfl⟩ | ⟨h0, -⟩)
      · exact ⟨hnl, rfl⟩
      · cases h0

theorem min_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "min") (fun vs s r t => Good (some r) → Pure2 minF vs s r t) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, ha, hb, hA, hB⟩ := lookupCode_two code_minF (by decide) hl
  obtain ⟨a, rfl⟩ := val_of_shapeEq_one ha
  obtain ⟨b, rfl⟩ := val_of_shapeEq_one hb
  have hla : s0.locals.lookup (nm "a") = some (.val (.word a)) := by rw [hloc]; exact hA
  have hlb : s0.locals.lookup (nm "b") = some (.val (.word b)) := by rw [hloc]; exact hB
  refine hoareG_seq (R := fun r u => (r = none ∧ ¬ (a < b) ∧ u = s0) ∨
      (r = some (.returned (.val (.word a))) ∧ a < b ∧ u.memory = s0.memory ∧
        u.globals = s0.globals)) ?_ ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun u _ ⟨hu, w, hw, hw0⟩ v hv => ?_
      subst hu
      rw [ev_lv_eq hla] at hv; cases hv
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv_eq hla] at hx; rw [ev_lv_eq hlb] at hy
      cases hx; cases hy
      exact Or.inr ⟨rfl, lower_iff.mp hxy, rfl, rfl⟩
    · refine hoareG_skip fun u _ ⟨hu, hw⟩ => ?_
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hw
      rw [ev_lv_eq hla] at hx; rw [ev_lv_eq hlb] at hy
      cases hx; cases hy
      exact Or.inl ⟨rfl, (fun h => by rw [lower_iff.mpr h] at hxy; cases hxy), rfl⟩
  · intro r t _ hr _ h
    rcases h with ⟨h0, -⟩ | ⟨rfl, hlt, hm, hg⟩
    · exact absurd h0 hr
    · intro rr hrr
      cases hrr
      refine ⟨a, b, rfl, ?_, hm, hg⟩
      unfold minF; rw [if_pos hlt]
  · refine hoareG_pre (hoareG_pure (P0 := ¬ (a < b)) (P := fun u => u = s0) fun hnl => ?_) ?_
    · refine hoareG_return fun u' _ hu' v hv => ?_
      subst hu'
      rw [ev_lv_eq hlb] at hv; cases hv
      intro rr hrr
      cases hrr
      refine ⟨a, b, rfl, ?_, rfl, rfl⟩
      unfold minF; rw [if_neg hnl]
    · rintro u - (⟨-, hnl, rfl⟩ | ⟨h0, -⟩)
      · exact ⟨hnl, rfl⟩
      · cases h0

end InitECandidate.Solver.MemSafe.Frames
