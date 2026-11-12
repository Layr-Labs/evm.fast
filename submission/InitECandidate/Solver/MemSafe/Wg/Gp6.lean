import InitECandidate.Solver.MemSafe.Wg.Gp5

/-!
# Wg: `process_general_purpose_requests`, the body of the inner loop
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

theorem enExt_depset {Ecur : Env} {y : MlS} (hy1 : y ≠ nm "dep") (hy2 : y ≠ nm "dep_n") (hy3 : y ≠ nm "dep_cap")
    (v : ValueHOL 64) (dep dn dc : BitVec 64) :
    EnExt (EnDep (Ecur.set y v) dep dn dc) ((EnDep Ecur dep dn dc).set y v) := by
  intro x v' hx
  rw [envDep_eq] at hx
  by_cases h1 : x = nm "dep_cap"
  · subst h1; simp [Env.set, EnDep, hy3.symm] at hx ⊢; exact hx
  · by_cases h2 : x = nm "dep_n"
    · subst h2; simp [h1] at hx; simp [Env.set, EnDep, hy2.symm, h1, hx]
    · by_cases h3 : x = nm "dep"
      · subst h3; simp [h1, h2] at hx; simp [Env.set, EnDep, hy1.symm, h1, h2, hx]
      · simp [h1, h2, h3] at hx
        by_cases h4 : x = y
        · subst h4; simp [Env.set] at hx ⊢; exact hx
        · simp [Env.set, EnDep, h1, h2, h3, h4] at hx ⊢
          exact hx

section g6
variable {E : EbE σ} {En0 Ecur : Env} {S : FS}

theorem pa_depset {y : MlS} {v : ValueHOL 64} {dep dn dc : BitVec 64} {S' : FS} {u : State σ}
    (hy1 : y ≠ nm "dep") (hy2 : y ≠ nm "dep_n") (hy3 : y ≠ nm "dep_cap")
    (h : PA E ((EnDep Ecur dep dn dc).set y v) S' u) : PA E (EnDep (Ecur.set y v) dep dn dc) S' u :=
  pa_enExt h (enExt_depset hy1 hy2 hy3 v dep dn dc)

theorem gp_dep_step {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd) (hn0 : En0 (nm "nd") = none)
    (hT : Tidy zGpr S) (hext : EnExt En0 Ecur) :
    HN (PA E (EnDep Ecur dep dn dc) (DepS S dep Nd)) gprS22 (DepI E En0 S) := by
  unfold gprS22
  refine hseqN (gp_guard hP hn0 (tidy_add_fbuf hT dep Nd) hext) ?_
  intro s hs ⟨a, ⟨hP', hg⟩, hp⟩ ht
  exact gp_extract (S := S) hP' hg (tidy_add_fbuf hT a.1 a.2.2) (enExt_refl En0) s hs hp ht

end g6

end InitECandidate.Solver.MemSafe.Wg
