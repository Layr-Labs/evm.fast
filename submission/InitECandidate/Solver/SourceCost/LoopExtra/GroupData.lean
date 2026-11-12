import InitECandidate.Solver.SourceCost.LoopExtra.Data.AndCounter
import InitECandidate.Solver.SourceCost.LoopExtra.Data.Slice
import InitECandidate.Solver.SourceCost.LoopExtra.Data.Merge
import InitECandidate.Solver.SourceCost.LoopExtra.Data.ArgZero

/-! Extension point for the Data group of hand-proved loops (owned by one agent).

Shapes:
* `loopOkAndCounter` (`Data/AndCounter.lean`): a conjunctive guard one of whose conjuncts
  is `i <s E` / `i <u E`, with the body stepping `i` by one (`_node_rlp_fill`'s child scan
  `while (i < 16) && (found == 0)`).
* `loopOkSlice` (`Data/Slice.lean`): the next value of the guard's counter is computed by a
  local-only slice of the body from itself and locals the body keeps, while the rest of the
  body (escape-free calls, stores, inner loops) changes none of the slice's locals and the
  body ends only normally; pigeonhole bounds a good run by `2 ^ width + 1` iterations
  (`sort_elems`: `width = width * 2`, `left = right`).
* `loopOkGeo efz` (`Data/Doubling.lean`): `merkleize_progressive`'s loop, given
  `EfArgZero σ X.code f 1` for every callee `f` with `efz f` (`merkleize` returns at once
  when `n = 0`). The table records such functions in a third list next to `ef`
  (`efzCheck`: a code entry whose parameter number `1` passes `argZeroSpineB`, the spine
  part of `argZeroEscB`, see `efArgZero_of_efzCheck`); escape-free functions qualify too
  (`efArgZero_of_ef`).

The merge loop of `sort_elems` (`Data/Merge.lean`) is bounded only from entry states with
`j = mid` (in isolation it can run about `2 ^ (width + 1)` times), so it is not a
`loopOkData` shape: `decMergeOk` / `cost_dec_merge` cost the whole statement
`var j = mid; var k = e; while ...; rest`, a case of `costA` (`Analyzer.lean`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ### Callees that cannot escape when argument `1` is zero -/

/-- The spine part of `argZeroEscB`: `var`/call declarations not rebinding `x` (calling only
escape-free functions), ending in `if x == 0 { <escape-free, always returning> } ...; rest`.
Unlike `argZeroEscB` it never falls back to `escFreeB`, so it costs one pass over the spine. -/
def argZeroSpineB (ef : MlS → Bool) (x : MlS) : ProgHOL width → Bool
  | .decCall rn _ f _ k => ef f && decide (rn ≠ x) && argZeroSpineB ef x k
  | .dec y _ _ b => decide (y ≠ x) && argZeroSpineB ef x b
  | .seq a _ => zeroGuardRet ef x a
  | _ => false

theorem argZeroEscB_of_spine {ef : MlS → Bool} {x : MlS} :
    ∀ p : ProgHOL width, argZeroSpineB ef x p = true → argZeroEscB ef x p = true
  | .decCall rn sh f args k, h => by
      simp only [argZeroSpineB, Bool.and_eq_true] at h
      simp only [argZeroEscB, h.1.1, h.1.2, argZeroEscB_of_spine k h.2, Bool.and_self,
        Bool.true_or]
  | .dec y sh e b, h => by
      simp only [argZeroSpineB, Bool.and_eq_true] at h
      simp only [argZeroEscB, h.1, argZeroEscB_of_spine b h.2, Bool.and_self, Bool.true_or]
  | .seq a b, h => by
      simp only [argZeroSpineB] at h
      simp only [argZeroEscB, h, Bool.true_or]
  | .skip, h | .break, h | .continue, h | .annot _ _, h | .tick, h => by
      simp [argZeroSpineB] at h
  | .assign _ _ _, h | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h => by
      simp [argZeroSpineB] at h
  | .storeByte _ _, h | .extCall _ _ _ _ _, h | .raise _ _, h | .return _, h => by
      simp [argZeroSpineB] at h
  | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h | .while _ _, h | .call _ _ _, h => by
      simp [argZeroSpineB] at h
  | .ite _ _ _, h => by simp [argZeroSpineB] at h

/-- The table's check of a code entry `(ps, body)` for `EfArgZero _ _ f 1`. -/
def efzCheck (ef : MlS → Bool) (ps : List (MlS × ShapeHOL)) (body : ProgHOL width) : Bool :=
  match (ps.map Prod.fst)[1]? with
  | some x => argZeroSpineB ef x body
  | none => false

theorem efArgZero_of_efzCheck {C : CodeMap width} {ef : MlS → Bool} (hef : EfSound σ C ef)
    {f : MlS} {ps : List (MlS × ShapeHOL)} {body : ProgHOL width} {rs : ShapeHOL}
    (hC : C.lookup f = some (ps, body, rs)) (h : efzCheck ef ps body = true) :
    EfArgZero σ C f 1 := by
  unfold efzCheck at h
  split at h
  · rename_i x hx
    exact efArgZero_of_check hef hC hx (argZeroEscB_of_spine body h)
  · cases h

/-- Escape-free functions never escape, whatever their arguments. -/
theorem efArgZero_of_ef {C : CodeMap width} {ef : MlS → Bool} (hef : EfSound σ C ef)
    {f : MlS} (hf : ef f = true) (k : Nat) : EfArgZero σ C f k := by
  intro values body callee rs hl _ s hs _
  exact hef f hf values body callee rs hl s hs

/-! ### The dispatcher -/

/-- `orL a fun _ => b` is `a || b`, written so that the kernel check of the cost table
(`decide_cbv`, call-by-value) evaluates `b` only when `a` is `false`: it evaluates both
arguments of `||`, but not the body of a `fun`. The dispatchers try the cheap recognizers
first. -/
def orL (a : Bool) (b : Unit → Bool) : Bool :=
  match a with
  | true => true
  | false => b ()

theorem orL_cases {a : Bool} {b : Unit → Bool} (h : orL a b = true) : a = true ∨ b () = true := by
  cases a
  · exact Or.inr h
  · exact Or.inl rfl

def loopOkData (ef efz : MlS → Bool) (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  orL (loopOkAndCounter c b) fun _ => orL (loopOkGeo efz c b) fun _ => loopOkSlice ef c b

theorem loopOkData_sound {ef efz : MlS → Bool} (hef : EfSound σ X.code ef)
    (hefz : ∀ f, efz f = true → EfArgZero σ X.code f 1) (_hX : DomBounded X)
    {c : ExpHOL width} {b : ProgHOL width} {B : Nat} (h : loopOkData ef efz c b = true)
    (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkData at h
  rcases orL_cases h with h | h
  · exact loopOkAndCounter_sound h hb
  rcases orL_cases h with h | h
  · exact loopOkGeo_sound hefz h hb
  · exact loopOkSlice_sound hef h hb

end InitECandidate.Solver.SourceCost
