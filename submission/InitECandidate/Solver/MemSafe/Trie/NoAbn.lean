import InitECandidate.Solver.MemSafe.Trie.WriteRef

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# The `NoAbn` kit: code that never ends abnormally

`HoareG σ X (fun _ => True) c NoAbnQ` for straight code over escape-free callees (`FunSpec … ¬Abn r`).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

abbrev NA (c : ProgHOL 64) : Prop := HoareG σ X (fun _ => True) c (NoAbnQ (σ := σ))

theorem na_skip : NA (σ := σ) (X := X) .skip := hoareG_skip fun _ _ _ r' hr' => by cases hr'

theorem na_assign {k n e} : NA (σ := σ) (X := X) (.assign k n e) :=
  hoareG_assignK fun _ _ _ _ _ _ r' hr' => by cases hr'

theorem na_store {a e} : NA (σ := σ) (X := X) (.store a e) :=
  hoareG_store fun _ _ _ _ _ _ _ _ _ r' hr' => by cases hr'

theorem na_storeByte {a e} : NA (σ := σ) (X := X) (.storeByte a e) :=
  hoareG_storeByte fun _ _ _ _ _ _ _ _ _ r' hr' => by cases hr'

theorem na_return {e} : NA (σ := σ) (X := X) (.return e) :=
  hoareG_return fun _ _ _ v _ r' hr' => by
    cases hr'; rintro (⟨e, w, h⟩ | ⟨e, h⟩) <;> cases h

theorem na_seq {a b} (ha : NA (σ := σ) (X := X) a) (hb : NA (σ := σ) (X := X) b) :
    NA (σ := σ) (X := X) (.seq a b) :=
  hoareG_seq (R := NoAbnQ) ha (fun _ _ _ _ _ h => h) (hoareG_pre hb fun _ _ _ => trivial)

theorem na_ite {c a b} (ha : NA (σ := σ) (X := X) a) (hb : NA (σ := σ) (X := X) b) :
    NA (σ := σ) (X := X) (.ite c a b) :=
  hoareG_ite (hoareG_pre ha fun _ _ _ => trivial) (hoareG_pre hb fun _ _ _ => trivial)

theorem na_dec {x sh e b} (hb : NA (σ := σ) (X := X) b) : NA (σ := σ) (X := X) (.dec x sh e b) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  exact hoareG_conseq hb (fun _ _ _ => trivial) (fun _ _ _ _ h => h)

theorem na_callD {f args} (hf : FunSpec σ X f (fun _ _ r _ => ¬ Abn r)) :
    NA (σ := σ) (X := X) (.call (some (none, none)) f args) :=
  hoareG_callD hf (fun _ _ _ _ _ _ _ _ _ _ r' hr' => by cases hr')
    (fun _ _ _ _ _ _ _ _ hR _ habn => absurd habn hR)

theorem na_callA {f args x} (hf : FunSpec σ X f (fun _ _ r _ => ¬ Abn r)) :
    NA (σ := σ) (X := X) (.call (some (some (.local, x), none)) f args) :=
  hoareG_callA hf (fun _ _ _ _ _ _ _ _ _ _ _ r' hr' => by cases hr')
    (fun _ _ _ _ _ _ _ _ hR _ habn => absurd habn hR)

theorem na_decCall {rn sh f args k} (hf : FunSpec σ X f (fun _ _ r _ => ¬ Abn r))
    (hk : NA (σ := σ) (X := X) k) : NA (σ := σ) (X := X) (.decCall rn sh f args k) := by
  refine hoareG_decCall hf ?_ (fun _ _ _ _ _ _ _ _ hR _ habn => absurd habn hR)
  intro s hs hp vs hvs callee v st hR _ hsh
  exact hoareG_conseq hk (fun _ _ _ => trivial) (fun _ _ _ _ h => h)

theorem na_tail {f args} (hf : FunSpec σ X f (fun _ _ r _ => ¬ Abn r)) :
    NA (σ := σ) (X := X) (.call none f args) :=
  hoareG_tailCall hf (fun _ _ _ _ _ _ v _ _ _ r' hr' => by
      cases hr'; rintro (⟨e, w, h⟩ | ⟨e, h⟩) <;> cases h)
    (fun _ _ _ _ _ _ _ _ hR _ habn => absurd habn hR)

end InitECandidate.Solver.MemSafe.Trie
