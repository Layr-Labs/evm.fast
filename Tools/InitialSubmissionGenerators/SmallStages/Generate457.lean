import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles457
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 457 InitECandidate.Proofs.WordStages.source457.2.1 InitECandidate.Proofs.WordStages.source457.2.2 InitECandidate.Proofs.SmallStages.Oracles457.oracle457
