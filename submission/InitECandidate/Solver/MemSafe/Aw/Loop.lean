import InitECandidate.Solver.MemSafe.Aw.Htr3

set_option autoImplicit false

/-!
# Loop helpers for the SSZ root loops
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

theorem eq_of_cond {s : State σ} {x : MlS} {K : BitVec 64} {c : Nat}
    (hk : s.locals.lookup x = some (.val (.word K)))
    {w : BitVec 64} (h : ev s (.cmp .equal (lv x) (cw c)) = some (.val (.word w))) (hw : w ≠ 0) :
    K = BitVec.ofNat 64 c := by
  obtain ⟨a, b, ha, hb, hab⟩ := cmp_true h hw
  rw [ev_lw hk] at ha
  cases ha
  rw [ev_cw] at hb
  cases hb
  simpa [wordCmpHOL] using hab

theorem ne_of_cond0 {s : State σ} {x : MlS} {K : BitVec 64} {c : Nat}
    (hk : s.locals.lookup x = some (.val (.word K)))
    (h : ev s (.cmp .equal (lv x) (cw c)) = some (.val (.word 0))) :
    K ≠ BitVec.ofNat 64 c := by
  obtain ⟨a, b, ha, hb, hab⟩ := cmp_false h
  rw [ev_lw hk] at ha
  cases ha
  rw [ev_cw] at hb
  cases hb
  intro he
  subst he
  simp [wordCmpHOL] at hab

theorem less_lt {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (h : wordCmpHOL .less x y = true) :
    y.toNat < 2 ^ 63 ∧ x.toNat < y.toNat := by
  by_cases hy : y.toNat < 2 ^ 63
  · exact ⟨hy, less_small hx hy h⟩
  · exfalso
    simp only [wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess, hx, hy, if_true,
      if_false, decide_eq_true_eq] at h
    first | omega | simp_all

theorem hoareG_iteC {a : AwE σ} {c : ExpHOL 64} {c1 c2 : ProgHOL 64} {L L' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (h1 : HoareG σ X (fun s => APre a L s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) c1
      (AQ a L' Ret))
    (h2 : HoareG σ X (fun s => APre a L s ∧ ev s c = some (.val (.word 0))) c2 (AQ a L' Ret)) :
    HoareG σ X (APre a L) (.ite c c1 c2) (AQ a L' Ret) :=
  hoareG_ite h1 h2

/-- A loop body proved under the extra fact that the index can be incremented. -/
theorem hoareG_loopPre {a : AwE σ} {iN' nN' : MlS} {J : Locals → Prop} {body : ProgHOL 64}
    {Ret : ValueHOL 64 → Prop}
    (hb : HoareG σ X (APre a (fun m => J m ∧ ∃ I : BitVec 64, m.lookup iN' = some (.val (.word I)) ∧
      I.toNat + 1 < 2 ^ 63)) body (AQ a J Ret))
    (hJ : ∀ m, J m → ∃ I N : BitVec 64, m.lookup iN' = some (.val (.word I)) ∧
      m.lookup nN' = some (.val (.word N)) ∧ I.toNat < 2 ^ 63) :
    HoareG σ X (fun s => APre a J s ∧ CondTrue s (.cmp .less (lv iN') (lv nN'))) body
      (AQ a J Ret) := by
  refine hoareG_pre hb (fun s _ h => ⟨h.1.1, h.1.2, ?_⟩)
  obtain ⟨I, N, hI, hN, hI2⟩ := hJ _ h.1.2
  obtain ⟨w, hw, hw0⟩ := h.2
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hI] at hx
  cases hx
  rw [ev_lw hN] at hy
  cases hy
  have := less_lt hI2 hxy
  exact ⟨I, hI, by omega⟩

def rootsE : ExpHOL 64 := .op .add [lv rootsN, .panop .mul [lv iN, cw 32]]

theorem ev_rootsE {s : State σ} {R I : BitVec 64} (hR : s.locals.lookup rootsN = some (.val (.word R)))
    (hI : s.locals.lookup iN = some (.val (.word I))) (hb : I.toNat * 32 ≤ domTop + 64)
    (hR2 : R.toNat ≤ heapEnd) :
    ev s rootsE = some (.val (.word (R + I * BitVec.ofNat 64 32))) ∧
      (R + I * BitVec.ofNat 64 32).toNat = R.toNat + I.toNat * 32 := by
  have hd : domTop = 1099511627776 := by decide
  have hHE : heapEnd = 2952790016 := rfl
  have hm : (I * BitVec.ofNat 64 32).toNat = I.toNat * 32 := toNat_mulc (by omega) (by omega)
  refine ⟨ev_add2 (ev_lw hR) (ev_mul2 (ev_lw hI) (ev_cw _ 32)), ?_⟩
  rw [toNat_add2 (by rw [hm]; omega), hm]

end InitECandidate.Solver.MemSafe.Aw
