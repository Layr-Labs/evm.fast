import InitECandidate.Solver.SourceCost.Basic

/-!
# Recognizer for the p256 carry-fold loops (`P256_FOLD_RETURN`)

The two loops closing `p256_fp_mul` / `p256_fp_sqr`

```
while c < 0 { var {1,1,1,1,1} sa = u256_add_carry(r, P256_P); r = <sa.0, sa.1, sa.2, sa.3>; c = c + sa.4; }
while 0 < c { var 1 ltp = u256_lt(r, P256_P); r = u256_sub(r, P256_P); c = c - ltp; }
```

run at most `2 ^ 64 + 1` iterations of their body (the measures are in `Spec/P256Fold.lean`),
which is far below the pigeonhole bound over the four-word local `r`. The recognizer
`loopP256F` returns the factor `F = 2 ^ 64 + 2` for exactly these two statements. Its
soundness depends on the code of `u256_add_carry`, `u256_lt`, `u256_sub`, so it is a
hypothesis `P256Rule` of the analyzer's soundness theorem, discharged for the guest code
map in `Spec/P256Fold.lean`.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Basis.Pure.MlString (ofString)
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type}

/-- Names compared by `loopP256F`, as byte lists (the AST's own form), so that `decide_cbv` evaluates them without unfolding
string literals; the `@[simp]` lemmas turn them back into `ofString` for the soundness proofs. -/
def p256Nm_c : MlS := Flapjack.Basis.Pure.MlString.MlString.implode [0x63#8]
def p256Nm_ltp : MlS := Flapjack.Basis.Pure.MlString.MlString.implode [0x6c#8, 0x74#8, 0x70#8]
def p256Nm_r : MlS := Flapjack.Basis.Pure.MlString.MlString.implode [0x72#8]
def p256Nm_sa : MlS := Flapjack.Basis.Pure.MlString.MlString.implode [0x73#8, 0x61#8]
def p256Nm_u256_add_carry : MlS := Flapjack.Basis.Pure.MlString.MlString.implode [0x75#8, 0x32#8, 0x35#8, 0x36#8, 0x5f#8, 0x61#8, 0x64#8, 0x64#8, 0x5f#8, 0x63#8, 0x61#8, 0x72#8, 0x72#8, 0x79#8]
def p256Nm_u256_lt : MlS := Flapjack.Basis.Pure.MlString.MlString.implode [0x75#8, 0x32#8, 0x35#8, 0x36#8, 0x5f#8, 0x6c#8, 0x74#8]
def p256Nm_u256_sub : MlS := Flapjack.Basis.Pure.MlString.MlString.implode [0x75#8, 0x32#8, 0x35#8, 0x36#8, 0x5f#8, 0x73#8, 0x75#8, 0x62#8]
@[simp] theorem p256Nm_c_eq : p256Nm_c = ofString "c" := by decide
@[simp] theorem p256Nm_ltp_eq : p256Nm_ltp = ofString "ltp" := by decide
@[simp] theorem p256Nm_r_eq : p256Nm_r = ofString "r" := by decide
@[simp] theorem p256Nm_sa_eq : p256Nm_sa = ofString "sa" := by decide
@[simp] theorem p256Nm_u256_add_carry_eq : p256Nm_u256_add_carry = ofString "u256_add_carry" := by decide
@[simp] theorem p256Nm_u256_lt_eq : p256Nm_u256_lt = ofString "u256_lt" := by decide
@[simp] theorem p256Nm_u256_sub_eq : p256Nm_u256_sub = ofString "u256_sub" := by decide

/-- The limbs of `P256_P`. -/
def p256Lits (p0 p1 p2 p3 : BitVec width) : Bool :=
  decide (p0 = BitVec.ofNat width 0xffffffffffffffff) &&
  decide (p1 = BitVec.ofNat width 0x00000000ffffffff) &&
  decide (p2 = BitVec.ofNat width 0) &&
  decide (p3 = BitVec.ofNat width 0xffffffff00000001)

/-! ### One-constructor views

`loopP256F` is evaluated by `decide_cbv` in the cost-table shards, which needs the equation lemmas of every definition it
unfolds. Deep nested patterns make those too expensive to generate, so every match below looks at one constructor. -/

section views
variable {α : Type}

def vCmpLess : ExpHOL width → Option (ExpHOL width × ExpHOL width)
  | .cmp .less a b => some (a, b)
  | _ => none
def vVarL : ExpHOL width → Option MlS
  | .var .local x => some x
  | _ => none
def vConst : ExpHOL width → Option (BitVec width)
  | .const z => some z
  | _ => none
def vRstruct : ExpHOL width → Option (List (ExpHOL width))
  | .rstruct l => some l
  | _ => none
def vRfield : ExpHOL width → Option (Nat × ExpHOL width)
  | .rfield i e => some (i, e)
  | _ => none
def vOp : ExpHOL width → Option (Flapjack.BinOp × List (ExpHOL width))
  | .op o l => some (o, l)
  | _ => none
def vDecCall : ProgHOL width → Option (MlS × ShapeHOL × MlS × List (ExpHOL width) × ProgHOL width)
  | .decCall a sh f l k => some (a, sh, f, l, k)
  | _ => none
def vSeq : ProgHOL width → Option (ProgHOL width × ProgHOL width)
  | .seq a b => some (a, b)
  | _ => none
def vAssignL : ProgHOL width → Option (MlS × ExpHOL width)
  | .assign .local x e => some (x, e)
  | _ => none
def vCall : ProgHOL width → Option (Option (Option (Flapjack.VarKind × MlS) ×
    Option (MlS × MlS × ProgHOL width)) × MlS × List (ExpHOL width))
  | .call i f l => some (i, f, l)
  | _ => none
def vL2 : List α → Option (α × α)
  | [a, b] => some (a, b)
  | _ => none
def vL4 : List α → Option (α × α × α × α)
  | [a, b, c, d] => some (a, b, c, d)
  | _ => none
def vL5 : List α → Option (α × α × α × α × α)
  | [a, b, c, d, e] => some (a, b, c, d, e)
  | _ => none
def vComb : ShapeHOL → Option (List ShapeHOL)
  | .comb l => some l
  | _ => none
def isOneS : ShapeHOL → Bool
  | .one => true
  | _ => false
def isAddOp : Flapjack.BinOp → Bool
  | .add => true
  | _ => false
def isSubOp : Flapjack.BinOp → Bool
  | .sub => true
  | _ => false
def isLocalK : Flapjack.VarKind → Bool
  | .local => true
  | _ => false

theorem vCmpLess_some {e : ExpHOL width} {q} (h : vCmpLess e = some q) : e = .cmp .less q.1 q.2 := by
  unfold vCmpLess at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vVarL_some {e : ExpHOL width} {q} (h : vVarL e = some q) : e = .var .local q := by
  unfold vVarL at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vConst_some {e : ExpHOL width} {q} (h : vConst e = some q) : e = .const q := by
  unfold vConst at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vRstruct_some {e : ExpHOL width} {q} (h : vRstruct e = some q) : e = .rstruct q := by
  unfold vRstruct at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vRfield_some {e : ExpHOL width} {q} (h : vRfield e = some q) : e = .rfield q.1 q.2 := by
  unfold vRfield at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vOp_some {e : ExpHOL width} {q} (h : vOp e = some q) : e = .op q.1 q.2 := by
  unfold vOp at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vDecCall_some {p : ProgHOL width} {q} (h : vDecCall p = some q) :
    p = .decCall q.1 q.2.1 q.2.2.1 q.2.2.2.1 q.2.2.2.2 := by
  unfold vDecCall at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vSeq_some {p : ProgHOL width} {q} (h : vSeq p = some q) : p = .seq q.1 q.2 := by
  unfold vSeq at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vAssignL_some {p : ProgHOL width} {q} (h : vAssignL p = some q) : p = .assign .local q.1 q.2 := by
  unfold vAssignL at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vCall_some {p : ProgHOL width} {q} (h : vCall p = some q) : p = .call q.1 q.2.1 q.2.2 := by
  unfold vCall at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vL2_some {l : List α} {q} (h : vL2 l = some q) : l = [q.1, q.2] := by
  unfold vL2 at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vL4_some {l : List α} {q} (h : vL4 l = some q) : l = [q.1, q.2.1, q.2.2.1, q.2.2.2] := by
  unfold vL4 at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vL5_some {l : List α} {q} (h : vL5 l = some q) : l = [q.1, q.2.1, q.2.2.1, q.2.2.2.1, q.2.2.2.2] := by
  unfold vL5 at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem vComb_some {s : ShapeHOL} {q} (h : vComb s = some q) : s = .comb q := by
  unfold vComb at h; split at h
  · obtain rfl := Option.some.inj h; rfl
  · cases h
theorem isOneS_eq {s : ShapeHOL} (h : isOneS s = true) : s = .one := by
  unfold isOneS at h; split at h
  · rfl
  · cases h
theorem isAddOp_eq {o : Flapjack.BinOp} (h : isAddOp o = true) : o = .add := by
  unfold isAddOp at h; split at h
  · rfl
  · cases h
theorem isSubOp_eq {o : Flapjack.BinOp} (h : isSubOp o = true) : o = .sub := by
  unfold isSubOp at h; split at h
  · rfl
  · cases h
theorem isLocalK_eq {k : Flapjack.VarKind} (h : isLocalK k = true) : k = .local := by
  unfold isLocalK at h; split at h
  · rfl
  · cases h

end views

/-! ### The two loops, as fixed templates, and their checks -/

def p256PE : ExpHOL width :=
  .rstruct [.const (BitVec.ofNat width 0xffffffffffffffff), .const (BitVec.ofNat width 0x00000000ffffffff),
    .const (BitVec.ofNat width 0), .const (BitVec.ofNat width 0xffffffff00000001)]
def p256Cond1 : ExpHOL width := .cmp .less (.var .local p256Nm_c) (.const (BitVec.ofNat width 0))
def p256Cond2 : ExpHOL width := .cmp .less (.const (BitVec.ofNat width 0)) (.var .local p256Nm_c)
def p256Body1 : ProgHOL width :=
  .decCall p256Nm_sa (.comb [.one, .one, .one, .one, .one]) p256Nm_u256_add_carry [.var .local p256Nm_r, p256PE]
    (.seq (.assign .local p256Nm_r (.rstruct [.rfield 0 (.var .local p256Nm_sa), .rfield 1 (.var .local p256Nm_sa),
        .rfield 2 (.var .local p256Nm_sa), .rfield 3 (.var .local p256Nm_sa)]))
      (.assign .local p256Nm_c (.op .add [.var .local p256Nm_c, .rfield 4 (.var .local p256Nm_sa)])))
def p256Body2 : ProgHOL width :=
  .decCall p256Nm_ltp .one p256Nm_u256_lt [.var .local p256Nm_r, p256PE]
    (.seq (.call (some (some (.local, p256Nm_r), none)) p256Nm_u256_sub [.var .local p256Nm_r, p256PE])
      (.assign .local p256Nm_c (.op .sub [.var .local p256Nm_c, .var .local p256Nm_ltp])))

def isVarLn (e : ExpHOL width) (n : MlS) : Bool :=
  match vVarL e with
  | some x => decide (x = n)
  | none => false
theorem isVarLn_eq {e : ExpHOL width} {n : MlS} (h : isVarLn e n = true) : e = .var .local n := by
  unfold isVarLn at h; split at h
  · rename_i x hx; rw [vVarL_some hx, of_decide_eq_true h]
  · cases h

def isConstv (e : ExpHOL width) (v : BitVec width) : Bool :=
  match vConst e with
  | some z => decide (z = v)
  | none => false
theorem isConstv_eq {e : ExpHOL width} {v : BitVec width} (h : isConstv e v = true) : e = .const v := by
  unfold isConstv at h; split at h
  · rename_i z hz; rw [vConst_some hz, of_decide_eq_true h]
  · cases h

def isPE (e : ExpHOL width) : Bool :=
  match vRstruct e with
  | some l =>
    match vL4 l with
    | some q => isConstv q.1 (BitVec.ofNat width 0xffffffffffffffff) &&
        isConstv q.2.1 (BitVec.ofNat width 0x00000000ffffffff) && isConstv q.2.2.1 (BitVec.ofNat width 0) &&
        isConstv q.2.2.2 (BitVec.ofNat width 0xffffffff00000001)
    | none => false
  | none => false
theorem isPE_eq {e : ExpHOL width} (h : isPE e = true) : e = p256PE := by
  unfold isPE at h; split at h
  · rename_i l hl; split at h
    · rename_i q hq
      simp only [Bool.and_eq_true] at h
      obtain ⟨⟨⟨h0, h1⟩, h2⟩, h3⟩ := h
      rw [vRstruct_some hl, vL4_some hq, isConstv_eq h0, isConstv_eq h1, isConstv_eq h2, isConstv_eq h3]; rfl
    · cases h
  · cases h

def isArgsRP (l : List (ExpHOL width)) : Bool :=
  match vL2 l with
  | some q => isVarLn q.1 p256Nm_r && isPE q.2
  | none => false
theorem isArgsRP_eq {l : List (ExpHOL width)} (h : isArgsRP l = true) : l = [.var .local p256Nm_r, p256PE] := by
  unfold isArgsRP at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true] at h
    rw [vL2_some hq, isVarLn_eq h.1, isPE_eq h.2]
  · cases h

def isRfV (e : ExpHOL width) (i : Nat) (n : MlS) : Bool :=
  match vRfield e with
  | some q => decide (q.1 = i) && isVarLn q.2 n
  | none => false
theorem isRfV_eq {e : ExpHOL width} {i : Nat} {n : MlS} (h : isRfV e i n = true) : e = .rfield i (.var .local n) := by
  unfold isRfV at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    rw [vRfield_some hq, h.1, isVarLn_eq h.2]
  · cases h

def isRf4 (e : ExpHOL width) : Bool :=
  match vRstruct e with
  | some l =>
    match vL4 l with
    | some q => isRfV q.1 0 p256Nm_sa && isRfV q.2.1 1 p256Nm_sa && isRfV q.2.2.1 2 p256Nm_sa &&
        isRfV q.2.2.2 3 p256Nm_sa
    | none => false
  | none => false
theorem isRf4_eq {e : ExpHOL width} (h : isRf4 e = true) :
    e = .rstruct [.rfield 0 (.var .local p256Nm_sa), .rfield 1 (.var .local p256Nm_sa),
      .rfield 2 (.var .local p256Nm_sa), .rfield 3 (.var .local p256Nm_sa)] := by
  unfold isRf4 at h; split at h
  · rename_i l hl; split at h
    · rename_i q hq
      simp only [Bool.and_eq_true] at h
      obtain ⟨⟨⟨h0, h1⟩, h2⟩, h3⟩ := h
      rw [vRstruct_some hl, vL4_some hq, isRfV_eq h0, isRfV_eq h1, isRfV_eq h2, isRfV_eq h3]
    · cases h
  · cases h

def isAddE (e : ExpHOL width) : Bool :=
  match vOp e with
  | some q =>
    isAddOp q.1 &&
      match vL2 q.2 with
      | some r => isVarLn r.1 p256Nm_c && isRfV r.2 4 p256Nm_sa
      | none => false
  | none => false
theorem isAddE_eq {e : ExpHOL width} (h : isAddE e = true) :
    e = .op .add [.var .local p256Nm_c, .rfield 4 (.var .local p256Nm_sa)] := by
  unfold isAddE at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true] at h
    obtain ⟨ho, h2⟩ := h
    split at h2
    · rename_i r hr
      simp only [Bool.and_eq_true] at h2
      rw [vOp_some hq, isAddOp_eq ho, vL2_some hr, isVarLn_eq h2.1, isRfV_eq h2.2]
    · cases h2
  · cases h

def isSubE (e : ExpHOL width) : Bool :=
  match vOp e with
  | some q =>
    isSubOp q.1 &&
      match vL2 q.2 with
      | some r => isVarLn r.1 p256Nm_c && isVarLn r.2 p256Nm_ltp
      | none => false
  | none => false
theorem isSubE_eq {e : ExpHOL width} (h : isSubE e = true) :
    e = .op .sub [.var .local p256Nm_c, .var .local p256Nm_ltp] := by
  unfold isSubE at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true] at h
    obtain ⟨ho, h2⟩ := h
    split at h2
    · rename_i r hr
      simp only [Bool.and_eq_true] at h2
      rw [vOp_some hq, isSubOp_eq ho, vL2_some hr, isVarLn_eq h2.1, isVarLn_eq h2.2]
    · cases h2
  · cases h

def isAsgR (p : ProgHOL width) : Bool :=
  match vAssignL p with
  | some q => decide (q.1 = p256Nm_r) && isRf4 q.2
  | none => false
def isAsgAdd (p : ProgHOL width) : Bool :=
  match vAssignL p with
  | some q => decide (q.1 = p256Nm_c) && isAddE q.2
  | none => false
def isAsgSub (p : ProgHOL width) : Bool :=
  match vAssignL p with
  | some q => decide (q.1 = p256Nm_c) && isSubE q.2
  | none => false
theorem isAsgR_eq {p : ProgHOL width} (h : isAsgR p = true) :
    p = .assign .local p256Nm_r (.rstruct [.rfield 0 (.var .local p256Nm_sa), .rfield 1 (.var .local p256Nm_sa),
      .rfield 2 (.var .local p256Nm_sa), .rfield 3 (.var .local p256Nm_sa)]) := by
  unfold isAsgR at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    rw [vAssignL_some hq, h.1, isRf4_eq h.2]
  · cases h
theorem isAsgAdd_eq {p : ProgHOL width} (h : isAsgAdd p = true) :
    p = .assign .local p256Nm_c (.op .add [.var .local p256Nm_c, .rfield 4 (.var .local p256Nm_sa)]) := by
  unfold isAsgAdd at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    rw [vAssignL_some hq, h.1, isAddE_eq h.2]
  · cases h
theorem isAsgSub_eq {p : ProgHOL width} (h : isAsgSub p = true) :
    p = .assign .local p256Nm_c (.op .sub [.var .local p256Nm_c, .var .local p256Nm_ltp]) := by
  unfold isAsgSub at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    rw [vAssignL_some hq, h.1, isSubE_eq h.2]
  · cases h

def isRetR (i : Option (Option (Flapjack.VarKind × MlS) × Option (MlS × MlS × ProgHOL width))) :
    Bool :=
  match i with
  | some q =>
    (match q.1 with
      | some k => isLocalK k.1 && decide (k.2 = p256Nm_r)
      | none => false) &&
    (match q.2 with
      | none => true
      | some _ => false)
  | none => false
theorem isRetR_eq {i : Option (Option (Flapjack.VarKind × MlS) × Option (MlS × MlS × ProgHOL width))}
    (h : isRetR i = true) : i = some (some (.local, p256Nm_r), none) := by
  rcases i with _ | ⟨_ | ⟨k, r⟩, _ | t⟩ <;> simp [isRetR] at h ⊢
  exact ⟨isLocalK_eq h.1, h.2⟩

def isCallSub (p : ProgHOL width) : Bool :=
  match vCall p with
  | some q => isRetR q.1 && decide (q.2.1 = p256Nm_u256_sub) && isArgsRP q.2.2
  | none => false
theorem isCallSub_eq {p : ProgHOL width} (h : isCallSub p = true) :
    p = .call (some (some (.local, p256Nm_r), none)) p256Nm_u256_sub [.var .local p256Nm_r, p256PE] := by
  unfold isCallSub at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨h1, h2⟩, h3⟩ := h
    rw [vCall_some hq, isRetR_eq h1, h2, isArgsRP_eq h3]
  · cases h

def isComb5 (s : ShapeHOL) : Bool :=
  match vComb s with
  | some l =>
    match vL5 l with
    | some q => isOneS q.1 && isOneS q.2.1 && isOneS q.2.2.1 && isOneS q.2.2.2.1 && isOneS q.2.2.2.2
    | none => false
  | none => false
theorem isComb5_eq {s : ShapeHOL} (h : isComb5 s = true) : s = .comb [.one, .one, .one, .one, .one] := by
  unfold isComb5 at h; split at h
  · rename_i l hl; split at h
    · rename_i q hq
      simp only [Bool.and_eq_true] at h
      obtain ⟨⟨⟨⟨h0, h1⟩, h2⟩, h3⟩, h4⟩ := h
      rw [vComb_some hl, vL5_some hq, isOneS_eq h0, isOneS_eq h1, isOneS_eq h2, isOneS_eq h3, isOneS_eq h4]
    · cases h
  · cases h

def isSeq1 (p : ProgHOL width) : Bool :=
  match vSeq p with
  | some q => isAsgR q.1 && isAsgAdd q.2
  | none => false
def isSeq2 (p : ProgHOL width) : Bool :=
  match vSeq p with
  | some q => isCallSub q.1 && isAsgSub q.2
  | none => false

def isBody1 (b : ProgHOL width) : Bool :=
  match vDecCall b with
  | some q => decide (q.1 = p256Nm_sa) && isComb5 q.2.1 && decide (q.2.2.1 = p256Nm_u256_add_carry) &&
      isArgsRP q.2.2.2.1 && isSeq1 q.2.2.2.2
  | none => false
def isBody2 (b : ProgHOL width) : Bool :=
  match vDecCall b with
  | some q => decide (q.1 = p256Nm_ltp) && isOneS q.2.1 && decide (q.2.2.1 = p256Nm_u256_lt) &&
      isArgsRP q.2.2.2.1 && isSeq2 q.2.2.2.2
  | none => false
def isCond1 (c : ExpHOL width) : Bool :=
  match vCmpLess c with
  | some q => isVarLn q.1 p256Nm_c && isConstv q.2 (BitVec.ofNat width 0)
  | none => false
def isCond2 (c : ExpHOL width) : Bool :=
  match vCmpLess c with
  | some q => isConstv q.1 (BitVec.ofNat width 0) && isVarLn q.2 p256Nm_c
  | none => false

theorem isBody1_eq {b : ProgHOL width} (h : isBody1 b = true) : b = p256Body1 := by
  unfold isBody1 at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩ := h
    unfold isSeq1 at h5; split at h5
    · rename_i r hr
      simp only [Bool.and_eq_true] at h5
      rw [vDecCall_some hq, h1, isComb5_eq h2, h3, isArgsRP_eq h4, vSeq_some hr, isAsgR_eq h5.1, isAsgAdd_eq h5.2]; rfl
    · cases h5
  · cases h
theorem isBody2_eq {b : ProgHOL width} (h : isBody2 b = true) : b = p256Body2 := by
  unfold isBody2 at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩ := h
    unfold isSeq2 at h5; split at h5
    · rename_i r hr
      simp only [Bool.and_eq_true] at h5
      rw [vDecCall_some hq, h1, isOneS_eq h2, h3, isArgsRP_eq h4, vSeq_some hr, isCallSub_eq h5.1, isAsgSub_eq h5.2]; rfl
    · cases h5
  · cases h
theorem isCond1_eq {c : ExpHOL width} (h : isCond1 c = true) : c = p256Cond1 := by
  unfold isCond1 at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true] at h
    rw [vCmpLess_some hq, isVarLn_eq h.1, isConstv_eq h.2]; rfl
  · cases h
theorem isCond2_eq {c : ExpHOL width} (h : isCond2 c = true) : c = p256Cond2 := by
  unfold isCond2 at h; split at h
  · rename_i q hq
    simp only [Bool.and_eq_true] at h
    rw [vCmpLess_some hq, isConstv_eq h.1, isVarLn_eq h.2]; rfl
  · cases h

/-- The recognizer: factor `2 ^ 64 + 2` exactly for the two carry-fold loops. -/
def loopP256F (c : ExpHOL width) (b : ProgHOL width) : Option Nat :=
  match (isCond1 c && isBody1 b) || (isCond2 c && isBody2 b) with
  | true => some (2 ^ 64 + 2)
  | false => none

theorem loopP256F_spec {c : ExpHOL width} {b : ProgHOL width} {F : Nat} (h : loopP256F c b = some F) :
    F = 2 ^ 64 + 2 ∧ ((c = p256Cond1 ∧ b = p256Body1) ∨ (c = p256Cond2 ∧ b = p256Body2)) := by
  unfold loopP256F at h; split at h
  · rename_i hc
    refine ⟨(Option.some.inj h).symm, ?_⟩
    simp only [Bool.or_eq_true, Bool.and_eq_true] at hc
    rcases hc with ⟨h1, h2⟩ | ⟨h1, h2⟩
    · exact Or.inl ⟨isCond1_eq h1, isBody1_eq h2⟩
    · exact Or.inr ⟨isCond2_eq h1, isBody2_eq h2⟩
  · cases h

/-- Soundness of `loopP256F` for a context (proved for the guest code map in
`Spec/P256Fold.lean`). -/
def P256Rule (σ : Type) (X : Ctx width) : Prop :=
  ∀ (c : ExpHOL width) (b : ProgHOL width) (F B : Nat), loopP256F c b = some F →
    Cost σ X b B → Cost σ X (.while c b) (F * (B + 1))

end InitECandidate.Solver.SourceCost
