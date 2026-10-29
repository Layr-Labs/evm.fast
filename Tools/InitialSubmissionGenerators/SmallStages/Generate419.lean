import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles419
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 419 InitECandidate.Proofs.WordStages.source419.2.1 InitECandidate.Proofs.WordStages.source419.2.2 InitECandidate.Proofs.SmallStages.Oracles419.oracle419
