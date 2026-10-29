import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles805
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 805 InitECandidate.Proofs.WordStages.source805.2.1 InitECandidate.Proofs.WordStages.source805.2.2 InitECandidate.Proofs.SmallStages.Oracles805.oracle805
