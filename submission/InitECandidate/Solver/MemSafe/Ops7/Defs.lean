import InitECandidate.Solver.MemSafe.Ops7.Gcr

/-!
# The CREATE handlers' bodies as `ProgHOL` terms (sonnet-create)

`crBody` is `op_create`'s body, `cr2Body` is `op_create2`'s, written as nested definitions (the
tail after each declaration is a separate definition); `crBody_eq` / `cr2Body_eq` check them
against `Guest.Software.guestFn_op_create(2)`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- `lds 1 (msg + 32)`: the running message's CURRENT_TARGET. -/
abbrev crMsg32 : ExpHOL 64 := .load .one (.op .add [lv (nm "msg"), cw 32])

/-- `generic_create(endowment, ca, s, n)` and the tail. -/
def crGc : ProgHOL 64 :=
  .decCall (nm "started") .one (nm "generic_create")
    [lv (nm "endowment"), lv (nm "ca"), lv (nm "s"), lv (nm "n")] callTail

/-! ## `op_create` -/

def crS : ProgHOL 64 := .decCall (nm "s") .one (nm "sat_word") [lv (nm "mstart")] crGc
def crCca : ProgHOL 64 :=
  .seq (callD (nm "compute_contract_address")
    [crMsg32, .load .one (.op .add [lv (nm "a"), cw 0]), lv (nm "ca")]) crS
def crAl : ProgHOL 64 := .decCall (nm "ca") .one (nm "alloc") [cw 24] crCca
def crGa : ProgHOL 64 := .decCall (nm "a") .one (nm "get_account") [crMsg32] crAl
def crMsg : ProgHOL 64 := .dec (nm "msg") .one (Struct.evL 112) crGa
/-- After `charge_gas`: `extend_memory(x.1); <msg ...>`. -/
def crEm : ProgHOL 64 := .seq (callD (nm "extend_memory") [Struct.rf 1 "x"]) crMsg

abbrev crCost0 : ExpHOL 64 := .op .add [cw 12000, .panop .mul [cw 2, lv (nm "w")]]

/-- `n, x, w, cost, charge_gas(cost); K`. -/
def crCostSeg (ce : ExpHOL 64) (K : ProgHOL 64) : ProgHOL 64 :=
  .decCall (nm "n") .one (nm "sat_word") [lv (nm "msize")]
  (.decCall (nm "x") (shK 2) (nm "extend_memory_cost1") [lv (nm "mstart"), lv (nm "msize")]
  (.decCall (nm "w") .one (nm "words_of") [lv (nm "n")]
  (.decCall (nm "cost") .one (nm "add_sat") [ce, Struct.rf 0 "x"]
  (.seq (callD (nm "charge_gas") [lv (nm "cost")]) K))))

def crBody : ProgHOL 64 :=
  .seq (callD (nm "require_not_static") [])
  (.decCall (nm "endowment") (shK 4) (nm "stack_pop") []
  (.decCall (nm "mstart") (shK 4) (nm "stack_pop") []
  (.decCall (nm "msize") (shK 4) (nm "stack_pop") [] (crCostSeg crCost0 crEm))))

theorem crBody_eq : (declPair Guest.Software.guestFn_op_create).2.2 = crBody := by
  conv => lhs; cbv
  rfl

/-! ## `op_create2` -/

def cr2C : ProgHOL 64 :=
  .seq (callD (nm "compute_create2_contract_address")
    [crMsg32, lv (nm "salt"),
      .op .add [.load .one (.op .add [gv (nm "ev"), cw 24]), lv (nm "s")], lv (nm "n"),
      lv (nm "ca")]) crGc
def cr2Al : ProgHOL 64 := .decCall (nm "ca") .one (nm "alloc") [cw 24] cr2C
def cr2S : ProgHOL 64 := .decCall (nm "s") .one (nm "sat_word") [lv (nm "mstart")] cr2Al
def cr2Msg : ProgHOL 64 := .dec (nm "msg") .one (Struct.evL 112) cr2S
def cr2Em : ProgHOL 64 := .seq (callD (nm "extend_memory") [Struct.rf 1 "x"]) cr2Msg
def cr2Salt : ProgHOL 64 :=
  .decCall (nm "salt") .one (nm "alloc") [cw 32]
  (.seq (callD (nm "u256_to_be32") [lv (nm "saltv"), lv (nm "salt")]) cr2Em)

abbrev cr2Cost0 : ExpHOL 64 :=
  .op .add [cw 12000, .panop .mul [cw 6, lv (nm "w")], .panop .mul [cw 2, lv (nm "w")]]

def cr2Body : ProgHOL 64 :=
  .seq (callD (nm "require_not_static") [])
  (.decCall (nm "endowment") (shK 4) (nm "stack_pop") []
  (.decCall (nm "mstart") (shK 4) (nm "stack_pop") []
  (.decCall (nm "msize") (shK 4) (nm "stack_pop") []
  (.decCall (nm "saltv") (shK 4) (nm "stack_pop") [] (crCostSeg cr2Cost0 cr2Salt)))))

theorem cr2Body_eq : (declPair Guest.Software.guestFn_op_create2).2.2 = cr2Body := by
  conv => lhs; cbv
  rfl

end InitECandidate.Solver.MemSafe.Ops7
