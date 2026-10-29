import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles871
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 871 InitECandidate.Proofs.WordStages.source871.2.1 InitECandidate.Proofs.WordStages.source871.2.2 InitECandidate.Proofs.SmallStages.Oracles871.oracle871
