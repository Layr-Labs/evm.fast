import InitECandidate.Solver.MemSafe.Ptx.PmcFin1

/-!
# F3: `process_message_call`, part O: `PmcFin` after the tail, and after the collision stores
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
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

section fin2
variable {Γ0 Γ : Gam} {s0 T u : State σ} {out child : BitVec 64} {W : Wmap}

theorem zeros_rd {m : Mem} (hZ : Zeros m out) {j : Nat} (hj8 : j % 8 = 0) (hj : j < 96) :
    rd m (out + BitVec.ofNat 64 j) = 0 := by
  have := hZ j hj8 hj
  unfold rd; rw [this]

theorem pmcFin_of_tail (hPC : PC' Γ0 s0 Γ out child T) (hT : TB Γ0 s0 Γ T out child W u)
    (hF : Ff T child W) : PmcFin Γ0 s0 out u := by
  obtain ⟨hTP, hZ, hMV, hev, hcc, ⟨rec, hGP⟩, hLog, hb128⟩ := hPC
  have hGT : G guestC (Hooks.guestHooksR (σ := σ)) Γ T := hTP.1.1
  have hT' := hT
  obtain ⟨hG, hKB, hO, hFr, hE, hgl, hdom, hag, hwr⟩ := hT
  obtain ⟨⟨⟨hd32, himp1, himp0, hx48⟩, h80⟩, h88⟩ := hF
  refine ⟨Γ, hG, hKB.1, hKB.2.1, hO, ?_, ?_, Or.inr ?_, ?_, hFr⟩
  · obtain ⟨e, he, he'⟩ := hev
    exact ⟨e, by rw [gword_congr hgl]; exact he, he'⟩
  · obtain ⟨c, hc, hc'⟩ := hcc
    exact ⟨c, by rw [gword_congr hgl]; exact hc, hc'⟩
  swap
  · rcases hx48 with h | h
    · rw [tb_unt hT' h (by decide) (by decide), zeros_rd hZ (by decide) (by decide)]
      simp
    · rw [hwr 48 _ h]; exact hb128
  have r32 := hwr 32 _ hd32
  refine ⟨?_, fun hne => ?_, fun h0 => ?_⟩
  · unfold MarkV at hMV
    rw [hwr 80 _ h80, hwr 88 _ h88]; exact hMV
  · rw [r32] at hne
    obtain ⟨a8, a16, a24⟩ := himp0 hne
    exact ⟨(tb_unt hT' a8 (by decide) (by decide)).trans (zeros_rd hZ (by decide) (by decide)),
      (tb_unt hT' a16 (by decide) (by decide)).trans (zeros_rd hZ (by decide) (by decide)),
      (tb_unt hT' a24 (by decide) (by decide)).trans (zeros_rd hZ (by decide) (by decide))⟩
  · rw [r32] at h0
    obtain ⟨b16, b24⟩ := himp1 h0
    have r16 := hwr 16 _ b16
    have r24 := hwr 24 _ b24
    obtain ⟨p, hp, -⟩ := id hGT
    obtain ⟨-, -, ⟨L, hL⟩, ⟨D, hD⟩, -⟩ := hGP p hp
    rw [r16, r24]
    refine ⟨⟨L, hL⟩, ⟨D, hD⟩, fun p' hp' => ?_⟩
    exact recsBelow_transfer hT' hGT hL (hLog p' ((ptrsOf_congr hgl).symm.trans hp'))

end fin2

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.pmcFin_of_tail
