import InitECandidate.Solver.Improvements.ThirdCombinedSmallCryptoTable

/-! Replay the opcode pricing table in small Lean-checked batches. Each
snapshot contains only the entries prepended by its batch. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.Band.DispPrices

open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

private def prepend (s : TblState) (costs : List (MlS × Nat))
    (esc zero : List MlS) : TblState :=
  (costs ++ s.1, esc ++ s.2.1, zero ++ s.2.2)

private theorem preMarks :
    ThirdCombinedSmallCryptoTable.preState.2 =
      ([nm "fq12_frob", nm "fe_mul_small"] ++ ThirdCombinedSmallCryptoTable.fieldSeed.2.1,
       [] ++ ThirdCombinedSmallCryptoTable.fieldSeed.2.2) := by
  decide_cbv

private def seed : TblState :=
  prepend
    (prepend ThirdCombinedSmallCryptoTable.fieldSeed ThirdCombinedSmallCryptoTable.prePricePrefix
      [nm "fq12_frob", nm "fe_mul_small"] [])
    [(nm "bn254_miller_raw", 47465206495597605116636846),
     (nm "ecp_mul", 76979664972139560975855402)] [] []

private theorem seed_eq : ThirdCombinedSmallCryptoTable.countSeed = seed := by
  simp only [seed, prepend, ThirdCombinedSmallCryptoTable.countSeed,
    AcceptedCostOverrideRules.overrideCost, ThirdCombinedSmallCryptoTable.ecpCost_eq,
    ThirdCombinedSmallCryptoTable.millerCost_eq, ThirdCombinedSmallCryptoTable.preState_prices,
    preMarks, List.cons_append, List.nil_append]

private theorem replay_append (first second : List String) (s : TblState) :
    ThirdNamedCostReplay.replayNamed (first ++ second) s =
      ThirdNamedCostReplay.replayNamed second (ThirdNamedCostReplay.replayNamed first s) := by
  simp only [ThirdNamedCostReplay.replayNamed, ThirdNamedCostReplay.entries,
    ThirdReplayNamesCore.declarations, List.flatMap_append, List.map_append, List.foldl_append]

private def pairingPrimitivesNames : List String :=
  ["bn254_g1_add", "bn254_g1_mul", "fq12_pow_words", "fq12_twist"]

private def pairingPrimitives : TblState :=
  prepend seed
    [(nm "fq12_twist", 10828238771267506799180),
    (nm "fq12_pow_words", 127946169962272862754793812650537294784216),
    (nm "bn254_g1_mul", 76980015460276961458925520),
    (nm "bn254_g1_add", 184688801665980032779319)]
    [nm "fq12_twist"] []

private theorem pairingPrimitives_eq :
    ThirdNamedCostReplay.replayNamed pairingPrimitivesNames seed = pairingPrimitives := by
  decide_cbv

private def precompileCallsNames : List String :=
  ["bn254_pairing_check", "pre_alt_bn128_add", "pre_alt_bn128_mul", "pre_alt_bn128_pairing_check"]

private def precompileCalls : TblState :=
  prepend pairingPrimitives
    [(nm "pre_alt_bn128_pairing_check", 3716175409047466194237261840600056626244462776),
    (nm "pre_alt_bn128_mul", 76980163034229551135338469),
    (nm "pre_alt_bn128_add", 184836375618569709192268),
    (nm "bn254_pairing_check", 3716175409047466194237261748366336257696704683)]
    [] []

private theorem precompileCalls_eq :
    ThirdNamedCostReplay.replayNamed precompileCallsNames pairingPrimitives = precompileCalls := by
  decide_cbv

private def frameCostsNames : List String :=
  ["run_precompile", "frame_prologue", "frame_start", "start_child"]

private def frameCosts : TblState :=
  prepend precompileCalls
    [(nm "start_child", 1531612823434353846625298280999629884086782675133229230595743),
    (nm "frame_start", 1519058619963580483919569147301215169394811446181349804834174),
    (nm "frame_prologue", 1519058619963580483919569147301215169394811446181349804834170),
    (nm "run_precompile", 1506504416492807120078658036982839319248590038019408045030753)]
    [] []

private theorem frameCosts_eq :
    ThirdNamedCostReplay.replayNamed frameCostsNames precompileCalls = frameCosts := by
  decide_cbv

private def callCostsNames : List String :=
  ["generic_call", "generic_create", "op_call", "op_callcode"]

private def callCosts : TblState :=
  prepend frameCosts
    [(nm "op_callcode", 1531612823434353850031184493226434228913420862484543320620045),
    (nm "op_call", 1531612823434353851166026187479474425902529013376466317253208),
    (nm "generic_create", 1544167026905127215005235885963245583724682040170271540107092),
    (nm "generic_call", 1531612823434353846625298280999629884087004036062113745215168)]
    [] []

private theorem callCosts_eq :
    ThirdNamedCostReplay.replayNamed callCostsNames frameCosts = callCosts := by
  decide_cbv

private def createCostsNames : List String :=
  ["op_create", "op_create2", "op_delegatecall", "op_staticcall"]

private def createCosts : TblState :=
  prepend callCosts
    [(nm "op_staticcall", 1531612823434353848896342798973394031924386498568915162193347),
    (nm "op_delegatecall", 1531612823434353848896342798973394031924386498568915162193347),
    (nm "op_create2", 1544167026905127215006597015430929337579826810685158281566196),
    (nm "op_create", 1544167026905127216140758144950127657641528597016301293434388)]
    [] []

private theorem createCosts_eq :
    ThirdNamedCostReplay.replayNamed createCostsNames callCosts = createCosts := by
  decide_cbv

private def entryCostsNames : List String :=
  ["frame_open", "depth0_prepare"]

private def entryCosts : TblState :=
  createCosts

private theorem entryCosts_eq :
    ThirdNamedCostReplay.replayNamed entryCostsNames createCosts = entryCosts := by
  decide_cbv

private theorem postNames_eq :
    ThirdCombinedSmallCryptoTable.postNames =
      pairingPrimitivesNames ++
      precompileCallsNames ++
      frameCostsNames ++
      callCostsNames ++
      createCostsNames ++
      entryCostsNames := rfl

private theorem replay_eq : ThirdCombinedSmallCryptoTable.state = entryCosts := by
  simp only [ThirdCombinedSmallCryptoTable.state, postNames_eq, seed_eq, replay_append,
    pairingPrimitives_eq, precompileCalls_eq, frameCosts_eq,
    callCosts_eq, createCosts_eq, entryCosts_eq]

/-- The checked replay prices used by the opcode table. -/
def prices : List (MlS × Nat) := entryCosts.1

theorem state_prices : ThirdCombinedSmallCryptoTable.state.1 = prices :=
  congrArg Prod.fst replay_eq

#print axioms state_prices
end InitECandidate.Solver.Band.DispPrices
