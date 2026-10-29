import InitE
import InitE.SourceFacts
import Lean.Util.CollectAxioms
import Lean.Elab.Command

/- Audit the fixed challenge before compiling any candidate. No submitted image,
compiler-stage certificate, or initial-submission proof is a trusted dependency. -/
run_cmd do
  let roots := #[`InitE.certificate_of_exact_behaviour,
                 `InitE.challengeMachineConfig_ffiOk_checked,
                 `InitE.sourceGoodCode, `InitE.sourceGlobalsSize]
  let mut names : Array Lean.Name := #[]
  for root in roots do
    for name in (← Lean.collectAxioms root) do
      if name.toString.toName != name then
        throwError "axiom name cannot round-trip through comparator configuration: {name}"
      if !names.contains name then names := names.push name
  let nameStrings := names.map Lean.Name.toString
  let json := Lean.Json.arr (nameStrings.map Lean.Json.str)
  Lean.logInfo m!"INIT_E_TRUSTED_AXIOMS {json.compress}"
