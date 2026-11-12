import InitECandidate.Solver.MemSafe.Trie.Leaf

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# The `Clean` kit: statements that change neither memory nor globals

`CP s0 := Clean s0` as pre and `CQ s0` (`Clean s0 t` for every good result) as post, for read-only
functions (`node_ref_len`, `_node_needs_rlp`, ...) whose exceptions come only from `mpt_fail`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

def CQ (s0 : State σ) : Option (PanSemResultExact 64) → State σ → Prop := fun _ t => Clean s0 t

theorem clean_refl (s : State σ) : Clean s s := ⟨rfl, rfl⟩
theorem clean_trans {s t u : State σ} (h1 : Clean s t) (h2 : Clean t u) : Clean s u :=
  ⟨h2.1.trans h1.1, h2.2.trans h1.2⟩

theorem cc_seq {s0 : State σ} {a b : ProgHOL 64}
    (ha : HoareG σ X (Clean s0) a (CQ s0)) (hb : HoareG σ X (Clean s0) b (CQ s0)) :
    HoareG σ X (Clean s0) (.seq a b) (CQ s0) :=
  hoareG_seq ha (fun _ _ _ _ _ h => h) (hoareG_pre hb fun _ _ h => h)

theorem cc_ite {s0 : State σ} {c : ExpHOL 64} {a b : ProgHOL 64}
    (ha : HoareG σ X (Clean s0) a (CQ s0)) (hb : HoareG σ X (Clean s0) b (CQ s0)) :
    HoareG σ X (Clean s0) (.ite c a b) (CQ s0) :=
  hoareG_ite (hoareG_pre ha fun _ _ h => h.1) (hoareG_pre hb fun _ _ h => h.1)

theorem cc_skip {s0 : State σ} : HoareG σ X (Clean s0) .skip (CQ s0) :=
  hoareG_skip fun _ _ h => h

theorem cc_return {s0 : State σ} {e : ExpHOL 64} : HoareG σ X (Clean s0) (.return e) (CQ s0) :=
  hoareG_return fun _ _ h _ _ => h

theorem cc_dec {s0 : State σ} {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {b : ProgHOL 64}
    (hb : HoareG σ X (Clean s0) b (CQ s0)) : HoareG σ X (Clean s0) (.dec x sh e b) (CQ s0) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  exact hoareG_conseq hb (fun t _ ht => by subst ht; exact hp) (fun _ _ _ _ h => h)

theorem cc_assign {s0 : State σ} {x : MlS} {e : ExpHOL 64} :
    HoareG σ X (Clean s0) (.assign .local x e) (CQ s0) :=
  hoareG_assign fun _ _ h _ _ _ => h

/-- A call of a callee that is clean in every good result. -/
theorem cc_callD {s0 : State σ} {f : MlS} {args : List (ExpHOL 64)}
    (hf : FunSpec σ X f (fun _ s r t => Good (some r) → Clean s t)) :
    HoareG σ X (Clean s0) (.call (some (none, none)) f args) (CQ s0) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hp vs hvs callee v st hR _
    exact clean_trans hp (hR (by simp [Good]))
  · intro s hs hp vs hvs callee r st hR _ habn
    exact clean_trans hp (hR (abn_good habn))

theorem cc_decCall {s0 : State σ} {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} (hf : FunSpec σ X f (fun _ s r t => Good (some r) → Clean s t))
    (hk : HoareG σ X (Clean s0) k (CQ s0)) :
    HoareG σ X (Clean s0) (.decCall rn sh f args k) (CQ s0) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hp vs hvs callee v st hR _ hsh
    have := clean_trans hp (hR (by simp [Good]))
    exact hoareG_conseq hk (fun t _ ht => by subst ht; exact this) (fun _ _ _ _ h => h)
  · intro s hs hp vs hvs callee r st hR _ habn
    exact clean_trans hp (hR (abn_good habn))

theorem cc_tail {s0 : State σ} {f : MlS} {args : List (ExpHOL 64)}
    (hf : FunSpec σ X f (fun _ s r t => Good (some r) → Clean s t)) :
    HoareG σ X (Clean s0) (.call none f args) (CQ s0) := by
  refine hoareG_tailCall hf ?_ ?_
  · intro s hs hp vs hvs callee v st hR _
    exact clean_trans hp (hR (by simp [Good]))
  · intro s hs hp vs hvs callee r st hR _ habn
    exact clean_trans hp (hR (abn_good habn))

theorem cc_fail (hC : X.code.lookup = guestCode) {s0 : State σ} {args : List (ExpHOL 64)} :
    HoareG σ X (Clean s0) (.call (some (none, none)) (nm "mpt_fail") args) (CQ s0) :=
  cc_callD ((spec_mpt_fail hC).mono fun _ _ _ _ h hg => (h hg).1)

end InitECandidate.Solver.MemSafe.Trie
