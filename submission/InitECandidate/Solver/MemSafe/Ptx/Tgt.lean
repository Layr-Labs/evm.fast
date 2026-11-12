import InitECandidate.Solver.MemSafe.Ptx.PmcD
import InitECandidate.Solver.MemSafe.Frames.FinHyps

/-!
# F3m: the create target (`TgtB`), in place of the `EV_MSG` link

`create_finish(msg, child)` needs `CfOK`: `msg` is a `Γ` message object and the 20 bytes at `msg[32]`
(`MSG_CURRENT_TARGET`) are `BufOK`. Package F3 obtained this from the child frame's `GP` through the
link `child[EV_MSG] = msg`, which main does not prove (`research/notes/pmlink-status.md`).

Instead: in `process_transaction`'s create branch `msg[32]` is the `alloc(24)` block `ct`, adopted as a
`tB24` object, and `msg` itself is a heap message `tMSGh` (`pa_adopt_m`). `TgtB Γ m msg` states both.
* `tgtB_kb`: `TgtB` is carried through any `KB` (heap objects survive by `KeepH`, the cell `msg + 32`
  by `BKeep`'s message part `MKeep`, package PmM);
* `cfOK_of_tgtB`: `TgtB` gives `CfOK` (the `tB24` object's cells are `scalar`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- **The create target**: `msg` is a heap message of `Γ` whose `MSG_CURRENT_TARGET` word (`+32`) is the
base of a `tB24` object of `Γ`. -/
def TgtB (Γ : Gam) (m : Mem) (msg : BitVec 64) : Prop :=
  (∃ M ∈ Γ, M.base = msg ∧ M.ty = tMSGh ∧ 176 ≤ M.size) ∧
    ∃ o ∈ Γ, o.base = fld m msg 32 ∧ o.ty = tB24 ∧ 24 ≤ o.size

theorem tB24_scalar (k : Nat) : (guestC.ty tB24).slot k = .scalar := by
  have : guestC.ty tB24 = b24Ty := rfl
  rw [this]; simp [TyD.slot, b24Ty]

/-- `TgtB` survives a `KB` (`KeepH` and `BKeep` from the state where it held). -/
theorem tgtB_kb {Γ0 Γ : Gam} {s0 u : State σ} {p : Ptrs} {msg : BitVec 64}
    (ht : TgtB Γ0 s0.memory msg) (hkb : KB Γ0 Γ s0 u) (hp : ptrsOf u = some p) : TgtB Γ u.memory msg := by
  obtain ⟨hk, hb, p0, hp0, hord0⟩ := hkb
  obtain ⟨-, hsurv, -⟩ := hk p0 p hp0 hp hord0
  obtain ⟨⟨M, hM, hMb, hMt, hMs⟩, ⟨o, ho, hob, hot, hos⟩⟩ := ht
  obtain ⟨M', hM', hMb', hMt', hMs'⟩ := hsurv M hM (by rw [hMt]; decide)
  obtain ⟨o', ho', hob', hot', hos'⟩ := hsurv o ho (by rw [hot]; decide)
  have h32 : fld u.memory msg 32 = fld s0.memory msg 32 := by
    have := hb.2 M hM hMt 4 (Or.inr rfl) (by unfold Obj.HasSlot; omega)
      (by rw [hMt]; exact (msg_addrProt (Or.inl rfl)).2)
    unfold fld; rw [← hMb]; exact this
  exact ⟨⟨M', hM', hMb'.trans hMb, hMt'.trans hMt, le_trans hMs hMs'⟩,
    ⟨o', ho', hob'.trans (hob.trans h32.symm), hot'.trans hot, le_trans hos hos'⟩⟩

/-- `TgtB` is a property of `Γ` and the memory only. -/
theorem tgtB_congr {Γ : Gam} {m m' : Mem} {msg : BitVec 64} (h : TgtB Γ m msg) (hm : m' = m) :
    TgtB Γ m' msg := by subst hm; exact h

theorem cell_of_range_t {q : Ptrs} {Γ' : Gam} (hord : q.Ordered) (hL : Layout guestC q Γ') {x : Obj}
    (hx : x ∈ Γ') {a : BitVec 64} (h1 : x.lo ≤ a.toNat) (h2 : a.toNat < x.hi) (h8 : a.toNat % 8 = 0) :
    ∃ k, x.HasSlot k ∧ a = x.cell k := by
  have hx8 := (hL.1 x hx).1
  have hs8 := (hL.1 x hx).2.1
  simp only [Obj.hi, Obj.lo] at h1 h2 hx8
  have hk : x.HasSlot ((a.toNat - x.base.toNat) / 8) := by
    unfold Obj.HasSlot; omega
  refine ⟨_, hk, ?_⟩
  apply BitVec.eq_of_toNat_eq
  rw [(cell_toNat hord hL hx hk).1]
  simp only [Obj.lo]
  omega

/-- **`create_finish`'s extra precondition from the create target.** -/
theorem cfOK_of_tgtB {Γ : Gam} {m : Mem} {p : Ptrs} {msg : BitVec 64} (hord : p.Ordered)
    (hL : Layout guestC p Γ) (ht : TgtB Γ m msg) : CfOK guestC Γ m p msg := by
  obtain ⟨⟨M, hM, hMb, hMt, hMs⟩, ⟨o, ho, hob, hot, hos⟩⟩ := ht
  refine ⟨⟨M, hM, hMb, by rw [hMt]; decide, by unfold Obj.HasSlot; omega,
    by rw [hMt]; exact (msg_addrProt (Or.inl rfl)).2⟩, ?_⟩
  intro a hov
  left
  obtain ⟨h8, h1, h2⟩ := hov
  have hx8 := (hL.1 o ho).1
  have hlo : o.lo = (fld m msg 32).toNat := by simp only [Obj.lo]; rw [hob]
  have hin1 : o.lo ≤ a.toNat := by rw [hlo] at hx8 ⊢; omega
  have hin2 : a.toNat < o.hi := by simp only [Obj.hi]; rw [hob]; omega
  obtain ⟨k, hk, hak⟩ := cell_of_range_t hord hL ho hin1 hin2 h8
  exact ⟨o, ho, k, hk, by rw [hot]; exact tB24_scalar k, hak⟩

/-! ## `MSG_TARGET` (`msg + 24`) for `process_message_call`'s create branch -/

/-- `msg[24]` (`MSG_TARGET`, slot 3, `prot`) is kept by a step that keeps the non-state `prot` cells. -/
theorem fld24_keep {Γ : Gam} {msg : BitVec 64} {s t : State σ} (hM : ∃ M, MsgObj Γ msg M)
    (hk : ProtKeep guestC (nst guestSt Γ) s t) : fld t.memory msg 24 = fld s.memory msg 24 := by
  obtain ⟨M0, hMΓ, hMb, hMt, hMs⟩ := hM
  have hmt : M0.ty ∈ msgTys := by rcases hMt with h' | h' <;> rw [h'] <;> decide
  have h3 : (guestC.ty M0.ty).slot 3 = .prot := by rcases hMt with h' | h' <;> rw [h'] <;> rfl
  have := msgKeep_of_protKeepS hk M0 hMΓ hmt 3 (by unfold Obj.HasSlot; omega) h3
  unfold fld; rw [← hMb]; exact this

/-- The create test `msg[24] == 0` of `process_message_call`, true. -/
theorem cond24 {u : State σ} {msg : BitVec 64} (hl : u.locals.lookup (nm "msg") = some (.val (.word msg)))
    (h : ∃ w, ev u (.cmp .equal (ldW (nm "msg") 24) (cw 0)) = some (.val (.word w)) ∧ w ≠ 0) :
    fld u.memory msg 24 = 0 := by
  obtain ⟨w, hw, hne⟩ := h
  obtain ⟨x, y, hx, hy, hv⟩ := ev_cmp_inv hw
  have hx' := ev_lLoad_eq (x := "msg") (k := 24) hl hx
  rw [ev_cw] at hy
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx' hy hv
  subst hx' hy
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hv
  by_cases hc : fld u.memory msg 24 = 0#64
  · exact hc
  · simp [hc] at hv
    exact absurd hv hne

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.fld24_keep
#print axioms InitECandidate.Solver.MemSafe.Ptx.cond24
#print axioms InitECandidate.Solver.MemSafe.Ptx.tgtB_kb
#print axioms InitECandidate.Solver.MemSafe.Ptx.cfOK_of_tgtB
