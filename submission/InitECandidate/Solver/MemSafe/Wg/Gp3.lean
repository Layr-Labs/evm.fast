import InitECandidate.Solver.MemSafe.Wg.Gp2

/-!
# Wg: `process_general_purpose_requests`, environment kit and the extraction step
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- `Ecur` tracks everything `En0` does. -/
def EnExt (En0 Ecur : Env) : Prop := ∀ x v, En0 x = some v → Ecur x = some v

theorem enExt_refl (En0 : Env) : EnExt En0 En0 := fun _ _ h => h

theorem enExt_set {En0 E1 : Env} (h : EnExt En0 E1) {y : MlS} (hy : En0 y = none) (w : ValueHOL 64) :
    EnExt En0 (E1.set y w) := by
  intro x v hx
  by_cases hxy : x = y
  · subst hxy; rw [hy] at hx; cases hx
  · rw [env_set_ne _ _ hxy]; exact h x v hx

theorem enExt_dep {En0 Ecur : Env} (h : EnExt En0 Ecur) (dep dn dc : BitVec 64) :
    EnExt (EnDep En0 dep dn dc) (EnDep Ecur dep dn dc) := by
  intro x v hx
  simp only [EnDep, Env.set] at hx ⊢
  split_ifs at hx ⊢ <;> first | exact hx | exact h _ _ hx

theorem pa_enExt {E : EbE σ} {En En' : Env} {S : FS} {u : State σ} (h : PA E En S u) (he : EnExt En' En) :
    PA E En' S u := pa_mono h he (fun _ hf => hf)

/-- Scope exit for a post that holds a witness. -/
theorem resIns_ex {E : EbE σ} {α : Type} {B : α → Prop} {F : α → Env} {S : α → FS} {n : MlS}
    (hn : ∀ a, F a n = none) : ResIns n (fun r (t : State σ) => r = none ∧ ∃ a, B a ∧ PA E (F a) (S a) t) := by
  intro r t old ⟨hr, a, hb, hp⟩
  refine ⟨hr, a, hb, pb_loc hp.1 _ t.clock, fun x v hx => ?_⟩
  by_cases hxn : x = n
  · subst hxn; rw [hn a] at hx; cases hx
  · show (t.locals.resVarEq (n, old)).lookup x = some v
    rw [lookup_resVarEq_ne _ _ (Ne.symm hxn)]
    exact hp.2 x v hx

theorem resIns_depI {E : EbE σ} {En0 : Env} {S : FS} {n : MlS} (hn : En0 n = none) (h1 : n ≠ nm "dep")
    (h2 : n ≠ nm "dep_n") (h3 : n ≠ nm "dep_cap") : ResIns n (fun r (t : State σ) => r = none ∧ DepI E En0 S t) := by
  intro r t old ⟨hr, dep, dn, dc, Nd, hP, hp⟩
  refine ⟨hr, dep, dn, dc, Nd, hP, pb_loc hp.1 _ t.clock, fun x v hx => ?_⟩
  by_cases hxn : x = n
  · subst hxn
    rw [envDep_other h1 h2 h3, hn] at hx; cases hx
  · show (t.locals.resVarEq (n, old)).lookup x = some v
    rw [lookup_resVarEq_ne _ _ (Ne.symm hxn)]
    exact hp.2 x v hx

end InitECandidate.Solver.MemSafe.Wg
