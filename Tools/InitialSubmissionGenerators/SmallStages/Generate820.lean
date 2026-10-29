import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles820
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 820 InitECandidate.Proofs.WordStages.source820.2.1 InitECandidate.Proofs.WordStages.source820.2.2 InitECandidate.Proofs.SmallStages.Oracles820.oracle820
