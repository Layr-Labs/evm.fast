import InitECandidate.Proofs.CompilerConfigLiteral
import InitECandidate.Proofs.CompilerOracles
import InitECandidate.Proofs.WordBackend.FunctionsFacts

namespace InitE
open InitECandidate.Proofs

/-- Baseline compilation uses the fixed, compiler-validated allocation tape. -/
def baselineCompilerConfig : Flapjack.Compiler.Backend.Backend.Config :=
  oracleCompilerConfig WordBackend.oracles

/-- The literal output metadata with the checked input allocation configuration. -/
def baselineConfigLiteralWithOracles : Flapjack.Compiler.Backend.Backend.Config :=
  { baselineConfigLiteral with wordToWordConf := baselineCompilerConfig.wordToWordConf }

end InitE
