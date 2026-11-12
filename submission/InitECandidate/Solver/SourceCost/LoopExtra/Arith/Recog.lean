import InitECandidate.Solver.SourceCost.LoopExtra.Arith.Proj

/-!
# Recognizer for the projected-locals pigeonhole rule

`loopProjF pt c b` accepts a loop whose body passes the purity-and-frame checker `pfB`
with the locals it assigns (outside the scope of a declaration of the same name), each
given a static named-free shape (from an assigned expression, an `addCarry` primitive, or
a pure callee's return shape). It returns the iteration factor `2 ^ (width * K) + 1`,
where `K` counts the words of the assigned locals.
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-- Locals assigned by `p` outside the scope of a declaration of the same name. -/
def topAsg : ProgHOL width → List MlS
  | .assign .local y _ => [y]
  | .primitive y _ _ => [y]
  | .call (some (some (.local, y), _)) _ _ => [y]
  | .seq a b => topAsg a ++ topAsg b
  | .ite _ a b => topAsg a ++ topAsg b
  | .while _ b => topAsg b
  | .dec z _ _ b => (topAsg b).filter (· != z)
  | .decCall z _ _ _ k => (topAsg k).filter (· != z)
  | _ => []

/-- The shape of the first assignment to `y` in `p` (outside shadowing scopes). -/
def asgShape (pt : List (MlS × ShapeHOL)) :
    List (MlS × ShapeHOL) → MlS → ProgHOL width → Option ShapeHOL
  | Γ, y, .assign .local z e => if z == y then expShape Γ e else none
  | _, y, .primitive z _ _ => if z == y then some (.comb [.one, .one]) else none
  | _, y, .call (some (some (.local, z), _)) f _ => if z == y then pt.lookup f else none
  | Γ, y, .seq a b => (asgShape pt Γ y a).or (asgShape pt Γ y b)
  | Γ, y, .ite _ a b => (asgShape pt Γ y a).or (asgShape pt Γ y b)
  | Γ, y, .while _ b => asgShape pt Γ y b
  | Γ, y, .dec z sh _ b => if z == y then none else asgShape pt ((z, sh) :: Γ) y b
  | Γ, y, .decCall z sh _ _ k => if z == y then none else asgShape pt ((z, sh) :: Γ) y k
  | _, _, _ => none

def dedupNames : List MlS → List MlS
  | [] => []
  | y :: ys => if ys.contains y then dedupNames ys else y :: dedupNames ys

/-- The assigned locals of `b` with their shapes. -/
def projSh (pt : List (MlS × ShapeHOL)) (b : ProgHOL width) : Option (List (MlS × ShapeHOL)) :=
  (dedupNames (topAsg b)).mapM (fun y => (asgShape pt [] y b).map (fun sh => (y, sh)))

/-- Accept a loop for the projected-locals rule; returns the iteration factor
`2 ^ (width * KSh Sh) + 1`, computed as `(2 ^ width) ^ KSh Sh + 1` because the kernel check
of the cost table (`decide_cbv`) evaluates `^` on literals only for exponents up to 255. -/
def loopProjF (pt : List (MlS × ShapeHOL)) (_c : ExpHOL width) (b : ProgHOL width) : Option Nat :=
  match projSh pt b with
  | some Sh =>
      match decide ((Sh.map Prod.fst).Nodup) && Sh.all (fun q => namedFree q.2) &&
          pfB pt [] (accA Sh) Sh b with
      | true => some ((2 ^ width) ^ KSh Sh + 1)
      | false => none
  | none => none

theorem loopProjF_sound {pt : List (MlS × ShapeHOL)} (hpt : PureTbl σ X.code pt)
    {c : ExpHOL width} {b : ProgHOL width} {F B : Nat} (h : loopProjF pt c b = some F)
    (hb : Cost σ X b B) : Cost σ X (.while c b) (F * (B + 1)) := by
  unfold loopProjF at h
  split at h
  · rename_i Sh _
    split at h
    · rename_i hok
      simp only [Option.some.injEq] at h
      subst h
      simp only [Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hok
      obtain ⟨⟨hnd, hnf⟩, hpf⟩ := hok
      rw [← Nat.pow_mul]
      exact cost_while_proj hnd hnf hb (pfB_sound hpt hpf)
    · cases h
  · cases h

end InitECandidate.Solver.SourceCost.Arith
