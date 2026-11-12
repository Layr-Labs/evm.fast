import InitECandidate.Solver.MemSafe.Ptx.PmcA
import InitECandidate.Solver.MemSafe.Ptx.Fresh

/-!
# F3: `process_message_call`, part B: adopting `out` as a `tMCO` object after `memzero`
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
open InitECandidate.Solver.MemSafe.Struct

variable {σ : Type}

/-- After adopting `out`: the typing holds the `tMCO` object, `FoPre` and the run from the entry. -/
def JD (M : Nat) (msg : BitVec 64) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (out : BitVec 64)
    (u : State σ) : Prop :=
  ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ u ∧ ptrsOf u = some p ∧ FoPre M msg Γ u ∧
    RunT guestC (Hooks.guestHooksR (σ := σ)) [] Γ0 s0 Γ u p0 p ∧
    (∃ o ∈ Γ, o.base = out ∧ o.ty = tMCO ∧ o.size = 96) ∧ Zeros u.memory out ∧
    u.locals.lookup (nm "msg") = some (.val (.word msg)) ∧
    u.locals.lookup (nm "out") = some (.val (.word out))

theorem jd_of_jc {M : Nat} {msg : BitVec 64} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {out : BitVec 64}
    {u : State σ} (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hfo0 : FoPre M msg Γ0 s0) (h : JC M msg Γ0 s0 p0 out u) : JD M msg Γ0 s0 p0 out u := by
  obtain ⟨⟨Γ, p, hG, hp, hfo, hrun, hfb, hlv, hpk, hl1, hl2⟩, hz⟩ := h
  have hord0 := ordered_of_G hG0 hp0
  have hordp := ordered_of_G hG hp
  obtain ⟨q, hq, -, hL, -⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  have hw : out.toNat + 96 < 2 ^ 64 := by
    have := hlv.2; have := hordp.2.1; unfold heapEnd at *; omega
  let x : Obj := ⟨out, tMCO, 96⟩
  have hdisj : ∀ a : BitVec 64, InO x a → ¬ InObj Γ a.toNat := fun a ha =>
    freshBuf_disj hL (by decide) hfb ha.1 ha.2 hw
  have hG1 : G guestC (Hooks.guestHooksR (σ := σ)) (Γ ++ [x]) u :=
    g_adopt_blk hG hp (x := x) (Or.inr (Or.inr rfl))
      (by simpa [Obj.lo, x] using hfb.1) (by show 96 % 8 = 0; decide)
      (by show (guestC.ty tMCO).minSz ≤ 96; decide) (by show 0 < 96; decide)
      (by show (guestC.ty tMCO).region.Live q out.toNat 96
          exact ⟨hlv.1, hlv.2⟩) hdisj
  have hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p0 q a := by
    intro a h1 h2
    have := fresh_byte (Γ := Γ) hord0 hordp (by show 96 % 8 = 0; decide) hfb (a := a.toNat) h1 h2 a.isLt
    simpa using this
  have hrun1 := runT_adopt hrun hG1 hfr
  have hfo1 := foPre_runT hG0 hfo0 (by simp) (by decide) hrun1 hpk
  have hp1 : ptrsOf u = some q := hp
  exact ⟨Γ ++ [x], q, hG1, hp1, hfo1, hrun1, ⟨x, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl, rfl⟩,
    hz, hl1, hl2⟩

end InitECandidate.Solver.MemSafe.Ptx
