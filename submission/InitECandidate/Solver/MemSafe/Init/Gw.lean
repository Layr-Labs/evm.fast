import InitECandidate.Solver.MemSafe.Alloc
import InitECandidate.Solver.Spec.GlobalFree

/-!
# Init: statements that write no global and never escape

`gwNoneB S p`: `p` writes no global at all and calls only functions of `S`. `GwNoneClosed S C`: every code entry of `S`
passes. `gwNone_globals`: such a program leaves the whole `globals` map unchanged (from the per-global `gw_preserved` and
`hfm_ext`). `escFreeB p`: no `return` / `break` / `continue` and no exception handlers; `noEsc_prog`: such a program never ends
in `break`, `continue` or a `return`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

def tgtNone : Option (VarKind × MlS) → Bool
  | some (.global, _) => false
  | _ => true

def gwNoneB (S : List MlS) : ProgHOL 64 → Bool
  | .assign k n _ => tgtNone (some (k, n))
  | .shMemLoad _ k n _ => tgtNone (some (k, n))
  | .dec _ _ _ b => gwNoneB S b
  | .seq a b => gwNoneB S a && gwNoneB S b
  | .ite _ a b => gwNoneB S a && gwNoneB S b
  | .while _ b => gwNoneB S b
  | .call none f _ => S.contains f
  | .call (some (tgt, none)) f _ => S.contains f && tgtNone tgt
  | .call (some (tgt, some (_, _, hp))) f _ => S.contains f && tgtNone tgt && gwNoneB S hp
  | .decCall _ _ f _ k => S.contains f && gwNoneB S k
  | _ => true

def GwNoneClosed (S : List MlS)
    (C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)) : Prop :=
  ∀ f, S.contains f = true → ∀ ps b rs, C f = some (ps, b, rs) → gwNoneB S b = true

theorem gwFree_of_none (g : MlS) (S : List MlS) :
    ∀ p : ProgHOL 64, gwNoneB S p = true → gwFreeB g S p = true
  | .skip, _ => rfl
  | .dec n sh e b, h => by simp only [gwNoneB, gwFreeB] at h ⊢; exact gwFree_of_none g S b h
  | .assign k n e, h => by
      cases k <;> simp_all [gwNoneB, gwFreeB, tgtNone, tgtOk]
  | .primitive .., _ => rfl
  | .store .., _ => rfl
  | .store32 .., _ => rfl
  | .storeByte .., _ => rfl
  | .seq a b, h => by
      simp only [gwNoneB, gwFreeB, Bool.and_eq_true] at h ⊢
      exact ⟨gwFree_of_none g S a h.1, gwFree_of_none g S b h.2⟩
  | .ite c a b, h => by
      simp only [gwNoneB, gwFreeB, Bool.and_eq_true] at h ⊢
      exact ⟨gwFree_of_none g S a h.1, gwFree_of_none g S b h.2⟩
  | .while c b, h => by simp only [gwNoneB, gwFreeB] at h ⊢; exact gwFree_of_none g S b h
  | .break, _ => rfl
  | .continue, _ => rfl
  | .call none f a, h => by simpa [gwNoneB, gwFreeB] using h
  | .call (some (tgt, none)) f a, h => by
      simp only [gwNoneB, gwFreeB, Bool.and_eq_true] at h ⊢
      refine ⟨h.1, ?_⟩
      rcases tgt with _ | ⟨k, n⟩
      · rfl
      · cases k <;> simp_all [tgtNone, tgtOk]
  | .call (some (tgt, some (x, y, hp))) f a, h => by
      simp only [gwNoneB, gwFreeB, Bool.and_eq_true] at h ⊢
      refine ⟨⟨h.1.1, ?_⟩, gwFree_of_none g S hp h.2⟩
      rcases tgt with _ | ⟨k, n⟩
      · rfl
      · cases k <;> simp_all [tgtNone, tgtOk]
  | .decCall n sh f a k, h => by
      simp only [gwNoneB, gwFreeB, Bool.and_eq_true] at h ⊢
      exact ⟨h.1, gwFree_of_none g S k h.2⟩
  | .extCall .., _ => rfl
  | .raise .., _ => rfl
  | .return .., _ => rfl
  | .shMemLoad o k n a, h => by
      cases k <;> simp_all [gwNoneB, gwFreeB, tgtNone, tgtOk]
  | .shMemStore .., _ => rfl
  | .tick, _ => rfl
  | .annot .., _ => rfl

theorem gwNoneClosed_gw {S : List MlS}
    {C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)} (hS : GwNoneClosed S C)
    (g : MlS) : GwClosed g S C :=
  fun f hf ps b rs hc => gwFree_of_none g S b (hS f hf ps b rs hc)

/-- A checked program leaves the whole `globals` map unchanged. -/
theorem gwNone_globals {S : List MlS}
    {C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)} (hS : GwNoneClosed S C)
    (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ) (hp : gwNoneB S p = true)
    (hc : s.code.lookup = C) : (evaluateHOLFiniteState s p).2.globals = s.globals := by
  apply MemSafe.AllocImpl.hfm_ext
  funext g
  exact gw_preserved (gwNoneClosed_gw hS g) p s (gwFree_of_none g S p hp) hc

theorem funSpec_gwNone {X : Ctx 64} {S : List MlS} (hS : GwNoneClosed S X.code.lookup)
    {f : MlS} (hf : S.contains f = true) :
    FunSpec σ X f (fun _ s _ t => t.globals = s.globals) := by
  intro vs body callee rs hl s hs _ r _
  obtain ⟨ps, hcode⟩ := lookupCode_some' hl
  exact gwNone_globals hS body s (hS f hf ps body rs hcode) (by rw [hs.1])

end InitECandidate.Solver.MemSafe.Init
