import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles819
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 819 InitECandidate.Proofs.WordStages.source819.2.1 InitECandidate.Proofs.WordStages.source819.2.2 InitECandidate.Proofs.SmallStages.Oracles819.oracle819
