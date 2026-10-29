import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles618
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 618 InitECandidate.Proofs.WordStages.source618.2.1 InitECandidate.Proofs.WordStages.source618.2.2 InitECandidate.Proofs.SmallStages.Oracles618.oracle618
