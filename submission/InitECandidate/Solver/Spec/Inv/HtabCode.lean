import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.Spec.CodeState
import InitECandidate.Solver.Spec.Rlp

/-!
# `htab_truncate`: certified code and expression inversions

* `code_htab_truncate`: the body of `htab_truncate` (`guest/src/lib/htab.pnk`), certified
  against `guestCode` by `cbv`:

  ```
  fun 1 htab_truncate(1 t, 1 n) {
    var stride = lds 1 (t + HT_KEYSTRIDE);
    while (lds 1 (t + HT_COUNT)) >+ n {
      var pos = (lds 1 (t + HT_COUNT)) - 1;
      var leaf = lds 1 ((lds 1 (t + HT_ORDER)) + pos * 8);
      htab_del(t, (lds 1 (t + HT_KEYS)) + leaf * stride);
    }
    return 0; }
  ```
* Inversions of two-argument word operations (`ev_op2_inv`, `ev_panop2_inv`): a successful
  evaluation evaluates both arguments to words.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The code of `htab_truncate` -/

def tLoad (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm "t"), cw k])

def truncCond : ExpHOL 64 := .cmp .lower (lv (nm "n")) (tLoad 24)

def truncKey : ExpHOL 64 := .op .add [tLoad 32, .panop .mul [lv (nm "leaf"), lv (nm "stride")]]

def truncLoopBody : ProgHOL 64 :=
  .dec (nm "pos") .one (.op .sub [tLoad 24, cw 1])
    (.dec (nm "leaf") .one (.load .one (.op .add [tLoad 48, .panop .mul [lv (nm "pos"), cw 8]]))
      (callD (nm "htab_del") [lv (nm "t"), truncKey]))

def truncBody : ProgHOL 64 :=
  .dec (nm "stride") .one (tLoad 8) (.seq (.while truncCond truncLoopBody) (.return (cw 0)))

def truncParams : List (MlS × ShapeHOL) := [(nm "t", .one), (nm "n", .one)]

theorem entry_htab_truncate : fnEntry Guest.Software.guestFn_htab_truncate =
    (nm "htab_truncate", truncParams, truncBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_htab_truncate :
    guestCode (nm "htab_truncate") = some (truncParams, truncBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 140) (by decide)) ⟨_, rfl⟩
    entry_htab_truncate

/-! ## Expression inversions -/

section inv
variable {σ : Type} {s : PanSemStateFiniteExact 64 σ}

theorem evs_two_inv {a b : ExpHOL 64} {vs : List (ValueHOL 64)} (h : evs s [a, b] = some vs) :
    ∃ va vb, vs = [va, vb] ∧ ev s a = some va ∧ ev s b = some vb := by
  obtain ⟨va, vs', rfl, ha, h'⟩ := evs_cons_inv h
  obtain ⟨vb, vs'', rfl, hb, h''⟩ := evs_cons_inv h'
  have : vs'' = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at h''
    exact (Option.some.inj h'').symm
  subst this
  exact ⟨va, vb, rfl, ha, hb⟩

theorem ev_op2_inv {o : BinOp} {a b : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.op o [a, b]) = some v) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      ev s (.op o [a, b]) = (wordOpHOL o [x, y]).map fun w => .val (.word w) := by
  have h' := h
  simp only [ev, evalHOLExact] at h'
  split at h'
  · rename_i values hvals
    split at h'
    · rename_i hall
      obtain ⟨va, vb, rfl, ha, hb⟩ := evs_two_inv (s := s) (a := a) (b := b) hvals
      simp only [List.all_cons, List.all_nil, Bool.and_true, Bool.and_eq_true] at hall
      obtain ⟨hwa, hwb⟩ := hall
      match va, vb, hwa, hwb with
      | .val (.word x), .val (.word y), _, _ => exact ⟨x, y, ha, hb, ev_op2 ha hb⟩
    · simp at h'
  · simp at h'

theorem ev_add2_inv {a b : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.op .add [a, b]) = some v) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      v = .val (.word (x + y)) := by
  obtain ⟨x, y, ha, hb, -⟩ := ev_op2_inv h
  refine ⟨x, y, ha, hb, ?_⟩
  rw [ev_add2 ha hb] at h
  exact (Option.some.inj h).symm

theorem ev_sub2_inv {a b : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.op .sub [a, b]) = some v) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      v = .val (.word (x - y)) := by
  obtain ⟨x, y, ha, hb, -⟩ := ev_op2_inv h
  refine ⟨x, y, ha, hb, ?_⟩
  rw [ev_sub2 ha hb] at h
  exact (Option.some.inj h).symm

theorem ev_mul2_inv {a b : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.panop .mul [a, b]) = some v) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      v = .val (.word (x * y)) := by
  have h' := h
  simp only [ev, evalHOLExact] at h'
  split at h'
  · rename_i values hvals
    split at h'
    · rename_i hall
      obtain ⟨va, vb, rfl, ha, hb⟩ := evs_two_inv (s := s) (a := a) (b := b) hvals
      simp only [List.all_cons, List.all_nil, Bool.and_true, Bool.and_eq_true] at hall
      obtain ⟨hwa, hwb⟩ := hall
      match va, vb, hwa, hwb with
      | .val (.word x), .val (.word y), _, _ =>
          refine ⟨x, y, ha, hb, ?_⟩
          rw [ev_mul2 ha hb] at h
          exact (Option.some.inj h).symm
    · simp at h'
  · simp at h'

/-- A word load `lds 1 (t + k)` from a state with `t = T`. -/
theorem ev_tLoad_inv {k : Nat} {T : BitVec 64} {v : ValueHOL 64}
    (ht : s.locals.lookup (nm "t") = some (.val (.word T))) (h : ev s (tLoad k) = some v) :
    v = .val (s.memory (T + BitVec.ofNat 64 k)) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one h
  rw [ev_add2 (show ev s (lv (nm "t")) = some (.val (.word T)) from ht) (ev_cw s k)] at hw
  cases hw
  rfl

end inv

end InitECandidate.Solver.Spec.Inv
