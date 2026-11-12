import InitECandidate.Solver.MemSafe.Ra.AttPart1b
import InitECandidate.Solver.Wit.SiArr

/-!
# `run_attempt`: facts about the stateless-input record (`tSI`) from `G`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- A slice array of a hook has fewer than `2^24` entries. -/
theorem subArr_lt {Γ : Gam} {p : Ptrs} (hL : Layout guestC p Γ) {A : BitVec 64} {n : Nat}
    (h : Hooks.SubArr Γ A n tSLA 16) : n < 2 ^ 24 := by
  rcases h with h0 | ⟨x, hx, hxb, hxt, hxs, hxe⟩
  · omega
  · have hreg : (guestC.ty x.ty).region = .heap := by rw [hxt]; decide
    have hlive := (live_of hL hx).1 hreg
    have hlo : x.lo = A.toNat := by unfold Obj.lo; rw [hxb]
    have h1 : heapBase ≤ A.toNat := by omega
    have h2 : A.toNat + 16 * n ≤ heapEnd := hxe
    have h3 : heapEnd - heapBase = 251658240 := by decide
    have h4 : heapBase ≤ heapEnd := by decide
    omega

theorem si_n_lt {Γ : Gam} {s : State σ} {o : Obj} (hG : G guestC (HR σ) Γ s) (ho : o ∈ Γ) (ht : o.ty = tSI) :
    (Hooks.txF s.memory o 6).toNat < 2 ^ 24 ∧ (Hooks.txF s.memory o 8).toNat < 2 ^ 24 := by
  obtain ⟨p, -, hord, hL, -, -, -, hW⟩ := id hG
  obtain ⟨-, -, -, -, -, h5, h7⟩ := Hooks.siW_of_wf ht (hW o ho)
  exact ⟨subArr_lt hL h5.1, subArr_lt hL h7.1⟩

theorem ndbPre_state {Γ : Gam} {s : State σ} {si0 : BitVec 64} {o : Obj} (hG : G guestC (HR σ) Γ s) (ho : o ∈ Γ)
    (hb : o.base = si0) (ht : o.ty = tSI) :
    Ini.NdbPre [Exb.Wv (rd s.memory (si0 + BitVec.ofNat 64 40)), Exb.Wv (rd s.memory (si0 + BitVec.ofNat 64 48))] s Γ := by
  refine ⟨_, _, rfl, ?_, ?_⟩
  · have := Wit.slArr_si_state hG ho ht
    rw [Exb.txF_eq hb 5, Exb.txF_eq hb 6] at this
    exact this
  · have := (si_n_lt hG ho ht).1
    rw [Exb.txF_eq hb 6] at this
    exact this

theorem ndbPre_codes {Γ : Gam} {s : State σ} {si0 : BitVec 64} {o : Obj} (hG : G guestC (HR σ) Γ s) (ho : o ∈ Γ)
    (hb : o.base = si0) (ht : o.ty = tSI) :
    Ini.NdbPre [Exb.Wv (rd s.memory (si0 + BitVec.ofNat 64 56)), Exb.Wv (rd s.memory (si0 + BitVec.ofNat 64 64))] s Γ := by
  refine ⟨_, _, rfl, ?_, ?_⟩
  · have := Wit.slArr_si_codes hG ho ht
    rw [Exb.txF_eq hb 7, Exb.txF_eq hb 8] at this
    exact this
  · have := (si_n_lt hG ho ht).2
    rw [Exb.txF_eq hb 8] at this
    exact this

end InitECandidate.Solver.MemSafe.Att
