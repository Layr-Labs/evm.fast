import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles793
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 793 InitECandidate.Proofs.WordStages.source793.2.1 InitECandidate.Proofs.WordStages.source793.2.2 InitECandidate.Proofs.SmallStages.Oracles793.oracle793
