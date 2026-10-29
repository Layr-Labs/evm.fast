import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify219
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body235_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body235_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body235_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "parent_blob_gas")
  (Flapjack.Exp.const 1835008#64)) body235_0 body235_1

def body235_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "excess", Flapjack.Exp.var Flapjack.VarKind.local "q"])

def body235_4 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("udiv") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "used",
      Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 21#64, Flapjack.Exp.const 14#64]],
  Flapjack.Exp.const 21#64]) body235_3

def body235_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "gt") (Flapjack.Exp.const 0#64)) body235_4 body235_1

def body235_6 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "parent_blob_gas", Flapjack.Exp.const 1835008#64])

def body235_7 : Prog (BitVec 64) :=
.seq body235_5 body235_6

def body235_8 : Prog (BitVec 64) :=
.decCall ("gt") (Flapjack.Shape.one) ("u256_gt") ([Flapjack.Exp.var Flapjack.VarKind.local "base_blob_tx_price", Flapjack.Exp.var Flapjack.VarKind.local "target_price"]) body235_7

def body235_9 : Prog (BitVec 64) :=
.decCall ("base_blob_tx_price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "base_cost", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body235_8

def body235_10 : Prog (BitVec 64) :=
.decCall ("base_cost") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_word") ([Flapjack.Exp.const 8192#64]) body235_9

def body235_11 : Prog (BitVec 64) :=
.decCall ("target_price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "per_blob", Flapjack.Exp.var Flapjack.VarKind.local "price"]) body235_10

def body235_12 : Prog (BitVec 64) :=
.decCall ("per_blob") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_word") ([Flapjack.Exp.const 131072#64]) body235_11

def body235_13 : Prog (BitVec 64) :=
.decCall ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.var Flapjack.VarKind.local "excess"]) body235_12

def body235_14 : Prog (BitVec 64) :=
.seq body235_2 body235_13

def body235_15 : Prog (BitVec 64) :=
.dec ("parent_blob_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "excess", Flapjack.Exp.var Flapjack.VarKind.local "used"]) body235_14

def body235_16 : Prog (BitVec 64) :=
.dec ("base_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 160#64])) body235_15

def body235_17 : Prog (BitVec 64) :=
.dec ("used") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 200#64])) body235_16

def body235_18 : Prog (BitVec 64) :=
.dec ("excess") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 208#64])) body235_17

def originalData235 : Decl (BitVec 64) :=
.function { name := "calculate_excess_blob_gas", inline := false, exported := false, params := [("parent", Flapjack.Shape.one)], body := body235_18, returnShape := (Flapjack.Shape.one) }
def simplifiedData235 : Decl (BitVec 64) :=
.function { name := "calculate_excess_blob_gas", inline := false, exported := false, params := [("parent", Flapjack.Shape.one)], body := body235_18, returnShape := (Flapjack.Shape.one) }
def original235 := Pancake.PanLang.declToHOL originalData235
def simplified235 := Pancake.PanLang.declToHOL simplifiedData235
end InitECandidate.Proofs.FrontendStages.Declarations
