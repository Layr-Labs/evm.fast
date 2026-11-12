import InitECandidate.Solver.SourceCost.Checkers
import InitECandidate.Solver.SourceCost.OrbitShapes
import InitECandidate.Solver.SourceCost.LoopExtra
import InitECandidate.Solver.SourceCost.LoopExtra.Data.SliceOrbit
import InitECandidate.Solver.SourceCost.P256Fold

/-!
# A sound syntactic tick-bound analyzer

`costA tbl ef efz p` computes a tick bound for `p`, given bounds `tbl` for callees, the
escape-free functions `ef`, and the functions `efz` that cannot escape when argument `1` is
zero. Loops are accepted only in the shapes proved by the loop lemmas:

* `loopOkSliceDbl` (`LoopExtra/Data/SliceOrbit.lean`): the doubling counter loop
  (`width = width * 2` in `sort_elems`), whose good runs make at most `width` iterations:
  factor `width + 1`;
* `loopP256F` (`P256Fold.lean`): the two carry-fold loops of `P256_FOLD_RETURN`, factor
  `2 ^ 64 + 2`, sound under the hypothesis `P256Rule` (`Spec/P256Fold.lean`);
* `loopOk`: a loop whose body costs `B` costs `(2 ^ width + 1) * (B + 1)`;
* otherwise `loopArithF` (`LoopExtra/GroupArith.lean`): the Arith rules, with their own
  factor `F` in place of `2 ^ width + 1`, sound under `Arith.ArithTbls σ X.code` (which holds
  for the guest code map, `Arith.guestArithTbls`);
* the statement `var j = mid; var k = e; while (i < mid) && (j < right) b; rest`
  (`decMergeOk` / `cost_dec_merge`, `LoopExtra/Data/Merge.lean`), whose loop is bounded
  only from the entry state `j = mid`.

Boolean tests are branched on with `match`, not `if`: the kernel check of the table
(`decide_cbv`, `Shards/`) is fast for `match b with | true => .. | false => ..`, while for
`if b then .. else ..` with a `b` that evaluates to `false` it falls back to a reduction of
the `Decidable` instance that re-evaluates `b` very slowly.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

def loopOkBasic (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match c with
  | .cmp .lower (.var .local i) _ => stepsB i true b
  | .cmp .less (.var .local i) _ => stepsB i true b
  | .cmp .less (.const z) (.var .local i) => decide (z = 0) && stepsB i false b
  | .cmp .lower (.const z) (.var .local i) => decide (z = 0) && stepsB i false b
  | .cmp .notEqual (.var .local i) (.const z) => decide (z = 0) && stepsB i false b
  | .cmp .notEqual (.const z) (.var .local i) => decide (z = 0) && stepsB i false b
  | _ => false

theorem loopOkBasic_sound {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : loopOkBasic c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkBasic at h
  split at h
  · exact cost_while_inc_lower hb (stepsB_sound _ true _ h)
  · exact cost_while_inc_less hb (stepsB_sound _ true _ h)
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨rfl, h⟩ := h
    exact cost_while_dec (nonzero_less_zero _) hb (stepsB_sound _ false _ h)
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨rfl, h⟩ := h
    exact cost_while_dec (nonzero_lower_zero _) hb (stepsB_sound _ false _ h)
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨rfl, h⟩ := h
    exact cost_while_dec (nonzero_ne_zero_left _) hb (stepsB_sound _ false _ h)
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨rfl, h⟩ := h
    exact cost_while_dec (nonzero_ne_zero_right _) hb (stepsB_sound _ false _ h)
  · simp at h

def loopOk (ef efz : MlS → Bool) (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  orL (loopOkBasic c b) fun _ => orL (loopOkOrbit ef c b) fun _ => loopOkExtra ef efz c b

theorem loopOk_sound {ef efz : MlS → Bool} (hef : EfSound σ X.code ef)
    (hefz : ∀ f, efz f = true → EfArgZero σ X.code f 1) (hX : DomBounded X)
    {c : ExpHOL width}
    {b : ProgHOL width} {B : Nat} (h : loopOk ef efz c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOk at h
  rcases orL_cases h with h | h
  · exact loopOkBasic_sound h hb
  rcases orL_cases h with h | h
  · exact loopOkOrbit_sound hef h hb
  · exact loopOkExtra_sound hef hefz hX h hb

def costA (tbl : MlS → Option Nat) (ef efz : MlS → Bool) : ProgHOL width → Option Nat
  | .tick => some 1
  | .seq a b =>
      match costA tbl ef efz a, costA tbl ef efz b with
      | some x, some y => some (x + y)
      | _, _ => none
  | .ite _ a b =>
      match costA tbl ef efz a, costA tbl ef efz b with
      | some x, some y => some (max x y)
      | _, _ => none
  | .dec j _ e b =>
      match e, b with
      | .var .local m, b@(.dec k _ _ (.seq (.while c wb) rest)) =>
          match decMergeOk j m k c wb with
          | true =>
            match costA tbl ef efz wb, costA tbl ef efz rest with
            | some x, some y => some ((2 ^ width + 1) * (x + 1) + y)
            | _, _ => none
          | false => costA tbl ef efz b
      | _, b => costA tbl ef efz b
  | .while c b =>
      match loopOkSliceDbl ef c b with
      | true => (costA tbl ef efz b).map fun B => (width + 1) * (B + 1)
      | false =>
      match loopP256F c b with
      | some F => (costA tbl ef efz b).map fun B => F * (B + 1)
      | none =>
      match loopOk ef efz c b with
      | true => (costA tbl ef efz b).map fun B => (2 ^ width + 1) * (B + 1)
      | false =>
        match loopArithF c b with
        | some F => (costA tbl ef efz b).map fun B => F * (B + 1)
        | none => none
  | .call none f _ => (tbl f).map fun Bf => 1 + Bf + 0
  | .call (some (_, none)) f _ => (tbl f).map fun Bf => 1 + Bf + 0
  | .call (some (_, some (_, _, hp))) f _ =>
      match tbl f, costA tbl ef efz hp with
      | some Bf, some Bh => some (1 + Bf + Bh)
      | _, _ => none
  | .decCall _ _ f _ k =>
      match tbl f, costA tbl ef efz k with
      | some Bf, some Bk => some (1 + Bf + Bk)
      | _, _ => none
  | _ => some 0

/-- Every tabulated bound is a valid cost for every body the code map can call. -/
def TblSound (σ : Type) (X : Ctx width) (tbl : MlS → Option Nat) : Prop :=
  ∀ f Bf, tbl f = some Bf → ∀ values body callee rs,
    lookupCodeHOLFinite X.code.lookup f values = some (body, callee, rs) → Cost σ X body Bf

theorem costA_sound {tbl : MlS → Option Nat} {ef efz : MlS → Bool} (ht : TblSound σ X tbl)
    (hef : EfSound σ X.code ef) (hefz : ∀ f, efz f = true → EfArgZero σ X.code f 1)
    (hX : DomBounded X) (hat : Arith.ArithTbls σ X.code) (h256 : P256Rule σ X) :
    ∀ (p : ProgHOL width) (B : Nat), costA tbl ef efz p = some B → Cost σ X p B
  | .tick, B, h => by simp only [costA, Option.some.injEq] at h; subst h; exact cost_tick
  | .skip, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_skip
  | .break, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_break
  | .continue, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_continue
  | .annot _ _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_annot _ _
  | .assign _ _ _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_assign _ _ _
  | .primitive _ _ _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_primitive _ _ _
  | .store _ _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_store _ _
  | .store32 _ _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_store32 _ _
  | .storeByte _ _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_storeByte _ _
  | .extCall _ _ _ _ _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_extCall _ _ _ _ _
  | .raise _ _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_raise _ _
  | .return _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_return _
  | .shMemLoad _ _ _ _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_shMemLoad _ _ _ _
  | .shMemStore _ _ _, B, h => by
      simp only [costA, Option.some.injEq] at h; subst h; exact cost_shMemStore _ _ _
  | .seq a b, B, h => by
      simp only [costA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_seq (costA_sound ht hef hefz hX hat h256 a x hx)
          (costA_sound ht hef hefz hX hat h256 b y hy)
      · simp at h
  | .ite _ a b, B, h => by
      simp only [costA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_ite (costA_sound ht hef hefz hX hat h256 a x hx)
          (costA_sound ht hef hefz hX hat h256 b y hy)
      · simp at h
  | .dec j sh e b, B, h => by
      rw [costA.eq_def] at h
      dsimp only at h
      split at h
      · rename_i m k sh' e' c wb rest
        split at h
        · rename_i hok
          split at h
          · rename_i x y hx hy
            simp only [Option.some.injEq] at h; subst h
            exact cost_dec_merge hok (costA_sound ht hef hefz hX hat h256 wb x hx)
              (costA_sound ht hef hefz hX hat h256 rest y hy)
          · simp at h
        · exact cost_dec (costA_sound ht hef hefz hX hat h256 _ B h)
      · exact cost_dec (costA_sound ht hef hefz hX hat h256 b B h)
  | .while c b, B, h => by
      simp only [costA] at h
      split at h
      · rename_i hd
        obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
        exact loopOkSliceDbl_sound hef hd (costA_sound ht hef hefz hX hat h256 b Bb hb)
      · split at h
        · rename_i F hF
          obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
          exact h256 c b F Bb hF (costA_sound ht hef hefz hX hat h256 b Bb hb)
        · split at h
          · rename_i hok
            obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
            exact loopOk_sound hef hefz hX hok (costA_sound ht hef hefz hX hat h256 b Bb hb)
          · split at h
            · rename_i F hF
              obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
              exact loopArithF_sound hat hF (costA_sound ht hef hefz hX hat h256 b Bb hb)
            · simp at h
  | .call none f _, B, h => by
      simp only [costA] at h
      obtain ⟨Bf, hf, rfl⟩ := Option.map_eq_some_iff.mp h
      exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_, none)) f _, B, h => by
      simp only [costA] at h
      obtain ⟨Bf, hf, rfl⟩ := Option.map_eq_some_iff.mp h
      exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_, some (_, _, hp))) f _, B, h => by
      simp only [costA] at h
      split at h
      · rename_i Bf Bh hf hh
        simp only [Option.some.injEq] at h; subst h
        refine cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) ?_
        intro _ _ _ _ he
        simp only [Option.some.injEq, Prod.mk.injEq] at he
        obtain ⟨-, -, -, rfl⟩ := he
        exact costA_sound ht hef hefz hX hat h256 hp Bh hh
      · simp at h
  | .decCall _ _ f _ k, B, h => by
      simp only [costA] at h
      split at h
      · rename_i Bf Bk hf hk
        simp only [Option.some.injEq] at h; subst h
        exact cost_decCall (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl)
          (costA_sound ht hef hefz hX hat h256 k Bk hk)
      · simp at h

end InitECandidate.Solver.SourceCost
