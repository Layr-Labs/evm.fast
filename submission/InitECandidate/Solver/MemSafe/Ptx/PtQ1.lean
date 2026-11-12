import InitECandidate.Solver.MemSafe.Ptx.PtP14
import InitECandidate.Solver.MemSafe.Ptx.PcmFun

/-!
# F3f: adopting the message `m` as a `tMSGh` object, and `FoPre` for `process_message_call`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem msgh_slot_other (k : Nat) (h1 : k ≠ 1) (h19 : k ≠ 19) (h20 : k ≠ 20) (h12 : k ≠ 12) :
    (Types.guestC.ty tMSGh).slot k = .scalar ∨ (Types.guestC.ty tMSGh).slot k = .prot := by
  by_cases hk : k < 22
  · have : ∀ k < 22, k ≠ 1 → k ≠ 19 → k ≠ 20 → k ≠ 12 →
        (Types.guestC.ty tMSGh).slot k = .scalar ∨ (Types.guestC.ty tMSGh).slot k = .prot := by
      intro k hk h1 h19 h20 h12
      interval_cases k <;> first | exact absurd rfl h1 | exact absurd rfl h19 | exact absurd rfl h20 | exact absurd rfl h12 | (left; decide) | (right; decide)
    exact this k hk h1 h19 h20 h12
  · right
    show msghTy.slot k = .prot
    unfold TyD.slot msghTy
    rw [List.getD_eq_getElem?_getD, List.getElem?_eq_none (by simp; omega)]
    rfl

theorem msgh_fits {Γ' : Gam} {mem : Mem} {x : Obj} (hx : x.ty = tMSGh)
    (h1 : ∃ o ∈ Γ', o.base = rd mem (x.cell 1) ∧ o.ty = tTE)
    (h19 : ∃ o ∈ Γ', o.base = rd mem (x.cell 19) ∧ o.ty = tHTh20)
    (h20 : ∃ o ∈ Γ', o.base = rd mem (x.cell 20) ∧ o.ty = tHTh52)
    (h12 : (rd mem (x.cell 12)).toNat < 2 ^ 32) :
    ∀ k, x.HasSlot k → Fits Γ' ((Types.guestC.ty x.ty).slot k) (rd mem (x.cell k)) := by
  intro k hk
  rw [hx]
  by_cases e1 : k = 1
  · subst e1
    show Fits Γ' ((Types.guestC.ty tMSGh).slot 1) _
    rw [show (Types.guestC.ty tMSGh).slot 1 = .ptr tTE by decide]
    exact h1
  by_cases e19 : k = 19
  · subst e19
    rw [show (Types.guestC.ty tMSGh).slot 19 = .ptr tHTh20 by decide]
    exact h19
  by_cases e20 : k = 20
  · subst e20
    rw [show (Types.guestC.ty tMSGh).slot 20 = .ptr tHTh52 by decide]
    exact h20
  by_cases e12 : k = 12
  · subst e12
    rw [show (Types.guestC.ty tMSGh).slot 12 = .bnd by decide]
    exact h12
  rcases msgh_slot_other k e1 e19 e20 e12 with h | h <;> rw [h] <;> trivial

/-- **`m` joins the typing as a `tMSGh` object.** -/
theorem g_adopt_m {Γ : Gam} {u : State σ} {p p0 : Ptrs} {wm : BitVec 64}
    (hG : G guestC (HR σ) Γ u) (hp : ptrsOf u = some p) (hord0 : p0.Ordered)
    (hfb : FreshBuf Γ p0 p wm 176) (hbl : BlkP wm 176) (hlive : wm.toNat + 176 ≤ p.hp)
    (h1 : ∃ o ∈ Γ, o.base = rd u.memory (wm + BitVec.ofNat 64 8) ∧ o.ty = tTE)
    (h19 : ∃ o ∈ Γ, o.base = rd u.memory (wm + BitVec.ofNat 64 152) ∧ o.ty = tHTh20)
    (h20 : ∃ o ∈ Γ, o.base = rd u.memory (wm + BitVec.ofNat 64 160) ∧ o.ty = tHTh52)
    (h12 : (rd u.memory (wm + BitVec.ofNat 64 96)).toNat < 2 ^ 32) :
    G guestC (HR σ) (Γ ++ [⟨wm, tMSGh, 176⟩]) u := by
  obtain ⟨hw8, hwb, hwe⟩ := hbl
  have hord := ordered_of_G hG hp
  have hLay : Layout guestC p Γ := by
    obtain ⟨q, hq, -, hL, -⟩ := id hG
    rwa [Option.some.inj (hq.symm.trans hp)] at hL
  have hbytes := fresh_bytes hLay hfb (by norm_num) hwb hwe hlive hord hord0
  let x : Obj := ⟨wm, tMSGh, 176⟩
  have hxlo : x.lo = wm.toNat := rfl
  have hxhi : x.hi = wm.toNat + 176 := rfl
  refine g_adopt_plain hG hp (x := x) plain_tMSGh (by show Types.guestC.tags.lookup tMSGh = none; decide) hw8
    (by show 176 % 8 = 0; norm_num) (by show (Types.guestC.ty tMSGh).minSz ≤ 176; decide) (by show 0 < 176; norm_num)
    (by show (Types.guestC.ty tMSGh).region.Live p wm.toNat 176
        rw [show (Types.guestC.ty tMSGh).region = .heap by decide]; exact ⟨hwb, hlive⟩)
    (fun a ha => by
      obtain ⟨h1', h2'⟩ := ha
      rw [hxlo] at h1'; rw [hxhi] at h2'
      exact (hbytes a.toNat h1' h2').2.2)
    (msgh_fits (x := x) rfl ?_ ?_ ?_ h12)
  · obtain ⟨o, ho, hb, ht⟩ := h1; exact ⟨o, List.mem_append_left _ ho, hb, ht⟩
  · obtain ⟨o, ho, hb, ht⟩ := h19; exact ⟨o, List.mem_append_left _ ho, hb, ht⟩
  · obtain ⟨o, ho, hb, ht⟩ := h20; exact ⟨o, List.mem_append_left _ ho, hb, ht⟩

end InitECandidate.Solver.MemSafe.Ptx

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The facts that survive adopting `m`: the safe ones and the new object. -/
def SAm (S : FS) (wm : BitVec 64) : FS := fun f => (S f ∧ SafeK f) ∨ f = Fct.obj wm tMSGh 176

theorem fopre_loc {M : Nat} {msg : BitVec 64} {Γ : Gam} {u : State σ} (l : Locs) (c : Nat)
    (h : Entry.FoPre M msg Γ u) : Entry.FoPre M msg Γ { u with locals := l, clock := c } := by
  obtain ⟨⟨hm, hb⟩, ⟨m', hv, hobj, hn⟩, ⟨e, he, hes⟩, ⟨c', hc', hcs⟩, hJ, hM⟩ := h
  refine ⟨⟨hm, fun p hp k hk => hb p ((ptrsOf_congr rfl).symm.trans hp) k hk⟩, ⟨m', hv, hobj, hn⟩,
    ⟨e, he, hes⟩, ⟨c', hc', hcs⟩, jrNZ_congr (s := u) rfl hJ, hM⟩

end InitECandidate.Solver.MemSafe.Ptx
