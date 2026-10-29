import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles670
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 670 InitECandidate.Proofs.WordStages.source670.2.1 InitECandidate.Proofs.WordStages.source670.2.2 InitECandidate.Proofs.SmallStages.Oracles670.oracle670
