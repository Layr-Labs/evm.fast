import InitECandidate.Solver.Improvements.TypedTableCount
import InitECandidate.Solver.Improvements.BoundedInitializedLoop
import InitECandidate.Solver.MemSafe.Frames.RunFramesGen

/-! Capture the builder loops' actual offset-24 count load, and preserve its
bounded local through bodies checked by `keepsB`. -/
set_option autoImplicit false
namespace BuilderTableLocalFacts
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Hooks
open BoundedInitializedLoop

variable {σ : Type} {X : Ctx 64}

theorem typed_count_load {Γ : Gam} {s : State σ} {o : Obj}
    {table : ExpHOL 64} {v : ValueHOL 64}
    (hG : G guestC (guestHooksR (σ := σ)) Γ s) (ho : o ∈ Γ)
    (hkind : hkOf o.ty = .tab)
    (ht : ev s table = some (.val (.word o.base)))
    (hv : ev s (.load .one (.op .add [table, .const 24])) = some v) :
    ∃ cw : BitVec 64, v = .val (.word cw) ∧ cw.toNat ≤ 2 ^ 32 := by
  obtain ⟨w, hw, hmem, rfl⟩ := ev_load_one hv
  have haddr := ev_add2 ht (ev_const (s := s) (24 : BitVec 64))
  rw [haddr] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst w
  refine ⟨rd s.memory (o.base + BitVec.ofNat 64 24), ?_, ?_⟩
  · exact congrArg ValueHOL.val (mem_rd s.memory (o.base + BitVec.ofNat 64 24))
  · exact TypedTableCount.count_le_of_G hG ho hkind

theorem local_cap_kept {cap : MlS} {C : Nat} {body : ProgHOL 64}
    (hkeep : Keeps σ cap body) {s : State σ}
    (hcap : LocalCap cap C s)
    (hexit : (evaluateHOLFiniteState s body).1 = none ∨
      (evaluateHOLFiniteState s body).1 = some .continue) :
    LocalCap cap C (evaluateHOLFiniteState s body).2 := by
  obtain ⟨v, hv, hn⟩ := hcap
  refine ⟨v, ?_, hn⟩
  rw [hkeep s (by rcases hexit with h | h <;> simp [LoopExit, h])]
  exact hv

theorem assign_local_cap {P : State σ → Prop} {cap : MlS} {e : ExpHOL 64} {C : Nat}
    (hload : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v →
      ∃ w : BitVec 64, v = .val (.word w) ∧ w.toNat ≤ C) :
    Hoare σ X P (.assign .local cap e)
      (fun r t => r = none → LocalCap cap C t) := by
  refine hoare_assign (fun s hs hp v hv hvalid => ?_)
  obtain ⟨w, rfl, hw⟩ := hload s hs hp v hv
  intro _
  exact ⟨w, lk_set_self _ _ _, hw⟩

theorem hoare_pair {P : State σ → Prop} {p : ProgHOL 64}
    {Q R : Option (PanSemResultExact 64) → State σ → Prop}
    (hq : Hoare σ X P p Q) (hr : Hoare σ X P p R) :
    Hoare σ X P p (fun r t => Q r t ∧ R r t) :=
  fun s hs hp ht => ⟨hq s hs hp ht, hr s hs hp ht⟩

#print axioms typed_count_load
#print axioms assign_local_cap
end BuilderTableLocalFacts
