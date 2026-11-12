import Lean.Elab.Term
import InitECandidate.Solver.MemSafe.Shards.BaseW

/-!
# `ctab% T`: a table entry by name and signature (no hand-written position)

`ctab% T`, with `T : CTabSound σ X C H tab` and expected type `CSumm σ X C H f sg cs`, finds the
first position `i` of `(f, sg, cs)` in `tab` at elaboration time and elaborates to
`Shards.ctab_get T i (by decide_cbv) rfl`, so the kernel checks exactly the term a hand-written
position gives. The search compares entry names by their string literals (a semantic name
comparison would make the kernel decode UTF-8) and signatures / capabilities by `isDefEq`
on name matches only. A regeneration that moves entries needs no edits.

`set_option ctab.trace true` logs each lookup's position and search time.
-/

namespace InitECandidate.Solver.MemSafe.Shards
open Lean Meta Elab Term

/-- The string literal of an entry name `nm "…"` / `ofString "…"`. -/
def ctabNameLit? (e : Expr) : MetaM (Option String) := do
  let e ← whnfR (← instantiateMVars e)
  if e.isAppOfArity ``Flapjack.Basis.Pure.MlString.ofString 1 then
    match e.appArg! with
    | .lit (.strVal s) => return some s
    | _ => return none
  else return none

/-- The result of a table walk: the position found, or the number of entries passed. -/
inductive CtabWalk where
  | found (i : Nat)
  | count (n : Nat)

/-- Is the entry `hd` the triple `(f, sg, cs)`? Names by literal, the rest by `isDefEq`. -/
def ctabHit (fs : String) (f sg cs hd : Expr) : MetaM Bool := do
  let hd ← if hd.isAppOfArity ``Prod.mk 4 then pure hd else whnfD hd
  unless hd.isAppOfArity ``Prod.mk 4 do return false
  let f' := hd.appFn!.appArg!
  let hit ← match ← ctabNameLit? f' with
    | some s' => pure (s' == fs)
    | none => isDefEq f' f
  unless hit do return false
  let r ← if hd.appArg!.isAppOfArity ``Prod.mk 4 then pure hd.appArg! else whnfD hd.appArg!
  unless r.isAppOfArity ``Prod.mk 4 do return false
  return (← isDefEq r.appFn!.appArg! sg) && (← isDefEq r.appArg! cs)

/-- Walk the table expression `e` (entries before it: `off`) following its structure: list
literals, `++`, definitions; anything else (a `filter`) by `whnf`. -/
partial def ctabWalk (fs : String) (f sg cs : Expr) (e : Expr) (off : Nat) : MetaM CtabWalk := do
  let e ← instantiateMVars e
  if e.isAppOfArity ``List.cons 3 then
    if ← ctabHit fs f sg cs e.appFn!.appArg! then return .found off
    match ← ctabWalk fs f sg cs e.appArg! (off + 1) with
    | .found i => return .found i
    | .count n => return .count (n + 1)
  if e.isAppOfArity ``List.nil 1 then return .count 0
  let app2 : Option (Expr × Expr) :=
    if e.isAppOfArity ``HAppend.hAppend 6 || e.isAppOfArity ``List.append 3 then
      some (e.appFn!.appArg!, e.appArg!) else none
  if let some (a, b) := app2 then
    match ← ctabWalk fs f sg cs a off with
    | .found i => return .found i
    | .count n =>
      match ← ctabWalk fs f sg cs b (off + n) with
      | .found i => return .found i
      | .count m => return .count (n + m)
  if let some e' ← unfoldDefinition? e then return ← ctabWalk fs f sg cs e' off
  let e' ← whnfD e
  if e' == e then throwError "ctab%: cannot walk the table expression{indentExpr e}"
  ctabWalk fs f sg cs e' off

register_option ctab.trace : Bool := { defValue := false, descr := "log each ctab% lookup and its time" }

syntax (name := ctabPct) "ctab% " term:max : term

@[term_elab ctabPct] def elabCtabPct : TermElab := fun stx ety? => do
  let some ety := ety? | throwError "ctab%: the expected type must be known"
  let mut ety ← instantiateMVars ety
  if ety.hasExprMVar then tryPostpone; ety ← instantiateMVars ety
  -- reach `CSumm` through reducible and plain definition aliases
  for _ in [0:8] do
    if ety.isAppOfArity ``CSumm 7 then break
    let e' ← whnfR ety
    if e' != ety then ety := e'; continue
    match ← unfoldDefinition? ety with
    | some e' => ety := e'
    | none => break
  unless ety.isAppOfArity ``CSumm 7 do
    throwError "ctab%: expected a `CSumm` type, got{indentExpr ety}"
  let args := ety.getAppArgs
  let (f, sg, cs) := (args[4]!, args[5]!, args[6]!)
  let some fs ← ctabNameLit? f | throwError "ctab%: the entry name is not a literal:{indentExpr f}"
  -- the table proof, against `CTabSound σ X C H ?tab` from the goal
  let tabM ← mkFreshExprMVar (some (← mkConstWithFreshMVarLevels ``CTab))
  let tty ← mkAppM ``CTabSound #[args[0]!, args[1]!, args[2]!, args[3]!, tabM]
  let tstx : Term := ⟨stx[1]⟩
  let t ← elabTermEnsuringType tstx tty
  synthesizeSyntheticMVarsNoPostponing
  let tab ← instantiateMVars tabM
  let t0 ← IO.monoMsNow
  let .found i ← ctabWalk fs f sg cs tab 0
    | throwError "ctab%: no entry `{fs}` with signature{indentExpr sg}\nand capabilities{indentExpr cs}\nin the table"
  let t1 ← IO.monoMsNow
  if (← getBoolOption `ctab.trace) then logInfo m!"ctab%: {fs} at {i} ({t1 - t0} ms)"
  let iE := mkNatLit i
  let hiTy ← mkAppM ``LT.lt #[iE, ← mkAppM ``List.length #[tab]]
  let hi ← elabTermEnsuringType (← `(by decide_cbv)) hiTy
  synthesizeSyntheticMVarsNoPostponing
  let e0 ← mkAppOptM ``Shards.ctab_get
    #[none, none, none, none, none, some t, some iE, some (← instantiateMVars hi), some f, some sg, some cs]
  let .forallE _ heTy _ _ ← whnfR (← inferType e0)
    | throwError "ctab%: unexpected type of `ctab_get`"
  let he ← elabTermEnsuringType (← `(rfl)) heTy
  synthesizeSyntheticMVarsNoPostponing
  let r := mkApp e0 (← instantiateMVars he)
  unless ← isDefEq (← inferType r) ety do
    throwError "ctab%: result type{indentExpr (← inferType r)}\ndoes not match{indentExpr ety}"
  return r

end InitECandidate.Solver.MemSafe.Shards
