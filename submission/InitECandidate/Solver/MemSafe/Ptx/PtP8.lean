import InitECandidate.Solver.MemSafe.Ptx.PtP7

/-!
# F3f: helpers for the message-building branch
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- Forget a binding. -/
def Env.del (E : Env) (x : MlS) : Env := fun y => if y = x then none else E y

theorem env_del_self (E : Env) (x : MlS) : E.del x x = none := by simp [Env.del]

theorem env_del_ne (E : Env) {x y : MlS} (h : y ≠ x) : E.del x y = E y := by simp [Env.del, h]

theorem pa_del {E : PtE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) (x : MlS) :
    PA E (En.del x) S u := by
  refine pa_mono h (fun y v hy => ?_) (fun f hf => hf)
  unfold Env.del at hy
  split at hy
  · cases hy
  · exact hy

theorem bufok0_le {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {w : BitVec 64} {n m : Nat} (hm : m ≤ n)
    (h : (Fct.bufok0 w n).holds p0 Γ p u) : (Fct.bufok0 w m).holds p0 Γ p u :=
  ⟨bufOK_le' h.1 hm, fun x hx => h.2 x ⟨hx.1, hx.2.1, by have := hx.2.2; omega⟩⟩

theorem tx_n_bound32 {E : PtE σ} (hP : PtPre E) :
    (rd E.s0.memory (E.tx + BitVec.ofNat 64 200)).toNat < 2 ^ 32 := by
  obtain ⟨o, ho, hb, ht, hw⟩ := txw_entry hP
  have hlen := hw.2.2.1
  have e25 : Hooks.txF E.s0.memory o 25 = rd E.s0.memory (E.tx + BitVec.ofNat 64 200) := by
    unfold Hooks.txF Obj.cell; rw [hb]
  unfold Hooks.TxLen at hlen
  rw [e25] at hlen
  exact hlen.2

theorem tx_n_bound {E : PtE σ} (hP : PtPre E) :
    (rd E.s0.memory (E.tx + BitVec.ofNat 64 200)).toNat < 2 ^ 63 := by
  obtain ⟨o, ho, hb, ht, hw⟩ := txw_entry hP
  have hlen := hw.2.2.1
  have e25 : Hooks.txF E.s0.memory o 25 = rd E.s0.memory (E.tx + BitVec.ofNat 64 200) := by
    unfold Hooks.txF Obj.cell; rw [hb]
  unfold Hooks.TxLen at hlen
  rw [e25] at hlen
  omega

theorem cond_eq_gen {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64} (ha : EvI s a (.val (.word x)))
    (hb : EvI s b (.val (.word y))) (h : CondTrue s (.cmp .equal a b)) : x = y := by
  obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp h
  obtain ⟨x', y', hx', hy', hf⟩ := Spec.cmp_true hw hw0
  have e1 := ha _ hx'
  have e2 := hb _ hy'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at e1 e2
  rw [e1, e2] at hf
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hf

theorem cond_eq_gen_false {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64} (ha : EvI s a (.val (.word x)))
    (hb : EvI s b (.val (.word y))) (h : ev s (.cmp .equal a b) = some (.val (.word 0))) : x ≠ y := by
  obtain ⟨x', y', hx', hy', hf⟩ := cmp_false h
  have e1 := ha _ hx'
  have e2 := hb _ hy'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at e1 e2
  rw [e1, e2] at hf
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hf

end InitECandidate.Solver.MemSafe.Ptx
