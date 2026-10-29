import InitECandidate.Proofs.BackendStages.Native
import InitECandidate.Bitmaps
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.Native
/-- Submitted bitmap words agree exactly with the certified native stages. -/
theorem bitmaps_eq : bitmaps = InitECandidate.bitmaps := by
  with_unfolding_all rfl
theorem native_submitted_bitmaps_eq :
    Flapjack.Compiler.Backend.WordToStack.Native.compileNative
      Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig false programs0 =
      (InitECandidate.bitmaps, wordConfig, 0 :: frames0, stack) := by
  rw [native_eq, bitmaps_eq]
#print axioms native_submitted_bitmaps_eq
#print axioms bitmaps_eq
end InitECandidate.Proofs.BackendStages.Native
