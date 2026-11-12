import InitECandidate.Solver.MemSafe.Eb.Tail22
import InitECandidate.Solver.MemSafe.Eb.Loop14
import InitECandidate.Solver.MemSafe.Eb.Mid
import InitECandidate.Solver.MemSafe.Eb.PartK

/-!
# `execute_block`: gluing head, `bal_init`, mid, loop and tail
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The globals named by the facts must avoid every write set the walk meets. -/
def ZOK (Z : List MlS) : Prop :=
  ∀ g ∈ Z, ¬ (tabW.contains g = true) ∧ ¬ (pucW.contains g = true) ∧ ¬ (sftW.contains g = true) ∧
    ¬ (ptW.contains g = true) ∧ g ≠ nm "bal_index" ∧ g ≠ gHeap

theorem zok_bal : ZOK [nmBA, nmBIA, nmBIS, nmBK] := by
  intro g hg
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl | rfl <;> decide

theorem tidy_balNF {Z : List MlS} {S : FS} (h : Tidy Z S) (w1 w2 w3 w4 : BitVec 64) :
    Tidy (nmBA :: nmBIA :: nmBIS :: nmBK :: Z) (fun f => S f ∨ BalNF w1 w2 w3 w4 f) := by
  refine ⟨fun g w t hf => ?_, fun g w hf => ?_⟩
  · rcases hf with hf | hf
    · exact List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (h.1 g w t hf))))
    · rcases hf with h1 | h1 | h1 | h1 <;> (cases h1; simp)
  · rcases hf with hf | hf
    · exact List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (h.2 g w hf))))
    · rcases hf with h1 | h1 | h1 | h1 <;> cases h1

theorem kt_bal : KeepTy tHTd20 ∧ KeepTy tHTh28 ∧ KeepTy tHTh60 ∧ KeepTy tB64 := by
  unfold KeepTy ScratchOwn; decide

theorem safeS_balNF {S : FS} (h : SafeS S) (w1 w2 w3 w4 : BitVec 64) :
    SafeS (fun f => S f ∨ BalNF w1 w2 w3 w4 f) := by
  intro f hf
  rcases hf with hf | hf
  · exact h f hf
  · rcases hf with rfl | rfl | rfl | rfl
    · exact kt_bal.1
    · exact kt_bal.2.1
    · exact kt_bal.2.2.1
    · exact kt_bal.2.2.2

/-- Distinctness facts derived from `HeadOut` (the symmetric forms the ledger wants). -/
def PropsX (w t r be0 wd0 : BitVec 64) : FS := fun f =>
  f = Fct.prop (w ≠ be0) ∨ f = Fct.prop (w ≠ wd0) ∨ f = Fct.prop (t ≠ be0) ∨ f = Fct.prop (r ≠ be0) ∨
  f = Fct.prop (t ≠ wd0) ∨ f = Fct.prop (r ≠ wd0)

/-- The walk set after the head and `bal_init`. -/
def SPlus (S' : FS) (w1 w2 w3 w4 w t r be0 wd0 : BitVec 64) : FS :=
  fun f => (S' f ∨ BalNF w1 w2 w3 w4 f) ∨ PropsX w t r be0 wd0 f

theorem propsX_holds {S0 S' : FS} {Z : List MlS} {w t r lg rq rl ntx0 be0 wd0 : BitVec 64} {w1 w2 w3 w4 : BitVec 64}
    {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {n0 n1 : Nat}
    (hout : HeadOut S0 S' Z w t r lg rq rl ntx0)
    (hobe : S0 (Fct.obj be0 tBOS n0)) (howd : S0 (Fct.obj wd0 tBOS n1))
    (hL : HoldsAll p0 Γ p u (fun f => S' f ∨ BalNF w1 w2 w3 w4 f)) :
    HoldsAll p0 Γ p u (SPlus S' w1 w2 w3 w4 w t r be0 wd0) := by
  intro f hf
  rcases hf with hf | hf
  · exact hL f hf
  · have a1 : S' (Fct.prop (be0 ≠ w)) := hout.dw _ _ _ hobe
    have a2 : S' (Fct.prop (wd0 ≠ w)) := hout.dw _ _ _ howd
    have a3 : S' (Fct.prop (be0 ≠ t)) := (hout.dnew _ _ _ hobe).1
    have a4 : S' (Fct.prop (be0 ≠ r)) := (hout.dnew _ _ _ hobe).2.1
    have a5 : S' (Fct.prop (wd0 ≠ t)) := (hout.dnew _ _ _ howd).1
    have a6 : S' (Fct.prop (wd0 ≠ r)) := (hout.dnew _ _ _ howd).2.1
    rcases hf with rfl | rfl | rfl | rfl | rfl | rfl
    · exact (hL _ (Or.inl a1)).symm
    · exact (hL _ (Or.inl a2)).symm
    · exact (hL _ (Or.inl a3)).symm
    · exact (hL _ (Or.inl a4)).symm
    · exact (hL _ (Or.inl a5)).symm
    · exact (hL _ (Or.inl a6)).symm

end InitECandidate.Solver.MemSafe.Eb
