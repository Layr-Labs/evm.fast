import InitECandidate.Solver.Spec.GlobalFree

/-!
# "Assigns only the globals `W`": one pass for every other global

`gwOnly W S p`: every global `p` assigns is in `W`, and `p` calls only functions in `S`. The same shape as `Spec.gwFreeB`, with
`W.contains` for the target test, so a shard is evaluated once rather than once per global. **`gwFree_of_only`**: for `g ∉ W`,
`gwOnly W S p` gives `gwFreeB g S p`.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- A write target that is a local, or a global in `W`. -/
def tgtW (W : List MlS) : Option (VarKind × MlS) → Bool
  | some (.global, n) => W.contains n
  | _ => true

def gwOnly (W S : List MlS) : ProgHOL 64 → Bool
  | .assign k n _ => tgtW W (some (k, n))
  | .shMemLoad _ k n _ => tgtW W (some (k, n))
  | .dec _ _ _ b => gwOnly W S b
  | .seq a b => gwOnly W S a && gwOnly W S b
  | .ite _ a b => gwOnly W S a && gwOnly W S b
  | .while _ b => gwOnly W S b
  | .call none f _ => S.contains f
  | .call (some (tgt, none)) f _ => S.contains f && tgtW W tgt
  | .call (some (tgt, some (_, _, hp))) f _ => S.contains f && tgtW W tgt && gwOnly W S hp
  | .decCall _ _ f _ k => S.contains f && gwOnly W S k
  | _ => true

theorem tgt_of_tgtW {W : List MlS} {g : MlS} (hg : W.contains g = false) :
    ∀ t : Option (VarKind × MlS), tgtW W t = true → tgtOk g t = true := by
  intro t h
  match t, h with
  | none, _ => rfl
  | some (.«local», _), _ => rfl
  | some (.«global», n), h =>
    simp only [tgtW] at h
    simp only [tgtOk, decide_eq_true_eq]
    rintro rfl
    rw [hg] at h
    cases h

theorem gwFree_of_only {W S : List MlS} {g : MlS} (hg : W.contains g = false) (p : ProgHOL 64)
    (h : gwOnly W S p = true) : gwFreeB g S p = true := by
  induction p using gwFreeB.induct with
  | case1 k n e => exact tgt_of_tgtW hg _ h
  | case2 a k n b => exact tgt_of_tgtW hg _ h
  | case3 a b c d ih => simpa [gwOnly, gwFreeB] using ih (by simpa [gwOnly] using h)
  | case4 a b iha ihb =>
    simp only [gwOnly, Bool.and_eq_true] at h
    simp only [gwFreeB, Bool.and_eq_true]
    exact ⟨iha h.1, ihb h.2⟩
  | case5 c a b iha ihb =>
    simp only [gwOnly, Bool.and_eq_true] at h
    simp only [gwFreeB, Bool.and_eq_true]
    exact ⟨iha h.1, ihb h.2⟩
  | case6 c b ih => simpa [gwOnly, gwFreeB] using ih (by simpa [gwOnly] using h)
  | case7 f a => simpa [gwOnly, gwFreeB] using h
  | case8 tgt f a =>
    simp only [gwOnly, Bool.and_eq_true] at h
    simp only [gwFreeB, Bool.and_eq_true]
    exact ⟨h.1, tgt_of_tgtW hg _ h.2⟩
  | case9 tgt x y hp f a ih =>
    simp only [gwOnly, Bool.and_eq_true] at h
    simp only [gwFreeB, Bool.and_eq_true]
    exact ⟨⟨h.1.1, tgt_of_tgtW hg _ h.1.2⟩, ih h.2⟩
  | case10 a b f c k ih =>
    simp only [gwOnly, Bool.and_eq_true] at h
    simp only [gwFreeB, Bool.and_eq_true]
    exact ⟨h.1, ih h.2⟩
  | case11 t h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 =>
    cases t with
    | assign k n e => exact (h1 k n e rfl).elim
    | shMemLoad a b c d => exact (h2 a b c d rfl).elim
    | dec a b c d => exact (h3 a b c d rfl).elim
    | seq a b => exact (h4 a b rfl).elim
    | ite a b c => exact (h5 a b c rfl).elim
    | «while» a b => exact (h6 a b rfl).elim
    | call rt f args =>
      rcases rt with _ | ⟨tgt, _ | ⟨x, y, hp⟩⟩
      · exact (h7 f args rfl).elim
      · exact (h8 tgt f args rfl).elim
      · exact (h9 tgt x y hp f args rfl).elim
    | decCall a b c d e => exact (h10 a b c d e rfl).elim
    | _ => rfl

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.gwFree_of_only
