import InitECandidate.Solver.MemSafe.Ptx.PtB0

/-!
# F3d: argument buffers of table calls (`memok_of_bufs`) and argument lists
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

theorem bufOK_le' {Γ : Gam} {p : Ptrs} {b n m : Nat} (h : BufOK guestC Γ p b n) (hm : m ≤ n) :
    BufOK guestC Γ p b m := fun x hx => h x ⟨hx.1, hx.2.1, by have := hx.2.2; omega⟩

theorem evs2 {s : State σ} {a b : ExpHOL 64} {vs : List (ValueHOL 64)} (h : evs s [a, b] = some vs) :
    ∃ x y, vs = [x, y] ∧ ev s a = some x ∧ ev s b = some y := by
  obtain ⟨x, vs', rfl, hx, h'⟩ := Spec.evs_cons_inv h
  obtain ⟨y, rfl, hy⟩ := evs_single h'
  exact ⟨x, y, rfl, hx, hy⟩

theorem evs3 {s : State σ} {a b c : ExpHOL 64} {vs : List (ValueHOL 64)} (h : evs s [a, b, c] = some vs) :
    ∃ x y z, vs = [x, y, z] ∧ ev s a = some x ∧ ev s b = some y ∧ ev s c = some z := by
  obtain ⟨x, vs', rfl, hx, h'⟩ := Spec.evs_cons_inv h
  obtain ⟨y, z, rfl, hy, hz⟩ := evs2 h'
  exact ⟨x, y, z, rfl, hx, hy, hz⟩

theorem reads_fresh {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {f : Fct} (h : f.holds p0 Γ p u)
    (hnc : ∀ a v, f ≠ Fct.cellv a v) {a : BitVec 64} (ha : f.reads a) : Fresh p0 p a := by
  cases f with
  | memw a' v => obtain rfl : a = a' := ha; exact h.2.2
  | arrbuf blk nblk cnt n =>
    obtain ⟨j, hj, rfl⟩ := ha
    exact (h.2.2.2.2 j hj).2
  | cellv a' v' => exact absurd rfl (hnc a' v')
  | _ => exact absurd ha (by simp [Fct.reads])

/-- A cell of a safe buffer (`bufok0`) is read by no fact. -/
theorem argbuf_disj {E : PtE σ} {S : FS} {D Γ u p} (hr : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    (hL : HoldsAll E.p0 Γ p u S) {w : BitVec 64} {n m : Nat} (hb : S (Fct.bufok0 w n)) (hm : m ≤ n)
    {a : BitVec 64} (hov : Overlap w.toNat m a) : ∀ f, S f → ¬ f.reads a := by
  intro f hf hrd
  obtain ⟨hbo, hsafe⟩ := hL _ hb
  have ha' : Overlap w.toNat n a := ⟨hov.1, hov.2.1, by have := hov.2.2; omega⟩
  obtain ⟨q, hq, hord, hLay, -⟩ := ptRun_G hr
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs hr))
  by_cases hcv : ∃ a' v', f = Fct.cellv a' v'
  · obtain ⟨a', v', rfl⟩ := hcv
    have e : a = a' := hrd
    rw [e] at ha'
    obtain ⟨-, o, ho, -, k, hk, hp, rfl⟩ := hL _ hf
    rcases hbo _ ha' with ⟨o', ho', k', hk', hs, he⟩ | ⟨hn, -⟩
    · obtain ⟨rfl, rfl⟩ := cell_inj hord hLay ho ho' hk hk' he
      rw [hp] at hs; cases hs
    · exact hn (cell_in hord hLay ho hk)
  · have hhf := hL f hf
    obtain ⟨hn, hal⟩ := Fct.reads_alloc hhf (ptRun_ord0 hr) (ptRun_ord hr)
      (fun a v e => hcv ⟨a, v, e⟩) hrd
    rcases hsafe a ha' with hin | hal0
    · exact hn hin
    · exact fresh_not_alloc (ptRun_ord0 hr) (ptRun_ord hr) (ptRun_mono hr)
        (reads_fresh hhf (fun a v e => hcv ⟨a, v, e⟩) hrd) hal0

end InitECandidate.Solver.MemSafe.Ptx
