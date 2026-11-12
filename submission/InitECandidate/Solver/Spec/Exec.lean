import InitECandidate.Solver.Spec.Code

/-!
# Exact symbolic execution of straight-line code

Clause-wise evaluation equations under success hypotheses, for proving return values
of small callee bodies; plus the code-lookup facts for two-parameter functions.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {width : Nat} [NeZero width] {σ : Type}

section exec
variable {s : PanSemStateFiniteExact width σ}

theorem eval_seq_none {a b : ProgHOL width} (h : (evaluateHOLFiniteState s a).1 = none) :
    evaluateHOLFiniteState s (.seq a b) =
      evaluateHOLFiniteState (evaluateHOLFiniteState s a).2 b := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  rw [h]

theorem eval_seq_some {a b : ProgHOL width} {r : PanSemResultExact width}
    (h : (evaluateHOLFiniteState s a).1 = some r) :
    evaluateHOLFiniteState s (.seq a b) = evaluateHOLFiniteState s a := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  rw [h]

theorem eval_ite_t {c : ExpHOL width} {a b : ProgHOL width} {w : BitVec width}
    (h : ev s c = some (.val (.word w))) (hw : w ≠ 0) :
    evaluateHOLFiniteState s (.ite c a b) = evaluateHOLFiniteState s a := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  simp only [ev] at h
  rw [h]
  dsimp only
  rw [if_neg hw]

theorem eval_ite_f {c : ExpHOL width} {a b : ProgHOL width}
    (h : ev s c = some (.val (.word 0))) :
    evaluateHOLFiniteState s (.ite c a b) = evaluateHOLFiniteState s b := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  simp only [ev] at h
  rw [h]
  simp

theorem eval_ite_bool {c : ExpHOL width} {a b : ProgHOL width} {p : Bool}
    (h : ev s c = some (.val (.word (if p then 1 else 0)))) :
    evaluateHOLFiniteState s (.ite c a b) =
      if p then evaluateHOLFiniteState s a else evaluateHOLFiniteState s b := by
  cases p with
  | true =>
      simp only [if_true] at h ⊢
      exact eval_ite_t h (by
        intro h1
        have := congrArg BitVec.toNat h1
        simp [Nat.mod_eq_of_lt (Nat.one_lt_two_pow (NeZero.ne width))] at this)
  | false => simp only [Bool.false_eq_true, if_false] at h ⊢; exact eval_ite_f h

theorem eval_return_ok {e : ExpHOL width} {v : ValueHOL width} (h : ev s e = some v)
    (hsz : Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL s.structs (shapeOfHOLExact v) ≤ 32) :
    evaluateHOLFiniteState s (.return e) = (some (.returned v), emptyLocalsHOLFinite s) := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.return e)]
  dsimp only
  simp only [ev] at h
  rw [h]
  simp [hsz]

theorem eval_dec_ok {n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width}
    {v : ValueHOL width} (h : ev s e = some v) (hsh : shapeEqHOL sh (shapeOfHOLExact v) = true) :
    (evaluateHOLFiniteState s (.dec n sh e b)).1 =
      (evaluateHOLFiniteState (setVarHOLFinite n v s) b).1 := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
  dsimp only
  simp only [ev] at h
  rw [h]
  simp [hsh]

theorem eval_primitive_ok {n : MlS} {o : PrimOp} {args : List (ExpHOL width)}
    {vs : List (ValueHOL width)} {v : ValueHOL width} (h : evs s args = some vs)
    (hp : panPrimopHOLExact o vs = some v) (hv : isValidValueHOLFinite s .local n v = true) :
    evaluateHOLFiniteState s (.primitive n o args) = (none, setVarHOLFinite n v s) := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.primitive n o args)]
  dsimp only
  simp only [evs] at h
  rw [h]
  dsimp only
  rw [hp]
  rw [isValidValueHOLFinite_eq] at hv
  simp [hv]

theorem eval_assign_ok {n : MlS} {e : ExpHOL width} {v : ValueHOL width} (h : ev s e = some v)
    (hv : isValidValueHOLFinite s .local n v = true) :
    evaluateHOLFiniteState s (.assign .local n e) = (none, setVarHOLFinite n v s) := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign .local n e)]
  dsimp only
  simp only [ev] at h
  rw [h]
  rw [isValidValueHOLFinite_eq] at hv
  simp [hv, setKvarHOLFinite]

theorem ev_op_word {o : BinOp} {es : List (ExpHOL width)} {v : ValueHOL width}
    (h : ev s (.op o es) = some v) : ∃ w, v = .val (.word w) := by
  simp only [ev, evalHOLExact] at h
  split at h
  · split at h
    · obtain ⟨w, -, rfl⟩ := Option.map_eq_some_iff.mp h
      exact ⟨w, rfl⟩
    · simp at h
  · simp at h

theorem ev_shift_word {o : Shift} {a b : ExpHOL width} {v : ValueHOL width}
    (h : ev s (.shift o a b) = some v) : ∃ w, v = .val (.word w) := by
  simp only [ev, evalHOLExact] at h
  split at h
  · obtain ⟨w, -, rfl⟩ := Option.map_eq_some_iff.mp h
    exact ⟨w, rfl⟩
  · simp at h

theorem evs_cons_inv {e : ExpHOL width} {es : List (ExpHOL width)} {vs : List (ValueHOL width)}
    (h : evs s (e :: es) = some vs) :
    ∃ v vs', vs = v :: vs' ∧ ev s e = some v ∧ evs s es = some vs' := by
  simp only [evs, ev, evalListHOLExact] at h ⊢
  split at h
  · rename_i v vs' hv hvs
    simp only [Option.some.injEq] at h
    exact ⟨v, vs', h.symm, hv, hvs⟩
  · simp at h

theorem ev_rstruct_inv {es : List (ExpHOL width)} {v : ValueHOL width}
    (h : ev s (.rstruct es) = some v) : ∃ vs, v = .rStruct vs ∧ evs s es = some vs := by
  simp only [ev, evs, evalHOLExact] at h ⊢
  obtain ⟨vs, hvs, rfl⟩ := Option.map_eq_some_iff.mp h
  exact ⟨vs, rfl, hvs⟩

end exec

/-! ## Shapes and sizes -/

theorem size_one (st : Flapjack.Pancake.PanLang.StructContextExact) :
    Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL st .one = 1 := by
  simp [Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL]

theorem size_shK (st : Flapjack.Pancake.PanLang.StructContextExact) (k : Nat) :
    Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL st (shK k) = k := by
  simp only [shK, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL]
  induction k with
  | zero => simp
  | succ k ih =>
      simp only [List.replicate_succ, Flapjack.Pancake.PanLang.sizeOfShapesWithContextHOL, ih,
        Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL]
      omega

theorem size_val_le (st : Flapjack.Pancake.PanLang.StructContextExact) (w : BitVec 64) :
    Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL st
      (shapeOfHOLExact (.val (.word w) : ValueHOL 64)) ≤ 32 := by
  rw [shapeOf_val, size_one]; decide

theorem size_wv_le (st : Flapjack.Pancake.PanLang.StructContextExact) {ws : List (BitVec 64)}
    (h : ws.length ≤ 32) :
    Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL st (shapeOfHOLExact (wv ws)) ≤ 32 := by
  rw [shapeOf_wv, size_shK]; exact h

/-! ## Code lookup of two-parameter functions -/

theorem lookupCode_two {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa pb : MlS} {sa sb : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa), (pb, sb)], bd, rsh)) (hne : pa ≠ pb)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ∃ A B, vs = [A, B] ∧ shapeEqHOL sa (shapeOfHOLExact A) = true ∧
      shapeEqHOL sb (shapeOfHOLExact B) = true ∧ callee.lookup pa = some A ∧
      callee.lookup pb = some B := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, hall⟩ := hcond
      match vs, hlen, hall with
      | [A, B], _, hall =>
          simp only [List.zip_cons_cons, List.zip_nil_right, List.all_cons, List.all_nil,
            Bool.and_true, Bool.and_eq_true] at hall
          refine ⟨rfl, rfl, A, B, rfl, hall.1, hall.2, ?_, ?_⟩
          · simp [hne]
          · simp
    · simp at hx

theorem lookupCode_one {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa : MlS} {sa : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa)], bd, rsh))
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ∃ A, vs = [A] ∧ shapeEqHOL sa (shapeOfHOLExact A) = true ∧
      callee.lookup pa = some A := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, hall⟩ := hcond
      match vs, hlen, hall with
      | [A], _, hall =>
          simp only [List.zip_cons_cons, List.zip_nil_right, List.all_cons, List.all_nil,
            Bool.and_true] at hall
          refine ⟨rfl, rfl, A, rfl, hall, ?_⟩
          simp
    · simp at hx

/-! ## Add with carry -/

theorem addCarry_spec (l r c : BitVec 64) (hc : c.toNat ≤ 1) :
    (wordAddCarryHOL l r c).1.toNat + 2 ^ 64 * (wordAddCarryHOL l r c).2.toNat =
      l.toNat + r.toNat + c.toNat ∧ (wordAddCarryHOL l r c).2.toNat ≤ 1 := by
  have hl := l.isLt
  have hr := r.isLt
  have hcz : (if (c == 0) = true then 0 else 1) = c.toNat := by
    by_cases h0 : c.toNat = 0
    · have : c = 0 := BitVec.eq_of_toNat_eq (by simpa using h0)
      simp [this]
    · have : (c == 0) = false := by
        simp only [beq_eq_false_iff_ne, ne_eq]
        intro h; apply h0; simp [h]
      simp only [this, Bool.false_eq_true, if_false]
      omega
  unfold wordAddCarryHOL
  dsimp only
  rw [hcz]
  split
  · rename_i hge
    simp only [BitVec.toNat_ofNat]
    constructor
    · rw [Nat.mod_eq_of_lt (a := 1) (by decide)]
      omega
    · simp
  · rename_i hlt
    simp only [BitVec.toNat_ofNat]
    constructor
    · rw [Nat.mod_eq_of_lt (by omega)]
      simp
    · simp

theorem toNat_xor_m1 (b : BitVec 64) : (b ^^^ (0 - 1)).toNat = 2 ^ 64 - 1 - b.toNat := by
  have : (0 - 1 : BitVec 64) = BitVec.allOnes 64 := by decide
  rw [this, BitVec.xor_allOnes, BitVec.toNat_not]

end InitECandidate.Solver.Spec
