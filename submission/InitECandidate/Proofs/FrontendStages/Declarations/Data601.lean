import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify585
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body601_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "require_not_static" []

def body601_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "cost"]

def body601_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "saltv", Flapjack.Exp.var Flapjack.VarKind.local "salt"]

def body601_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extend_memory"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x")]

def body601_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_create2_contract_address"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "salt",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "s"],
    Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "ca"]

def body601_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body601_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body601_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "started") (Flapjack.Exp.const 0#64)) body601_5 body601_6

def body601_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body601_9 : Prog (BitVec 64) :=
.seq body601_7 body601_8

def body601_10 : Prog (BitVec 64) :=
.decCall ("started") (Flapjack.Shape.one) ("generic_create") ([Flapjack.Exp.var Flapjack.VarKind.local "endowment", Flapjack.Exp.var Flapjack.VarKind.local "ca",
  Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body601_9

def body601_11 : Prog (BitVec 64) :=
.seq body601_4 body601_10

def body601_12 : Prog (BitVec 64) :=
.decCall ("ca") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body601_11

def body601_13 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "mstart"]) body601_12

def body601_14 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body601_13

def body601_15 : Prog (BitVec 64) :=
.seq body601_3 body601_14

def body601_16 : Prog (BitVec 64) :=
.seq body601_2 body601_15

def body601_17 : Prog (BitVec 64) :=
.decCall ("salt") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body601_16

def body601_18 : Prog (BitVec 64) :=
.seq body601_1 body601_17

def body601_19 : Prog (BitVec 64) :=
.decCall ("cost") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 12000#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 6#64, Flapjack.Exp.var Flapjack.VarKind.local "w"],
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "w"]],
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) body601_18

def body601_20 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body601_19

def body601_21 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "mstart", Flapjack.Exp.var Flapjack.VarKind.local "msize"]) body601_20

def body601_22 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "msize"]) body601_21

def body601_23 : Prog (BitVec 64) :=
.decCall ("saltv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body601_22

def body601_24 : Prog (BitVec 64) :=
.decCall ("msize") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body601_23

def body601_25 : Prog (BitVec 64) :=
.decCall ("mstart") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body601_24

def body601_26 : Prog (BitVec 64) :=
.decCall ("endowment") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body601_25

def body601_27 : Prog (BitVec 64) :=
.seq body601_0 body601_26

def body601_28 : Prog (BitVec 64) :=
.seq body601_2 body601_3

def body601_29 : Prog (BitVec 64) :=
.seq body601_28 body601_14

def body601_30 : Prog (BitVec 64) :=
.decCall ("salt") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body601_29

def body601_31 : Prog (BitVec 64) :=
.seq body601_1 body601_30

def body601_32 : Prog (BitVec 64) :=
.decCall ("cost") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 12000#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 6#64, Flapjack.Exp.var Flapjack.VarKind.local "w"],
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "w"]],
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) body601_31

def body601_33 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body601_32

def body601_34 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "mstart", Flapjack.Exp.var Flapjack.VarKind.local "msize"]) body601_33

def body601_35 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "msize"]) body601_34

def body601_36 : Prog (BitVec 64) :=
.decCall ("saltv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body601_35

def body601_37 : Prog (BitVec 64) :=
.decCall ("msize") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body601_36

def body601_38 : Prog (BitVec 64) :=
.decCall ("mstart") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body601_37

def body601_39 : Prog (BitVec 64) :=
.decCall ("endowment") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body601_38

def body601_40 : Prog (BitVec 64) :=
.seq body601_0 body601_39

def originalData601 : Decl (BitVec 64) :=
.function { name := "op_create2", inline := false, exported := false, params := [], body := body601_27, returnShape := (Flapjack.Shape.one) }
def simplifiedData601 : Decl (BitVec 64) :=
.function { name := "op_create2", inline := false, exported := false, params := [], body := body601_40, returnShape := (Flapjack.Shape.one) }
def original601 := Pancake.PanLang.declToHOL originalData601
def simplified601 := Pancake.PanLang.declToHOL simplifiedData601
end InitECandidate.Proofs.FrontendStages.Declarations
