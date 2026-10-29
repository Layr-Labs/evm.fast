import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify529
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body545_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.const 100#64]]

def body545_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_after_charge"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "c"]

def body545_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code")]

def body545_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body545_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body545_5 : Prog (BitVec 64) :=
.seq body545_3 body545_4

def body545_6 : Prog (BitVec 64) :=
.seq body545_2 body545_5

def body545_7 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body545_6

def body545_8 : Prog (BitVec 64) :=
.seq body545_1 body545_7

def body545_9 : Prog (BitVec 64) :=
.seq body545_0 body545_8

def body545_10 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.one) ("access_gas_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body545_9

def body545_11 : Prog (BitVec 64) :=
.decCall ("addr") (Flapjack.Shape.one) ("to_address_masked") ([Flapjack.Exp.var Flapjack.VarKind.local "av"]) body545_10

def body545_12 : Prog (BitVec 64) :=
.decCall ("av") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body545_11

def body545_13 : Prog (BitVec 64) :=
.seq body545_0 body545_1

def body545_14 : Prog (BitVec 64) :=
.seq body545_2 body545_3

def body545_15 : Prog (BitVec 64) :=
.seq body545_14 body545_4

def body545_16 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body545_15

def body545_17 : Prog (BitVec 64) :=
.seq body545_13 body545_16

def body545_18 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.one) ("access_gas_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body545_17

def body545_19 : Prog (BitVec 64) :=
.decCall ("addr") (Flapjack.Shape.one) ("to_address_masked") ([Flapjack.Exp.var Flapjack.VarKind.local "av"]) body545_18

def body545_20 : Prog (BitVec 64) :=
.decCall ("av") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body545_19

def originalData545 : Decl (BitVec 64) :=
.function { name := "op_extcodesize", inline := false, exported := false, params := [], body := body545_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData545 : Decl (BitVec 64) :=
.function { name := "op_extcodesize", inline := false, exported := false, params := [], body := body545_20, returnShape := (Flapjack.Shape.one) }
def original545 := Pancake.PanLang.declToHOL originalData545
def simplified545 := Pancake.PanLang.declToHOL simplifiedData545
end InitECandidate.Proofs.FrontendStages.Declarations
