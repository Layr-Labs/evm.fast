import InitECandidate.Solver.MemSafe.Eb.Adopt
import InitECandidate.Solver.MemSafe.Eb.TabCall
import InitECandidate.Solver.MemSafe.D0.BlockSt
import InitECandidate.Solver.MemSafe.Frames.MzVal
import InitECandidate.Solver.MemSafe.Helpers.Mem

/-!
# `execute_block`: memory changes inside block objects keep `G`; `memzero` on an adopted block object

* `G_mem_blk`: a memory change confined to a set `R` of block cells (`BCell`) keeps `G`.
* `memzero_blk`: `memzero(D, N)` with `[D, D + N)` inside block cells: globals / domain / byte order kept, the memory changes
  only on the overlapped cells, and every aligned cell of the buffer is `0`.
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
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Struct

variable {σ : Type}

theorem G_mem_blk {Γ : Gam} {s t : State σ} (hG : G guestC (HR σ) Γ s) {R : BitVec 64 → Prop}
    (hR : ∀ b, R b → BCell guestC Γ b) (hm : ModifiesOnly R s.memory t.memory) (hg : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) : G guestC (HR σ) Γ t := by
  obtain ⟨p, hps, hord, hL, -⟩ := id hG
  refine G_frame_prot Hooks.guestHooksR_lawful hG (Frames.ptrsOf_congr hg) (fun g _ _ => ?_)
    (fun g _ => by rw [hg]) hd hbe (R := R) hm (fun b hb => bCell_prot (hR b hb)) ?_ ?_
  · unfold gword; rw [hg]
  · intro o ho htg hob
    obtain ⟨M, hM, hMt, k, hk, hp, hbc⟩ := hR _ hob
    obtain ⟨-, h1, h2⟩ := HtabEntries.cell_lay hord hL hM hk
    have hpos := (hL.1 o ho).2.2.1
    have hlo : o.base.toNat = (M.cell k).toNat := by rw [hbc]
    have := gam_eq (gamOK_of_layout hL) hM ho h1 h2 (by unfold Obj.lo; omega)
      (by unfold Obj.hi; omega)
    subst this
    rw [D0.block_untagged hMt] at htg
    simp at htg
  · rintro o ho ⟨b, hb, hf⟩
    obtain ⟨M, hM, hMt, k, hk, hp, rfl⟩ := hR b hb
    exact (D0.fp_block_free hord hL hM hMt hk hf).elim

/-- What a returning `memzero(D, N)` does, for an aligned buffer. -/
def MzBlkR (vs : List (ValueHOL 64)) (s : State σ) (t : State σ) : Prop :=
  ∀ D N : BitVec 64, vs = [.val (.word D), .val (.word N)] → D.toNat % 8 = 0 → N.toNat % 8 = 0 →
    (N.toNat = 0 ∨ D.toNat + N.toNat ≤ scratchEnd) →
    t.globals = s.globals ∧ t.memaddrs = s.memaddrs ∧ t.be = s.be ∧
      ModifiesOnly (Overlap D.toNat N.toNat) s.memory t.memory ∧
      ∀ j, j % 8 = 0 → j < N.toNat → t.memory (D + BitVec.ofNat 64 j) = .word 0

theorem funSpec_memzero_blk : FunSpec σ guestCtx (nm "memzero") (fun vs s r t => ∀ v, r = .returned v → MzBlkR vs s t) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have h1 := Helpers.foot_memzero (σ := σ) (X := guestCtx) guestCtx_code hF.hal
  have h2 := Helpers.funSpec_dom (σ := σ) (X := guestCtx) (nm "memzero")
  have h3 := Frames.funSpec_memzeroZ (σ := σ) (X := guestCtx) guestCtx_code
  intro vs body callee rs hl s hs hloc r hr v hv D N hvs hD hN hb
  have a1 := h1 vs body callee rs hl s hs hloc r hr (by rw [hv]; simp [Good])
    ⟨D, N, by rw [hvs]; rfl, by rw [hvs]; rfl, hb⟩
  have a2 := h2 vs body callee rs hl s hs hloc r hr
  have a3 := h3 vs body callee rs hl s hs hloc r hr v hv D N hvs hD hN (by
    rcases hb with h | h
    · omega
    · have : scratchEnd < 2 ^ 63 := by decide
      omega)
  refine ⟨a1.1, a2.1, a2.2, a1.2.mono ?_, a3⟩
  intro a ha
  obtain ⟨D', N', hD', hN', hov⟩ := ha
  rw [hvs] at hD' hN'
  simp [argW, wordOf] at hD' hN'
  subst hD' hN'
  exact hov

end InitECandidate.Solver.MemSafe.Eb

#print axioms InitECandidate.Solver.MemSafe.Eb.G_mem_blk
#print axioms InitECandidate.Solver.MemSafe.Eb.funSpec_memzero_blk
