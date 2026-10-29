import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify405
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body421_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "w"))

def body421_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body421_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "w"))
  (Flapjack.Exp.const 0#64)) body421_0 body421_1

def body421_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "record_pre_state_read" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def body421_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body421_5 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("ws_get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body421_4

def body421_6 : Prog (BitVec 64) :=
.seq body421_3 body421_5

def body421_7 : Prog (BitVec 64) :=
.seq body421_2 body421_6

def body421_8 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 16#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body421_7

def body421_9 : Prog (BitVec 64) :=
.seq body421_2 body421_3

def body421_10 : Prog (BitVec 64) :=
.seq body421_9 body421_5

def body421_11 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 16#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body421_10

def originalData421 : Decl (BitVec 64) :=
.function { name := "get_pre_tx_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body421_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData421 : Decl (BitVec 64) :=
.function { name := "get_pre_tx_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body421_11, returnShape := (Flapjack.Shape.one) }
def original421 := Pancake.PanLang.declToHOL originalData421
def simplified421 := Pancake.PanLang.declToHOL simplifiedData421
end InitECandidate.Proofs.FrontendStages.Declarations
