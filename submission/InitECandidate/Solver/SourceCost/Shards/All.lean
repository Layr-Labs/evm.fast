import InitECandidate.Solver.SourceCost.Shards.States
import InitECandidate.Solver.SourceCost.ManualSound
import InitECandidate.Solver.SourceCost.Shards.Chunk00
import InitECandidate.Solver.SourceCost.Shards.Chunk01
import InitECandidate.Solver.SourceCost.Shards.Chunk02
import InitECandidate.Solver.SourceCost.Shards.Chunk03
import InitECandidate.Solver.SourceCost.Shards.Chunk04
import InitECandidate.Solver.SourceCost.Shards.Chunk05
import InitECandidate.Solver.SourceCost.Shards.Chunk06
import InitECandidate.Solver.SourceCost.Shards.Chunk07
import InitECandidate.Solver.SourceCost.Shards.Chunk08
import InitECandidate.Solver.SourceCost.Shards.Chunk09
import InitECandidate.Solver.SourceCost.Shards.Chunk10
import InitECandidate.Solver.SourceCost.Shards.Chunk11
import InitECandidate.Solver.SourceCost.Shards.Chunk12
import InitECandidate.Solver.SourceCost.Shards.Chunk13
import InitECandidate.Solver.SourceCost.Shards.Chunk14
import InitECandidate.Solver.SourceCost.Shards.Chunk15
import InitECandidate.Solver.SourceCost.Shards.Chunk16
import InitECandidate.Solver.SourceCost.Shards.Chunk17
import InitECandidate.Solver.SourceCost.Shards.Chunk18
import InitECandidate.Solver.SourceCost.Shards.Chunk19
import InitECandidate.Solver.SourceCost.Shards.Chunk20
import InitECandidate.Solver.SourceCost.Shards.Chunk21
import InitECandidate.Solver.SourceCost.Shards.Chunk22
import InitECandidate.Solver.SourceCost.Shards.Chunk23
import InitECandidate.Solver.SourceCost.Shards.Chunk24
import InitECandidate.Solver.SourceCost.Shards.Chunk25
import InitECandidate.Solver.SourceCost.Shards.Chunk26
import InitECandidate.Solver.SourceCost.Shards.Chunk27
import InitECandidate.Solver.SourceCost.Shards.Chunk28
import InitECandidate.Solver.SourceCost.Shards.Chunk29
import InitECandidate.Solver.SourceCost.Shards.Chunk30
import InitECandidate.Solver.SourceCost.Shards.Chunk31
import InitECandidate.Solver.SourceCost.Shards.Chunk32

/-! The checked cost table: every recorded bound, escape-free mark and zero-argument mark is sound
(the manual entries by `manualEntries_sound`). -/

namespace InitECandidate.Solver.SourceCost.Shards
open InitECandidate.Solver.SourceCost Flapjack.Basis.Pure.MlString
open Flapjack.Pancake.PanLang (MlS ProgHOL)

variable {σ : Type}

theorem finalState_sound {X : InitECandidate.Solver.SourceCost.Ctx 64}
    (hC : X.code.lookup = guestCode) (hX : DomBounded X) : StateSound σ X finalState := by
  have h0 : StateSound σ X state0 := stateSound_empty
  have h1 : StateSound σ X state1 := by
    rw [← chunk0_step]
    exact fold2_sound manualEntries_sound hC hX chunk0 chunk0_valid state0 h0
  have h2 : StateSound σ X state2 := by
    rw [← chunk1_step]
    exact fold2_sound manualEntries_sound hC hX chunk1 chunk1_valid state1 h1
  have h3 : StateSound σ X state3 := by
    rw [← chunk2_step]
    exact fold2_sound manualEntries_sound hC hX chunk2 chunk2_valid state2 h2
  have h4 : StateSound σ X state4 := by
    rw [← chunk3_step]
    exact fold2_sound manualEntries_sound hC hX chunk3 chunk3_valid state3 h3
  have h5 : StateSound σ X state5 := by
    rw [← chunk4_step]
    exact fold2_sound manualEntries_sound hC hX chunk4 chunk4_valid state4 h4
  have h6 : StateSound σ X state6 := by
    rw [← chunk5_step]
    exact fold2_sound manualEntries_sound hC hX chunk5 chunk5_valid state5 h5
  have h7 : StateSound σ X state7 := by
    rw [← chunk6_step]
    exact fold2_sound manualEntries_sound hC hX chunk6 chunk6_valid state6 h6
  have h8 : StateSound σ X state8 := by
    rw [← chunk7_step]
    exact fold2_sound manualEntries_sound hC hX chunk7 chunk7_valid state7 h7
  have h9 : StateSound σ X state9 := by
    rw [← chunk8_step]
    exact fold2_sound manualEntries_sound hC hX chunk8 chunk8_valid state8 h8
  have h10 : StateSound σ X state10 := by
    rw [← chunk9_step]
    exact fold2_sound manualEntries_sound hC hX chunk9 chunk9_valid state9 h9
  have h11 : StateSound σ X state11 := by
    rw [← chunk10_step]
    exact fold2_sound manualEntries_sound hC hX chunk10 chunk10_valid state10 h10
  have h12 : StateSound σ X state12 := by
    rw [← chunk11_step]
    exact fold2_sound manualEntries_sound hC hX chunk11 chunk11_valid state11 h11
  have h13 : StateSound σ X state13 := by
    rw [← chunk12_step]
    exact fold2_sound manualEntries_sound hC hX chunk12 chunk12_valid state12 h12
  have h14 : StateSound σ X state14 := by
    rw [← chunk13_step]
    exact fold2_sound manualEntries_sound hC hX chunk13 chunk13_valid state13 h13
  have h15 : StateSound σ X state15 := by
    rw [← chunk14_step]
    exact fold2_sound manualEntries_sound hC hX chunk14 chunk14_valid state14 h14
  have h16 : StateSound σ X state16 := by
    rw [← chunk15_step]
    exact fold2_sound manualEntries_sound hC hX chunk15 chunk15_valid state15 h15
  have h17 : StateSound σ X state17 := by
    rw [← chunk16_step]
    exact fold2_sound manualEntries_sound hC hX chunk16 chunk16_valid state16 h16
  have h18 : StateSound σ X state18 := by
    rw [← chunk17_step]
    exact fold2_sound manualEntries_sound hC hX chunk17 chunk17_valid state17 h17
  have h19 : StateSound σ X state19 := by
    rw [← chunk18_step]
    exact fold2_sound manualEntries_sound hC hX chunk18 chunk18_valid state18 h18
  have h20 : StateSound σ X state20 := by
    rw [← chunk19_step]
    exact fold2_sound manualEntries_sound hC hX chunk19 chunk19_valid state19 h19
  have h21 : StateSound σ X state21 := by
    rw [← chunk20_step]
    exact fold2_sound manualEntries_sound hC hX chunk20 chunk20_valid state20 h20
  have h22 : StateSound σ X state22 := by
    rw [← chunk21_step]
    exact fold2_sound manualEntries_sound hC hX chunk21 chunk21_valid state21 h21
  have h23 : StateSound σ X state23 := by
    rw [← chunk22_step]
    exact fold2_sound manualEntries_sound hC hX chunk22 chunk22_valid state22 h22
  have h24 : StateSound σ X state24 := by
    rw [← chunk23_step]
    exact fold2_sound manualEntries_sound hC hX chunk23 chunk23_valid state23 h23
  have h25 : StateSound σ X state25 := by
    rw [← chunk24_step]
    exact fold2_sound manualEntries_sound hC hX chunk24 chunk24_valid state24 h24
  have h26 : StateSound σ X state26 := by
    rw [← chunk25_step]
    exact fold2_sound manualEntries_sound hC hX chunk25 chunk25_valid state25 h25
  have h27 : StateSound σ X state27 := by
    rw [← chunk26_step]
    exact fold2_sound manualEntries_sound hC hX chunk26 chunk26_valid state26 h26
  have h28 : StateSound σ X state28 := by
    rw [← chunk27_step]
    exact fold2_sound manualEntries_sound hC hX chunk27 chunk27_valid state27 h27
  have h29 : StateSound σ X state29 := by
    rw [← chunk28_step]
    exact fold2_sound manualEntries_sound hC hX chunk28 chunk28_valid state28 h28
  have h30 : StateSound σ X state30 := by
    rw [← chunk29_step]
    exact fold2_sound manualEntries_sound hC hX chunk29 chunk29_valid state29 h29
  have h31 : StateSound σ X state31 := by
    rw [← chunk30_step]
    exact fold2_sound manualEntries_sound hC hX chunk30 chunk30_valid state30 h30
  have h32 : StateSound σ X state32 := by
    rw [← chunk31_step]
    exact fold2_sound manualEntries_sound hC hX chunk31 chunk31_valid state31 h31
  have h33 : StateSound σ X state33 := by
    rw [← chunk32_step]
    exact fold2_sound manualEntries_sound hC hX chunk32 chunk32_valid state32 h32
  exact h33

/-- The checked table is sound for the challenge run's context. -/
theorem finalState_sound_guest : StateSound σ guestCtx finalState :=
  finalState_sound guestCtx_code guestCtx_bounded

end InitECandidate.Solver.SourceCost.Shards
