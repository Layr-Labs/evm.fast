import InitECandidate.Solver.MemSafe.BalEnc.Defs
import InitECandidate.Solver.MemSafe.Aw.Eh

set_option autoImplicit false

/-!
# Locals invariants as fact lists

`Fct`: a fact about locals (`bd x lo hi`: word in range; `rel x y`: `x + 9 ≤ y`; `eqv x v`;
`prop x P`; `rel2 x y R`; `str2 x P`: a two-word struct). `Hs fs m`: every fact holds.
Updates of variables the facts do not mention keep `Hs` (`hs_upd`, `hs_res`).

Rules on top of the `Aw` kit: `hoareG_decH` (`var x = e; body`), `hoareG_stepH`
(`w = f(x, ...); x = x + w; k`) and `hoareG_wrap` (the list-header stretch).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

inductive Fct where
  | bd (x : MlS) (lo hi : Nat)
  | rel (x y : MlS)
  | eqv (x : MlS) (v : BitVec 64)
  | prop (x : MlS) (P : BitVec 64 → Prop)
  | rel2 (x y : MlS) (R : BitVec 64 → BitVec 64 → Prop)
  | str2 (x : MlS) (P : BitVec 64 → BitVec 64 → Prop)
  | str3 (x y z : MlS) (P : BitVec 64 → BitVec 64 → BitVec 64 → BitVec 64 → Prop)
  | rel3 (x y z : MlS) (R : BitVec 64 → BitVec 64 → BitVec 64 → Prop)

def Fct.vars : Fct → List MlS
  | .bd x _ _ => [x]
  | .rel x y => [x, y]
  | .eqv x _ => [x]
  | .prop x _ => [x]
  | .rel2 x y _ => [x, y]
  | .str2 x _ => [x]
  | .str3 x y z _ => [x, y, z]
  | .rel3 x y z _ => [x, y, z]

def Fct.holds (m : Locals) : Fct → Prop
  | .bd x lo hi => Bd m x lo hi
  | .rel x y => ∃ X Y : BitVec 64, m.lookup x = some (.val (.word X)) ∧
      m.lookup y = some (.val (.word Y)) ∧ X.toNat + 9 ≤ Y.toNat
  | .eqv x v => m.lookup x = some (.val (.word v))
  | .prop x P => ∃ X : BitVec 64, m.lookup x = some (.val (.word X)) ∧ P X
  | .rel2 x y R => ∃ X Y : BitVec 64, m.lookup x = some (.val (.word X)) ∧
      m.lookup y = some (.val (.word Y)) ∧ R X Y
  | .str2 x P => ∃ O N : BitVec 64, m.lookup x = some (.rStruct [.val (.word O), .val (.word N)]) ∧ P O N
  | .rel3 x y z R => ∃ X Y Z : BitVec 64, m.lookup x = some (.val (.word X)) ∧
      m.lookup y = some (.val (.word Y)) ∧ m.lookup z = some (.val (.word Z)) ∧ R X Y Z
  | .str3 x y z P => ∃ O N Y Z : BitVec 64,
      m.lookup x = some (.rStruct [.val (.word O), .val (.word N)]) ∧
      m.lookup y = some (.val (.word Y)) ∧ m.lookup z = some (.val (.word Z)) ∧ P O N Y Z

def Hs (fs : List Fct) (m : Locals) : Prop := ∀ f ∈ fs, f.holds m

theorem hs_nil (m : Locals) : Hs [] m := fun f hf => by simp at hf

theorem hs_cons {f : Fct} {fs : List Fct} {m : Locals} (h1 : f.holds m) (h2 : Hs fs m) :
    Hs (f :: fs) m := by
  intro g hg
  rcases List.mem_cons.mp hg with rfl | hg
  · exact h1
  · exact h2 g hg

theorem hs_append {fs gs : List Fct} {m : Locals} (h1 : Hs fs m) (h2 : Hs gs m) :
    Hs (fs ++ gs) m := by
  intro g hg
  rcases List.mem_append.mp hg with hg | hg
  · exact h1 g hg
  · exact h2 g hg

theorem hs_mono {fs gs : List Fct} {m : Locals} (h : Hs fs m) (hs : ∀ f ∈ gs, f ∈ fs) :
    Hs gs m := fun f hf => h f (hs f hf)

theorem hs_get {fs : List Fct} {m : Locals} (h : Hs fs m) {f : Fct} (hf : f ∈ fs) : f.holds m :=
  h f hf

theorem fct_upd {m : Locals} {x : MlS} {v : ValueHOL 64} {f : Fct} (hx : x ∉ f.vars)
    (h : f.holds m) : f.holds (m.update (x, v)) := by
  cases f with
  | bd y lo hi =>
    simp only [Fct.vars, List.mem_singleton] at hx
    exact bd_upd hx h
  | rel y z =>
    simp only [Fct.vars, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
    obtain ⟨X, Y, h1, h2, h3⟩ := h
    exact ⟨X, Y, by rw [lookup_update_ne _ _ hx.1]; exact h1,
      by rw [lookup_update_ne _ _ hx.2]; exact h2, h3⟩
  | eqv y v' =>
    simp only [Fct.vars, List.mem_singleton] at hx
    simp only [Fct.holds] at h ⊢
    rw [lookup_update_ne _ _ hx]; exact h
  | prop y P =>
    simp only [Fct.vars, List.mem_singleton] at hx
    obtain ⟨X, h1, h2⟩ := h
    exact ⟨X, by rw [lookup_update_ne _ _ hx]; exact h1, h2⟩
  | rel2 y z R =>
    simp only [Fct.vars, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
    obtain ⟨X, Y, h1, h2, h3⟩ := h
    exact ⟨X, Y, by rw [lookup_update_ne _ _ hx.1]; exact h1,
      by rw [lookup_update_ne _ _ hx.2]; exact h2, h3⟩
  | str2 y P =>
    simp only [Fct.vars, List.mem_singleton] at hx
    obtain ⟨O, N, h1, h2⟩ := h
    exact ⟨O, N, by rw [lookup_update_ne _ _ hx]; exact h1, h2⟩
  | rel3 y1 y2 y3 R =>
    simp only [Fct.vars, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
    obtain ⟨X0, Y0, Z0, h1, h2, h3, h4⟩ := h
    exact ⟨X0, Y0, Z0, by rw [lookup_update_ne _ _ hx.1]; exact h1,
      by rw [lookup_update_ne _ _ hx.2.1]; exact h2, by rw [lookup_update_ne _ _ hx.2.2]; exact h3, h4⟩
  | str3 y1 y2 y3 P =>
    simp only [Fct.vars, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
    obtain ⟨O, N, Y, Z, h1, h2, h3, h4⟩ := h
    exact ⟨O, N, Y, Z, by rw [lookup_update_ne _ _ hx.1]; exact h1,
      by rw [lookup_update_ne _ _ hx.2.1]; exact h2, by rw [lookup_update_ne _ _ hx.2.2]; exact h3, h4⟩

theorem fct_res {m : Locals} {x : MlS} {o : Option (ValueHOL 64)} {f : Fct} (hx : x ∉ f.vars)
    (h : f.holds m) : f.holds (m.resVarEq (x, o)) := by
  cases f with
  | bd y lo hi =>
    simp only [Fct.vars, List.mem_singleton] at hx
    exact bd_res hx h
  | rel y z =>
    simp only [Fct.vars, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
    obtain ⟨X, Y, h1, h2, h3⟩ := h
    exact ⟨X, Y, by rw [lookup_resVarEq_ne _ _ hx.1]; exact h1,
      by rw [lookup_resVarEq_ne _ _ hx.2]; exact h2, h3⟩
  | eqv y v' =>
    simp only [Fct.vars, List.mem_singleton] at hx
    simp only [Fct.holds] at h ⊢
    rw [lookup_resVarEq_ne _ _ hx]; exact h
  | prop y P =>
    simp only [Fct.vars, List.mem_singleton] at hx
    obtain ⟨X, h1, h2⟩ := h
    exact ⟨X, by rw [lookup_resVarEq_ne _ _ hx]; exact h1, h2⟩
  | rel2 y z R =>
    simp only [Fct.vars, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
    obtain ⟨X, Y, h1, h2, h3⟩ := h
    exact ⟨X, Y, by rw [lookup_resVarEq_ne _ _ hx.1]; exact h1,
      by rw [lookup_resVarEq_ne _ _ hx.2]; exact h2, h3⟩
  | str2 y P =>
    simp only [Fct.vars, List.mem_singleton] at hx
    obtain ⟨O, N, h1, h2⟩ := h
    exact ⟨O, N, by rw [lookup_resVarEq_ne _ _ hx]; exact h1, h2⟩
  | rel3 y1 y2 y3 R =>
    simp only [Fct.vars, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
    obtain ⟨X0, Y0, Z0, h1, h2, h3, h4⟩ := h
    exact ⟨X0, Y0, Z0, by rw [lookup_resVarEq_ne _ _ hx.1]; exact h1,
      by rw [lookup_resVarEq_ne _ _ hx.2.1]; exact h2, by rw [lookup_resVarEq_ne _ _ hx.2.2]; exact h3, h4⟩
  | str3 y1 y2 y3 P =>
    simp only [Fct.vars, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
    obtain ⟨O, N, Y, Z, h1, h2, h3, h4⟩ := h
    exact ⟨O, N, Y, Z, by rw [lookup_resVarEq_ne _ _ hx.1]; exact h1,
      by rw [lookup_resVarEq_ne _ _ hx.2.1]; exact h2, by rw [lookup_resVarEq_ne _ _ hx.2.2]; exact h3, h4⟩

theorem hs_upd {fs : List Fct} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (hx : ∀ f ∈ fs, x ∉ f.vars) (h : Hs fs m) : Hs fs (m.update (x, v)) :=
  fun f hf => fct_upd (hx f hf) (h f hf)

theorem hs_res {fs : List Fct} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (hx : ∀ f ∈ fs, x ∉ f.vars) (h : Hs fs m) : Hs fs (m.resVarEq (x, o)) :=
  fun f hf => fct_res (hx f hf) (h f hf)

/-- `x` is a word local. -/
def wd (x : MlS) : Fct := .bd x 0 WW

theorem hs_bd {fs : List Fct} {m : Locals} {x : MlS} {lo hi : Nat} (h : Hs fs m)
    (hf : Fct.bd x lo hi ∈ fs) : ∃ w : BitVec 64, m.lookup x = some (.val (.word w)) ∧
      lo ≤ w.toNat ∧ w.toNat ≤ hi := h _ hf


/-- No fact of `F` mentions `x`. -/
abbrev Av (F : List Fct) (x : MlS) : Prop := ∀ f ∈ F, x ∉ f.vars

end InitECandidate.Solver.MemSafe.BalEnc
