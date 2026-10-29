import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify572
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body588_0 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body588_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_delegation" []

def body588_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 200#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "used")

def body588_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64]))

def body588_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.const 0#64)

def body588_5 : Prog (BitVec 64) :=
.seq body588_3 body588_4

def body588_6 : Prog (BitVec 64) :=
.seq body588_2 body588_5

def body588_7 : Prog (BitVec 64) :=
.decCall ("used") (Flapjack.Shape.one) ("frame_state_gas_used") ([Flapjack.Exp.var Flapjack.VarKind.global "ev"]) body588_6

def body588_8 : Prog (BitVec 64) :=
.seq body588_1 body588_7

def body588_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) body588_8 body588_0

def body588_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "prepare_dispatch" []

def body588_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body588_12 : Prog (BitVec 64) :=
.seq body588_0 body588_11

def body588_13 : Prog (BitVec 64) :=
.seq body588_10 body588_12

def body588_14 : Prog (BitVec 64) :=
.seq body588_0 body588_13

def body588_15 : Prog (BitVec 64) :=
.seq body588_9 body588_14

def body588_16 : Prog (BitVec 64) :=
.dec ("te") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 8#64])) body588_15

def body588_17 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body588_16

def body588_18 : Prog (BitVec 64) :=
.seq body588_0 body588_17

def body588_19 : Prog (BitVec 64) :=
.seq body588_2 body588_3

def body588_20 : Prog (BitVec 64) :=
.seq body588_19 body588_4

def body588_21 : Prog (BitVec 64) :=
.decCall ("used") (Flapjack.Shape.one) ("frame_state_gas_used") ([Flapjack.Exp.var Flapjack.VarKind.global "ev"]) body588_20

def body588_22 : Prog (BitVec 64) :=
.seq body588_1 body588_21

def body588_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) body588_22 body588_0

def body588_24 : Prog (BitVec 64) :=
.seq body588_23 body588_10

def body588_25 : Prog (BitVec 64) :=
.seq body588_24 body588_11

def body588_26 : Prog (BitVec 64) :=
.dec ("te") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 8#64])) body588_25

def body588_27 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body588_26

def originalData588 : Decl (BitVec 64) :=
.function { name := "depth0_prepare", inline := false, exported := false, params := [], body := body588_18, returnShape := (Flapjack.Shape.one) }
def simplifiedData588 : Decl (BitVec 64) :=
.function { name := "depth0_prepare", inline := false, exported := false, params := [], body := body588_27, returnShape := (Flapjack.Shape.one) }
def original588 := Pancake.PanLang.declToHOL originalData588
def simplified588 := Pancake.PanLang.declToHOL simplifiedData588
end InitECandidate.Proofs.FrontendStages.Declarations
