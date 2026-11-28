import InitECandidate.Solver.Divm.RuleA
import InitECandidate.Solver.Divm.Chunks
import InitECandidate.Solver.Divm.ChunksA

/-! The cost of the installed `divmnu`: both digit loops bounded by the memory domain, the
rest priced by the accepted analyzer. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.Divm
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

abbrev c0Price : Nat := (max (0 + (((2 ^ 35 + 9) * (aPrice + 1)) + 0)) 0)

theorem chunk0_cost : Cost σ guestCtx dmc0 c0Price := by
  unfold dmc0
  exact cost_ite (cost_dec (cost_dec (cost_seq (MemSafe.Wg.cost_guest_costA (p := dma1) (B := 0) (by decide_cbv)) (cost_seq loopA_cost (MemSafe.Wg.cost_guest_costA (p := dma2) (B := 0) (by decide_cbv)))))) (MemSafe.Wg.cost_guest_costA (p := dma0) (B := 0) (by decide_cbv))

abbrev dmPrice : Nat := 4 * (2 ^ 35 + 9) * (dPrice + 1)

abbrev dmExact : Nat := (c0Price + (1 + 0 + (0 + (18446744073709551617 + (0 + (0 + (0 + (18446744073709551617 + (0 + (0 + (((2 ^ 35 + 9) * (dPrice + 1)) + 36893488147419103234)))))))))))

theorem dm_body_exact : Cost σ guestCtx dmBody dmExact := by
  unfold dmBody
  exact cost_dec (cost_dec (cost_seq chunk0_cost (cost_dec (cost_dec (cost_decCall (calleeCost_of_tbl (B := 0) (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)) (cost_seq (MemSafe.Wg.cost_guest_costA (p := dmc1) (B := 0) (by decide_cbv)) (cost_seq (MemSafe.Wg.cost_guest_costA (p := dmc2) (B := 18446744073709551617) (by decide_cbv)) (cost_seq (MemSafe.Wg.cost_guest_costA (p := dmc3) (B := 0) (by decide_cbv)) (cost_seq (MemSafe.Wg.cost_guest_costA (p := dmc4) (B := 0) (by decide_cbv)) (cost_seq (MemSafe.Wg.cost_guest_costA (p := dmc5) (B := 0) (by decide_cbv)) (cost_seq (MemSafe.Wg.cost_guest_costA (p := dmc6) (B := 18446744073709551617) (by decide_cbv)) (cost_seq (MemSafe.Wg.cost_guest_costA (p := dmc7) (B := 0) (by decide_cbv)) (cost_dec (cost_dec (cost_seq (MemSafe.Wg.cost_guest_costA (p := dmc8) (B := 0) (by decide_cbv)) (cost_seq loopD_cost (MemSafe.Wg.cost_guest_costA (p := dmc9) (B := 36893488147419103234) (by decide_cbv))))))))))))))))))

theorem dm_body_cost : Cost σ guestCtx dmBody dmPrice := dm_body_exact.mono (by decide)

theorem dm_cost : CalleeCost σ guestCtx (nm "divmnu") dmPrice := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := InitECandidate.Solver.SourceCost.lookupCode_some lookup
  rw [guestCtx_code, code_dm] at hc
  have body : actual = dmBody := (congrArg (fun entry => entry.2.1) (Option.some.inj hc)).symm
  rw [body]
  exact dm_body_cost

#print axioms dm_cost

end InitECandidate.Solver.Divm
